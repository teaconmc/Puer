import net.minecraft.core.BlockPos
import net.minecraft.core.component.DataComponents
import net.minecraft.network.chat.Component
import net.minecraft.world.InteractionHand
import net.minecraft.world.item.ItemStack
import net.minecraft.world.item.Items
import org.teacon.powertool.item.PowerToolDataComponents
import org.teacon.powertool.item.PowerToolItems

import java.util.concurrent.TimeUnit

// args:
// BlockPos from, BlockPos to, BlockPos master_pos

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!data.has('is_in_parkour') || !data.<Boolean>get('is_in_parkour')) {
        player.sendSystemMessage(Component.literal('您当前不在跑酷，无法完成跑酷'))
        return
    }
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        data.put('is_in_parkour', false)
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，无法完成跑酷'))
        return
    }
    def currentTime = System.currentTimeMillis()
    data.put('is_in_parkour', false)
    player.sendSystemMessage(Component.literal('跑酷结束'))

    boolean giveRune = false
    if (currentTime - data.<Long>get('start_time') < TimeUnit.MINUTES.toMillis(5)) {
        player.sendSystemMessage(Component.literal('恭喜你在5分钟内完成跑酷，使用背包中的碎片来前往大师盖章台吧'))
        giveRune = true
    } else {
        def is = player.getItemInHand(InteractionHand.MAIN_HAND)
        def ch = data.<String>get("characters")
        if (is.is(Items.PAPER)) {
            def customName = is.getCustomName()
            if (customName != null) {
                String s = customName.getString().toLowerCase()
                if (s.length() == 9) {
                    boolean success = true
                    for (char c : s.toCharArray()) {
                        if (ch.indexOf(c) == -1) {
                            success = false
                            break
                        }
                    }
                    if (success) {
                        player.sendSystemMessage(Component.literal('恭喜你找到了9个字母，使用背包中的碎片来前往大师盖章台吧'))
                        giveRune = true
                    }
                }
            }
        }
    }
    if (giveRune) {
        def masterPos = ofBlockPos(args.getIntArray('master_pos'))
        ItemStack itemStack = new ItemStack(PowerToolItems.COMMAND_RUNE)
        itemStack.set(DataComponents.CUSTOM_NAME, Component.literal('前往大师盖章台'))
        itemStack.set(PowerToolDataComponents.CONSUME, true)
        itemStack.set(PowerToolDataComponents.COMMAND, "/tp @s $masterPos.x $masterPos.y $masterPos.z".toString())
        player.getInventory().add(itemStack)
        player.containerMenu.broadcastChanges()
    }
}
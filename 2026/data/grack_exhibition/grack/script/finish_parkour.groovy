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
// BlockPos from, BlockPos to, BlockPos master_pos, int minutes, int seconds

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
    def cp = data.<Integer>get('checkpoint_index')
    if (8 > cp) {
        player.sendSystemMessage(Component.literal('您未到达全部记录点，无法完成跑酷'))
        return
    }
    def maxMinutes = args.getInt('minutes').orElse(5)
    def maxSeconds = args.getInt('seconds').orElse(0)
    def currentTime = System.currentTimeMillis()
    data.put('is_in_parkour', false)
    player.sendSystemMessage(Component.literal('跑酷结束'))

    if (currentTime - data.<Long>get('start_time') < TimeUnit.MINUTES.toMillis(maxMinutes) + TimeUnit.SECONDS.toMillis(maxSeconds)) {
        def is = player.getItemInHand(InteractionHand.MAIN_HAND)
        if (is.is(Items.PAPER)) {
            def customName = is.getCustomName()
            if (customName != null) {
                String s = customName.getString().toLowerCase()
                if (s.length() == 9) {
                    def ch = data.<String>get("characters")
                    boolean success = true
                    for (char c : s.toCharArray()) {
                        if (ch.indexOf((int) c) == -1) {
                            success = false
                            break
                        }
                    }
                    if (success) {
                        player.sendSystemMessage(Component.literal("恭喜你找到了9个字母，并在${minutes > 0 ? "${minutes}分" : ''}${seconds > 0 ? "${seconds}秒" : ''}内完成跑酷，使用背包中的碎片来前往大师盖章台吧"))
                        def masterPos = ofBlockPos(args.getIntArray('master_pos'))
                        ItemStack itemStack = new ItemStack(PowerToolItems.COMMAND_RUNE)
                        itemStack.set(DataComponents.CUSTOM_NAME, Component.literal('前往大师盖章台'))
                        itemStack.set(PowerToolDataComponents.CONSUME, true)
                        itemStack.set(PowerToolDataComponents.COMMAND, "/tp @s $masterPos.x $masterPos.y $masterPos.z".toString())
                        player.getInventory().add(itemStack)
                        player.containerMenu.broadcastChanges()
                    }
                }
            }
        }
    }
}

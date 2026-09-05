import net.minecraft.core.component.DataComponents
import net.minecraft.network.chat.Component
import net.minecraft.world.item.ItemStack
import net.minecraft.world.item.Items

// args:
// BlockPos from, BlockPos to, int index

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!data.has('is_in_parkour') || !data.<Boolean>get('is_in_parkour')) {
        player.sendSystemMessage(Component.literal('您当前不在跑酷，无法获取字母'))
        return
    }
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        data.put('is_in_parkour', false)
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，无法获取字母'))
        return
    }
    def i = args.getInt('index').orElseThrow()
    def ch = data.<String>get('characters')
    def cp = data.<Integer>get('checkpoint_index')
    if (i > 8 || i < 0) {
        player.sendSystemMessage(Component.literal('该记录点不存在'))
        return
    }
    if (i > cp) {
        player.sendSystemMessage(Component.literal('您未到达记录点，无法获取字母'))
        return
    }
    ItemStack itemStack = new ItemStack(Items.PAPER)
    itemStack.set(DataComponents.CUSTOM_NAME, Component.literal(String.valueOf(ch.charAt(i))))
    player.getInventory().add(itemStack)
    player.containerMenu.broadcastChanges()
}
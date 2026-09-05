import net.minecraft.network.chat.Component
import net.minecraft.core.BlockPos

// args:
// BlockPos from, BlockPos to

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!data.has('is_in_parkour') || !data.<Boolean>get('is_in_parkour')) {
        player.sendSystemMessage(Component.literal('您当前不在跑酷，无法返回记录点'))
        return
    }
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        data.put('is_in_parkour', false)
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，无法返回记录点'))
        return
    }
    def cp = data.<BlockPos>get('checkpoint')
    if (cp == null) {
        player.sendSystemMessage(Component.literal('记录点不存在，无法返回记录点'))
        return
    }
    def dest = cp.getBottomCenter()
    player.teleportTo(dest.x, dest.y, dest.z)
}
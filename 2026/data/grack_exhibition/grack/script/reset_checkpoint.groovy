import net.minecraft.network.chat.Component

// args:
// BlockPos from, BlockPos to

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!data.has('is_in_parkour') || !data.<Boolean>get('is_in_parkour')) {
        player.sendSystemMessage(Component.literal('您当前不在跑酷，无法设置记录点'))
        return
    }
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        data.put('is_in_parkour', false)
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，无法设置记录点'))
        return
    }
    data.put('checkpoint', player.blockPosition())
    data.put('checkpoint_y', player.getYRot() as int)
    data.put('checkpoint_x', player.getXRot() as int)
    player.sendSystemMessage(Component.literal('已设置记录点'))
}
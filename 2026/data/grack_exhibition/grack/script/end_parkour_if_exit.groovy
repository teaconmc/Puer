import net.minecraft.network.chat.Component

// args:
// BlockPos from, BlockPos to

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!data.has('is_in_parkour') || !data.<Boolean>get('is_in_parkour')) {
        return
    }
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        data.put('is_in_parkour', false)
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，已强制结束跑酷'))
    }
}
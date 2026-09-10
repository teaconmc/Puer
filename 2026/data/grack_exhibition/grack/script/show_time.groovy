import net.minecraft.network.chat.Component
import net.minecraft.network.protocol.game.ClientboundSetActionBarTextPacket

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
        return
    }
    def startTime = data.<Long>get('start_time')
    def timeSeconds = (System.currentTimeMillis() - startTime).intdiv(1000)
    def minutes = timeSeconds.intdiv(60)
    def seconds = timeSeconds % 60
    player.connection.send(new ClientboundSetActionBarTextPacket(Component.literal("已用时：${minutes > 0 ? "${minutes}分" : ''}${seconds > 0 ? "${seconds}秒" : ''}".toString())))
}
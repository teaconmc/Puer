import it.unimi.dsi.fastutil.ints.IntArraySet
import net.minecraft.network.chat.Component

// args:
// BlockPos checkpoint, BlockPos from, BlockPos to

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    def data = playerData
    if (!isBetween(player.blockPosition(), ofBlockPos(args.getIntArray('from')), ofBlockPos(args.getIntArray('to')))) {
        player.sendSystemMessage(Component.literal('您不在跑酷范围内，无法开始跑酷'))
        return
    }
    Random r = new Random()
    StringBuilder sb = new StringBuilder(9)
    IntArraySet set = new IntArraySet(9)
    while (set.size() < 9) set.add(r.nextInt(26))
    def it = set.intIterator()
    while (it.hasNext()) sb.append((char)('a'.charAt(0) + it.nextInt()))
    data.put('characters', sb.toString())
    data.put('is_in_parkour', true)
    data.put('checkpoint', ofBlockPos(args.getIntArray('checkpoint')))
    data.put('checkpoint_index', 0)
    data.put('start_time', System.currentTimeMillis())
    player.sendSystemMessage(Component.literal('跑酷开始'))
}
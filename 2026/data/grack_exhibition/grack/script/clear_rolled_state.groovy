import net.minecraft.core.component.DataComponents
import net.minecraft.network.chat.Component
import net.minecraft.world.item.ItemStack
import net.minecraft.world.item.Items

def source = context.source
if (source.isPlayer()) {
    for (i in 0..<5) {
        playerData.put("rolled_word_$i".toString(), false)
    }
    source.sendSystemMessage(Component.literal("已清空抽奖状态"))
}
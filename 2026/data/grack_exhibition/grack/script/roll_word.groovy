import net.minecraft.core.component.DataComponents
import net.minecraft.network.chat.Component
import net.minecraft.world.item.ItemStack
import net.minecraft.world.item.Items

def source = context.source
if (source.isPlayer()) {
    def player = source.getPlayer()
    String[] words = ['踢', '炕', 'Tea', 'Con', '2026']
    var index = player.random.nextInt(5)
    playerData.put("rolled_word_$index".toString(), true)
    ItemStack itemStack = new ItemStack(Items.PAPER)
    itemStack.set(DataComponents.CUSTOM_NAME, Component.literal(words[index]))
    player.getInventory().add(itemStack)
    player.containerMenu.broadcastChanges()
    source.sendSystemMessage(Component.literal("您抽到了\"${words[index]}\""))
}
function render(ctx, state, blockEntity) {
    blockEntity.disableCollision = blockEntity.doorOpen > 0;
}
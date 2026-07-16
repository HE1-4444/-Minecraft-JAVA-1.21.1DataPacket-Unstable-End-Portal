# Unstable End Portal

一个简单的数据包，让末地传送门不再将玩家传送到主岛，而是随机传送到外岛（1000-3000 格）。

包含地面安全检查：玩家脚下没有方块时，会生成一个黑曜石平台。

A simple datapack that prevents End portal arrivals from spawning on the central island and sends players to a random outer-island location between 1000 and 3000 blocks away.

It includes a ground safety check and creates an obsidian platform when no block is found below the player.

## Configuration

Edit `data/unstable_end_portal/function/config.mcfunction`, then run `/reload`.

- `#delay`: delay in ticks. `20` is about one second.
- `min_distance` and `max_distance`: random teleport distance.
- `message`: chat message and color.
- `*_enabled`: enable or disable darkness, blindness, and slowness.
- `*_amplifier`: effect level, where `0` is level I.

Night Vision is intentionally disabled.

## License

MIT License. See `LICENSE`.

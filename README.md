# Unstable End Portal
# MADE BY EnderHEI/HE1-4444
(now hava a bug i will fix that late)
一个简单的数据包，让末地传送门不再将玩家传送到主岛，而是随机传送到外岛（1000-3000 格）。

包含地面安全检查：玩家脚下没有方块时，会生成一个黑曜石平台。

A simple datapack that prevents End portal arrivals from spawning on the central island and sends players to a random outer-island location between 1000 and 3000 blocks away.

It includes a ground safety check and creates an obsidian platform when no block is found below the player.

## Configuration

Edit `data/unstable_end_portal/function/config.mcfunction`, then run `/reload`.

# Configuration for Unstable End Portal V3.
# Set this value to 1 to stop routing players who have completed The End?
# Set this value to 0 to keep routing them.
scoreboard objectives add uep3_config dummy
scoreboard players set #stop_after_dragon uep3_config 1

# The delay is measured in game ticks. 20 ticks equals one second.
scoreboard players set #delay uep3_delay 20


## License

MIT License. See `LICENSE`.

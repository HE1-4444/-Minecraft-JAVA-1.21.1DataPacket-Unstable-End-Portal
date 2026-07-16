# 参考 outer end spawn 的格式：直接在末地维度内筛选尚未处理的玩家。
# Follow the outer end spawn format and select unprocessed players in The End.
execute as @a[tag=!unstable_end_spawned] at @s if dimension minecraft:the_end run scoreboard players add @s unstable_end_portal_delay 1
function unstable_end_portal:end_portal_route

# 离开末地后允许下一次通过末地门重新触发。
# Clear the state after leaving The End so the next entry can trigger again.
execute as @a[tag=unstable_end_spawned] at @s unless dimension minecraft:the_end run scoreboard players reset @s unstable_end_portal_delay
execute as @a[tag=unstable_end_spawned] at @s unless dimension minecraft:the_end run tag @s remove unstable_end_spawned

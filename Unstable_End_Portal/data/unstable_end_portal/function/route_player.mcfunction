# 本函数使用 config.mcfunction 中的宏配置。
# This function uses the macro values from config.mcfunction.
$execute if data storage unstable_end_portal:config {darkness_enabled:true} run effect give @s minecraft:darkness $(effect_duration) $(darkness_amplifier) false
$execute if data storage unstable_end_portal:config {blindness_enabled:true} run effect give @s minecraft:blindness $(effect_duration) $(blindness_amplifier) false
$execute if data storage unstable_end_portal:config {slowness_enabled:true} run effect give @s minecraft:slowness $(effect_duration) $(slowness_amplifier) false
$tellraw @s $(message)
$spreadplayers 0 0 $(min_distance) $(max_distance) false @s
$execute if block ~ ~-1 ~ minecraft:air run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:obsidian

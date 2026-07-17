# Mark players who should be ignored after completing The End? when the option is enabled.
execute as @a[tag=!uep3_blocked] at @s if score #stop_after_dragon uep3_config matches 1 if entity @s[advancements={minecraft:end/kill_dragon=true}] run tag @s add uep3_blocked

# The vanilla End portal places players on the central obsidian platform near (100, 49, 0).
# Only players entering inside this small arrival area start the route.
execute as @a[tag=!uep3_done,tag=!uep3_blocked] at @s if dimension minecraft:the_end positioned 100 49 0 if entity @s[distance=..16] if score #stop_after_dragon uep3_config matches 1 if entity @s[advancements={minecraft:end/kill_dragon=false}] run scoreboard players add @s uep3_delay 1
execute as @a[tag=!uep3_done,tag=!uep3_blocked] at @s if dimension minecraft:the_end positioned 100 49 0 if entity @s[distance=..16] if score #stop_after_dragon uep3_config matches 0 run scoreboard players add @s uep3_delay 1

# Lock the player immediately so death or respawn cannot start a second route.
execute as @a[tag=!uep3_active,tag=!uep3_done,tag=!uep3_blocked,scores={uep3_delay=1}] at @s if dimension minecraft:the_end positioned 100 49 0 if entity @s[distance=..16] if score #stop_after_dragon uep3_config matches 1 if entity @s[advancements={minecraft:end/kill_dragon=false}] run tag @s add uep3_active
execute as @a[tag=!uep3_active,tag=!uep3_done,tag=!uep3_blocked,scores={uep3_delay=1}] at @s if dimension minecraft:the_end positioned 100 49 0 if entity @s[distance=..16] if score #stop_after_dragon uep3_config matches 0 run tag @s add uep3_active

# Give the entry feedback as soon as the player is detected in The End.
execute as @a[tag=uep3_active,scores={uep3_delay=1}] at @s if dimension minecraft:the_end run tellraw @s {"text":"Unstable space detected. Routing begins...","color":"dark_purple"}
execute as @a[tag=uep3_active,scores={uep3_delay=1}] at @s if dimension minecraft:the_end run effect give @s minecraft:darkness 3 255 false
execute as @a[tag=uep3_active,scores={uep3_delay=1}] at @s if dimension minecraft:the_end run effect give @s minecraft:blindness 3 255 false
execute as @a[tag=uep3_active,scores={uep3_delay=1}] at @s if dimension minecraft:the_end run effect give @s minecraft:slowness 3 0 false

# After one second, move the player to a random outer-island position.
execute as @a[tag=uep3_active,tag=!uep3_done] at @s if dimension minecraft:the_end if score @s uep3_delay >= #delay uep3_delay run spreadplayers 0 0 1000 3000 under 255 false @s
# If the destination has no block directly below the player, add a small emergency platform.
# Existing terrain is preserved because only air blocks are replaced.
execute as @a[tag=uep3_active,tag=!uep3_done] at @s if dimension minecraft:the_end if score @s uep3_delay >= #delay uep3_delay if block ~ ~-1 ~ minecraft:air run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:obsidian replace air
execute as @a[tag=uep3_active,tag=!uep3_done] at @s if dimension minecraft:the_end if score @s uep3_delay >= #delay uep3_delay run tag @s add uep3_done
execute as @a[tag=uep3_done] at @s if dimension minecraft:the_end run tag @s remove uep3_active
execute as @a[tag=uep3_done] at @s if dimension minecraft:the_end run scoreboard players reset @s uep3_delay

# Allow another entry after the player leaves The End.
execute as @a[tag=uep3_done] at @s unless dimension minecraft:the_end run tag @s remove uep3_done
execute as @a[tag=uep3_active] at @s unless dimension minecraft:the_end run tag @s remove uep3_active

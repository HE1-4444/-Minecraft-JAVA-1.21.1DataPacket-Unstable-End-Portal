execute as @a[tag=!unstable_end_spawned] at @s if dimension minecraft:the_end if score @s unstable_end_portal_delay >= #delay unstable_end_portal_config run function unstable_end_portal:route_player with storage unstable_end_portal:config
execute as @a[tag=!unstable_end_spawned] at @s if dimension minecraft:the_end if score @s unstable_end_portal_delay >= #delay unstable_end_portal_config run tag @s add unstable_end_spawned
execute as @a[tag=unstable_end_spawned] at @s if dimension minecraft:the_end run scoreboard players reset @s unstable_end_portal_delay

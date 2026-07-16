# Unstable End Portal 配置文件。
# Unstable End Portal configuration.
# 修改本文件后执行 /reload 生效。
# Run /reload after editing this file.

# 延迟，单位为 tick：20 = 1 秒。
# Delay in ticks: 20 ticks is approximately one second.
scoreboard players set #delay unstable_end_portal_config 20

# 随机外岛距离范围。
# Random outer-island distance range.
data modify storage unstable_end_portal:config min_distance set value 1000
data modify storage unstable_end_portal:config max_distance set value 3000

# 聊天提示文本，可修改 text 和 color。
# Chat message. Edit the text and color fields.
data modify storage unstable_end_portal:config message set value {"text":"空间混乱，你被送往随机外岛。","color":"dark_purple"}

# 药水配置：enabled 改为 false 可关闭对应效果；amplifier 为 0 表示 I 级。
# Potion settings. Set enabled to false to disable an effect; amplifier 0 is level I.
data modify storage unstable_end_portal:config effect_duration set value 3
data modify storage unstable_end_portal:config darkness_enabled set value true
data modify storage unstable_end_portal:config darkness_amplifier set value 255
data modify storage unstable_end_portal:config blindness_enabled set value true
data modify storage unstable_end_portal:config blindness_amplifier set value 255
data modify storage unstable_end_portal:config slowness_enabled set value true
data modify storage unstable_end_portal:config slowness_amplifier set value 0

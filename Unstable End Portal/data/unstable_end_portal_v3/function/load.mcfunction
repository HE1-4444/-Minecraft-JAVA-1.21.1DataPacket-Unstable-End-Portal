# Initialize the delay objective used by the direct tick function.
scoreboard objectives add uep3_delay dummy
function unstable_end_portal_v3:config
tag @a remove uep3_active
tag @a remove uep3_done
tag @a remove uep3_blocked
scoreboard players reset @a uep3_delay

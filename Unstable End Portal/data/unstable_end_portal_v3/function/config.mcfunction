# Configuration for Unstable End Portal V3.
# Set this value to 1 to stop routing players who have completed The End?
# Set this value to 0 to keep routing them.
scoreboard objectives add uep3_config dummy
scoreboard players set #stop_after_dragon uep3_config 1

# The delay is measured in game ticks. 20 ticks equals one second.
scoreboard players set #delay uep3_delay 20

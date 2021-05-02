# Handle clock ticks

execute as @e[type=armor_stand,tag=cs_clock] run function cs:priv/handle/clock/tick

# Handle pulse ticks

execute as @e[type=armor_stand,tag=cs_pulse] run function cs:priv/handle/pulse/tick

# Handle toggles

execute as @e[type=armor_stand,tag=cs_toggle] run function cs:priv/handle/toggle
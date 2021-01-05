# Handle toogles

execute as @e[type=armor_stand,tag=toggle] run function cs:priv/handle_toggle

# Advance ON snakes

execute as @e[tag=on,type=armor_stand] run function cs:priv/handle_on
execute at @e[tag=on,type=armor_stand] unless block ~ ~ ~ black_concrete run kill @e[tag=on,type=armor_stand,distance=0]
execute at @e[tag=on,type=armor_stand] run setblock ~ ~ ~ white_concrete

# Advance OFF snakes

execute as @e[tag=off,type=armor_stand] run function cs:priv/handle_off
execute at @e[tag=off,type=armor_stand] unless block ~ ~ ~ white_concrete run kill @e[tag=off,type=armor_stand,distance=0]
execute at @e[tag=off,type=armor_stand] run setblock ~ ~ ~ black_concrete

# Handle 5 tick pulse

execute as @e[type=minecraft:armor_stand,tag=pulse5] run function cs:priv/handle_pulse5

# Handle 20 tick pulse

execute as @e[type=minecraft:armor_stand,tag=pulse20] run function cs:priv/handle_pulse20
# Advance ON snakes

execute as @e[tag=cs_on,type=armor_stand] run function cs:priv/handle/on
execute at @e[tag=cs_on,type=armor_stand] unless block ~ ~ ~ black_concrete run kill @e[tag=cs_on,type=armor_stand,distance=0]
execute at @e[tag=cs_on,type=armor_stand] run setblock ~ ~ ~ white_concrete

# Advance OFF snakes

execute as @e[tag=cs_off,type=armor_stand] run function cs:priv/handle/off
execute at @e[tag=cs_off,type=armor_stand] unless block ~ ~ ~ white_concrete run kill @e[tag=cs_off,type=armor_stand,distance=0]
execute at @e[tag=cs_off,type=armor_stand] run setblock ~ ~ ~ black_concrete

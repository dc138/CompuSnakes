# Handle toogles

execute as @e[type=armor_stand,tag=toggle] run function cs:priv/handle_toggle

# Advance ON snakes

execute as @e[tag=on,type=armor_stand] run function cs:priv/handle_on
execute at @e[tag=on,type=armor_stand] unless block ~ ~ ~ white_concrete run kill @e[tag=on,type=armor_stand,distance=0]
execute at @e[tag=on,type=armor_stand] run setblock ~ ~ ~ black_concrete

# Advance OFF snakes

execute as @e[tag=off,type=armor_stand] run function cs:priv/handle_off
execute at @e[tag=off,type=armor_stand] unless block ~ ~ ~ black_concrete run kill @e[tag=off,type=armor_stand,distance=0]
execute at @e[tag=off,type=armor_stand] run setblock ~ ~ ~ white_concrete

# Handle Pulses

execute at @e[tag=pul,type=armor_stand,scores={cs_pulse=1..1}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["on"],Invisible:1b}
execute at @e[tag=pul,type=armor_stand] run scoreboard players add @e[tag=pul,type=armor_stand,distance=0] cs_pulse 1

execute at @e[type=minecraft:armor_stand,tag=pul] if score @e[type=minecraft:armor_stand,tag=pul,distance=0,limit=1] cs_pulse >= cs_pulse_interval cs_pulse run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["off"],Invisible:1b}
execute at @e[type=minecraft:armor_stand,tag=pul] if score @e[type=minecraft:armor_stand,tag=pul,distance=0,limit=1] cs_pulse >= cs_pulse_interval cs_pulse run kill @e[type=minecraft:armor_stand,tag=pul,distance=0,limit=1]

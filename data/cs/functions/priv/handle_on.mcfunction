execute at @s if block ~1 ~ ~ white_concrete run summon armor_stand ~1 ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}
execute at @s if block ~ ~1 ~ white_concrete run summon armor_stand ~ ~1 ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}
execute at @s if block ~ ~ ~1 white_concrete run summon armor_stand ~ ~ ~1 {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}
execute at @s if block ~-1 ~ ~ white_concrete run summon armor_stand ~-1 ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}
execute at @s if block ~ ~-1 ~ white_concrete run summon armor_stand ~ ~-1 ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}
execute at @s if block ~ ~ ~-1 white_concrete run summon armor_stand ~ ~ ~-1 {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["temp"],Invisible:1b}

execute at @e[type=armor_stand,tag=temp] if entity @e[type=armor_stand,tag=on,distance=0] run kill @e[type=armor_stand,tag=temp,distance=0]

tag @e[type=armor_stand,tag=temp] add on
tag @e[type=armor_stand,tag=temp] remove temp

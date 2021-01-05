execute at @s if score @s cs_pulse matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["toggle"],Invisible:1b}
scoreboard players add @s cs_pulse 1

execute at @s if score @s cs_pulse matches 5 run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["toggle"],Invisible:1b}
execute at @s if score @s cs_pulse matches 5 run kill @s

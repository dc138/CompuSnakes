execute as @s unless score @s cs_pulse_target matches -2147483648..2147483647 run scoreboard players operation @s cs_pulse_target = @p cs_pulse_target

execute at @s if score @s cs_pulse matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["cs_toggle"],Invisible:1b}
scoreboard players add @s cs_pulse 1

execute at @s if score @s cs_pulse >= @s cs_pulse_target run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["cs_toggle"],Invisible:1b}
execute at @s if score @s cs_pulse >= @s cs_pulse_target run kill @s

execute as @s unless score @s cs_pulse_tgt matches 5..200 run scoreboard players set @s cs_pulse_tgt 20

execute at @s if score @s cs_pulse matches 1 run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_toggle"], Invisible: 1b}
execute at @s if score @s cs_pulse = @s cs_pulse_tgt run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_toggle"], Invisible: 1b}

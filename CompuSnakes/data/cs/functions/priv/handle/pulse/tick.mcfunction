execute unless score @s cs_pulse = @s cs_pulse run scoreboard players set @s cs_pulse 0

execute at @s if score @s cs_pulse matches 0 run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_toggle", "cs_just_placed_sync"], Invisible: 1b}
execute at @s if score @s cs_pulse = @s cs_pulse_tgt run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_toggle", "cs_just_placed_sync"], Invisible: 1b}

scoreboard players add @s cs_pulse 1
execute at @s if score @s cs_pulse > @s cs_pulse_tgt run kill @s

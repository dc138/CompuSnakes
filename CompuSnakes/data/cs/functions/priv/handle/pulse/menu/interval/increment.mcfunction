execute as @s unless score @s cs_pulse_tgt matches 200..2147483647 run scoreboard players add @s cs_pulse_tgt 5
loot replace entity @s weapon loot cs:carrots/pulse
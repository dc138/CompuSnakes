scoreboard players remove @s cs_pulse_target 5
scoreboard players reset @s cs_on_menu

execute if score @s cs_pulse_target matches 0 run scoreboard players set @s cs_pulse_target 5
loot replace entity @s weapon loot cs:eggs/pulse
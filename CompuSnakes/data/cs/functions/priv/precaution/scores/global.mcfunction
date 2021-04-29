execute unless score cs_globals cs_mode matches 0..1 run scoreboard players set cs_globals cs_mode 1

execute unless score cs_globals cs_sps matches 0..100 run scoreboard players set cs_globals cs_sps 1
execute unless score cs_globals cs_anticrash matches 0..100000 run scoreboard players set cs_globals cs_anticrash 0
execute unless score cs_globals_const cs_anticrash matches 0..100000 run scoreboard players set cs_globals_const cs_anticrash 200
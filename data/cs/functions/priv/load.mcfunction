gamerule sendCommandFeedback false

scoreboard objectives add cs_sps dummy
scoreboard players set cs_globals cs_sps 1

scoreboard objectives add cs_uses minecraft.used:minecraft.silverfish_spawn_egg
scoreboard objectives add cs_uses_dummy dummy

scoreboard objectives add cs_mode dummy
scoreboard players set cs_globals cs_mode 1

scoreboard objectives add cs_pulse dummy
scoreboard objectives add cs_pulse_target dummy

scoreboard objectives add cs_anticrash dummy
scoreboard players set cs_globals cs_anticrash 0
scoreboard players set cs_globals_const cs_anticrash 200

scoreboard objectives add cs_clock dummy
scoreboard objectives add cs_clock_target dummy

tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"Compu","color": "aqua","bold": true},{"text":"Snakes","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Version ","color": "gray","bold": false},{"text": "v0.1 ","color": "white","bold": true},{"text": "by ","color": "gray","bold": false},{"text": "DarthChungo ","color": "white","bold": true},{"text": "enabled!","color": "gray","bold": false}]
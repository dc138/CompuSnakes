execute as @e[type=minecraft:armor_stand,tag=cs_on] run scoreboard players add cs_globals cs_anticrash 1
execute if score cs_globals cs_anticrash >= cs_globals_const cs_anticrash run kill @e[type=minecraft:armor_stand,tag=cs_on]
execute if score cs_globals cs_anticrash >= cs_globals_const cs_anticrash run tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"Compu","color": "aqua","bold": true},{"text":"Snakes","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Recursive summon detected, anticrash triggered. All snakes have been stopped. Plase contact the creator.","color": "gray","bold": false}]
scoreboard players set cs_globals cs_anticrash 0

execute as @e[type=minecraft:armor_stand,tag=cs_off] run scoreboard players add cs_globals cs_anticrash 1
execute if score cs_globals cs_anticrash >= cs_globals_const cs_anticrash run kill @e[type=minecraft:armor_stand,tag=cs_off]
execute if score cs_globals cs_anticrash >= cs_globals_const cs_anticrash run tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"Compu","color": "aqua","bold": true},{"text":"Snakes","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Recursive summon detected, anticrash triggered. All snakes have been stopped. Plase contact the creator.","color": "gray","bold": false}]
scoreboard players set cs_globals cs_anticrash 0
loot give @s loot cs:eggs/step

scoreboard players set @s cs_uses 0
loot give @s loot cs:eggs/toggle

scoreboard players set @s cs_pulse_target 20
loot give @s loot cs:eggs/pulse

scoreboard players set @s cs_clock_target 40
loot give @s loot cs:eggs/clock

tellraw @a [{"text":"<< ","color": "white","bold": false},{"text":"Compu","color": "aqua","bold": true},{"text":"Snakes","color": "dark_aqua","bold": true},{"text": " >> ","color": "white","bold": false},{"text": "Tools given.","color": "gray","bold": false}]
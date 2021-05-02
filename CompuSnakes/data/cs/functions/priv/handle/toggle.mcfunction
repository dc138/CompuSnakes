# Handle ON

execute if entity @s[tag=cs_just_placed_sync,tag=!cs_toggle_on] at @s if block ~ ~ ~ white_concrete run tag @s add cs_toggle_off
execute if entity @s[tag=cs_just_placed_sync,tag=!cs_toggle_on] at @s if block ~ ~ ~ white_concrete run setblock ~ ~ ~ black_concrete
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_off] at @s if block ~ ~ ~ black_concrete run setblock ~ ~ ~ white_concrete
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_off] at @s if block ~ ~ ~ white_concrete run summon armor_stand ~ ~ ~ {Small: 1b, NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["cs_off"]}
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_off] at @s if block ~ ~ ~ white_concrete run kill @s

# Handle OFF

execute if entity @s[tag=cs_just_placed_sync,tag=!cs_toggle_off] at @s if block ~ ~ ~ black_concrete run tag @s add cs_toggle_on
execute if entity @s[tag=cs_just_placed_sync,tag=!cs_toggle_off] at @s if block ~ ~ ~ black_concrete run setblock ~ ~ ~ white_concrete
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_on] at @s if block ~ ~ ~ white_concrete run setblock ~ ~ ~ black_concrete
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_on] at @s if block ~ ~ ~ black_concrete run summon armor_stand ~ ~ ~ {Small: 1b, NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["cs_on"]}
execute if entity @s[tag=!cs_just_placed_sync,tag=cs_toggle_on] at @s if block ~ ~ ~ black_concrete run kill @s

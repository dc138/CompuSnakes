# -- Main functionality --

# Some special precations

execute as @a run function cs:priv/precaution/ensure_set
execute as @a run function cs:priv/precaution/anticrash

# Handle menus FIRST

execute as @a if data entity @s SelectedItem.tag.CsPulseEgg if predicate cs:sneaking run function cs:priv/handle/pulse/interval/menu
execute as @a if data entity @s SelectedItem.tag.CsToggleEgg if predicate cs:sneaking run function cs:priv/handle/toggle/cfg/menu

scoreboard players set @a cs_uses 0

# Handle toogles

execute as @e[type=armor_stand,tag=toggle] run function cs:priv/handle/toggle

# Advance and process snakes (this is a bit repetitive but is the only way to make it happen in a single tick, to my knowledge)

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 60..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 59..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 58..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 57..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 56..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 55..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 54..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 53..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 52..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 51..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 51..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 50..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 49..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 48..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 47..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 46..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 45..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 44..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 43..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 42..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 41..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 41..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 40..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 39..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 38..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 37..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 36..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 35..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 34..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 33..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 32..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 31..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 31..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 30..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 29..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 28..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 27..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 26..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 25..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 24..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 23..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 22..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 21..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 21..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 20..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 19..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 18..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 17..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 16..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 15..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 14..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 13..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 12..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 11..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 11..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 10..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 09..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 08..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 07..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 06..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 05..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 04..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 03..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 02..60 run function cs:step 
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 01..60 run function cs:step 

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 01..60 run function cs:priv/precaution/anticrash

# Handle pulses

execute as @e[type=armor_stand,tag=pulse] run function cs:priv/handle/pulse

# Handle special tags

tag @e[type=armor_stand,tag=cs_just_placed] remove cs_just_placed

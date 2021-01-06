# -- Main functionality --

# Some special precations

execute as @a run function cs:priv/precaution/ensure_set
execute as @a run function cs:priv/precaution/anticrash

# Handle menus FIRST

execute as @a if data entity @s SelectedItem.tag.CsPulseEgg if predicate cs:sneaking run function cs:priv/handle/pulse/interval/menu
execute as @a if data entity @s SelectedItem.tag.CsToggleEgg if predicate cs:sneaking run function cs:priv/handle/toggle/ops/menu

scoreboard players set @a cs_uses 0

# Advance and process snakes

execute if score cs_globals cs_mode matches 1 run function cs:step 

# Handle special tags

tag @e[type=armor_stand,tag=cs_just_placed] remove cs_just_placed

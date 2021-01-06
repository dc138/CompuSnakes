# Handle toogles

execute as @e[type=armor_stand,tag=toggle] run function cs:priv/handle/toggle

# Advance ON snakes

execute as @e[tag=on,type=armor_stand] run function cs:priv/handle/on
execute at @e[tag=on,type=armor_stand] unless block ~ ~ ~ black_concrete run kill @e[tag=on,type=armor_stand,distance=0]
execute at @e[tag=on,type=armor_stand] run setblock ~ ~ ~ white_concrete

# Advance OFF snakes

execute as @e[tag=off,type=armor_stand] run function cs:priv/handle/off
execute at @e[tag=off,type=armor_stand] unless block ~ ~ ~ white_concrete run kill @e[tag=off,type=armor_stand,distance=0]
execute at @e[tag=off,type=armor_stand] run setblock ~ ~ ~ black_concrete

# TODO: Properly handle new way of doing toggles

execute as @a if data entity @s SelectedItem.tag.CsPulseEgg if predicate cs:sneaking if predicate cs:scores/cs_on_menu_unset run function cs:priv/handle/pulse/interval
execute as @e[type=armor_stand,tag=pulse] run function cs:priv/handle/pulse
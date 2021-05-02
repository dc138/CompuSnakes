# -- Main functionality --

# Some special precations

function cs:priv/precaution/scores/global
execute as @e[type=!player] run function cs:priv/precaution/scores/entities
execute as @e[type=!player] run function cs:priv/precaution/align
execute as @a run function cs:priv/precaution/scores/players
execute as @a run function cs:priv/precaution/anticrash

# Handle menus FIRST

execute as @a[scores={cs_uses=1..}] if data entity @s SelectedItem.tag.CsPulseCarrot if predicate cs:sneaking run function cs:priv/handle/pulse/menu
execute as @a[scores={cs_uses=1..}] if data entity @s SelectedItem.tag.CsToggleCarrot if predicate cs:sneaking run function cs:priv/handle/toggle/menu
execute as @a[scores={cs_uses=1..}] if data entity @s SelectedItem.tag.CsStepCarrot if predicate cs:sneaking run function cs:priv/handle/step/menu

# Handle raycasting

execute as @a if data entity @s SelectedItem.tag.CsPulseCarrot run function cs:priv/handle/pulse/raycast
execute as @e[tag=cs_ray_pulse] run function cs:priv/handle/pulse/raycast/tick

execute as @a if data entity @s SelectedItem.tag.CsToggleCarrot run function cs:priv/handle/toggle/raycast
execute as @e[tag=cs_ray_toggle] run function cs:priv/handle/toggle/raycast/tick

execute as @a if data entity @s SelectedItem.tag.CsClockCarrot run function cs:priv/handle/clock/raycast
execute as @e[tag=cs_ray_clock] run function cs:priv/handle/clock/raycast/tick

# Handle manual stepping

execute as @a[scores={cs_uses=1..}] if score cs_globals cs_mode matches 0 if data entity @s SelectedItem.tag.CsStepCarrot unless predicate cs:sneaking run function cs:priv/step/once
execute as @a[scores={cs_uses=1..}] if score cs_globals cs_mode matches 0 if data entity @s SelectedItem.tag.CsStepCarrot unless predicate cs:sneaking run function cs:priv/step
execute as @a[scores={cs_uses=1..}] if score cs_globals cs_mode matches 0 if data entity @s SelectedItem.tag.CsStepCarrot unless predicate cs:sneaking run tag @e[type=armor_stand,tag=cs_just_placed_sync] remove cs_just_placed_sync

scoreboard players set @a cs_uses 0

# Handle clocks (no ticking though)

execute as @e[type=armor_stand,tag=cs_clock] run function cs:priv/handle/clock

# Handle pulses (no ticking though)

execute as @e[type=armor_stand,tag=cs_pulse] run function cs:priv/handle/pulse

# Advance and process snakes (this is a bit repetitive but is the only way to make it happen in a single tick, to my knowledge)
# Also tick clocks, pulses etc... in sync with everything else

execute if score cs_globals cs_mode matches 1 run function cs:priv/step/once

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 59..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 58..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 57..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 56..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 55..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 54..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 53..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 52..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 51..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 51..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 50..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 49..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 48..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 47..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 46..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 45..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 44..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 43..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 42..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 41..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 41..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 40..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 39..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 38..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 37..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 36..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 35..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 34..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 33..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 32..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 31..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 31..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 30..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 29..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 28..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 27..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 26..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 25..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 24..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 23..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 22..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 21..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 21..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 20..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 19..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 18..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 17..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 16..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 15..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 14..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 13..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 12..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 11..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 11..60 run function cs:priv/precaution/anticrash

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 10..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 09..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 08..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 07..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 06..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 05..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 04..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 03..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 02..60 run function cs:priv/step
execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 01..60 run function cs:priv/step

execute if score cs_globals cs_mode matches 1 if score cs_globals cs_sps matches 01..60 run function cs:priv/precaution/anticrash

# Handle special tags

execute if score cs_globals cs_mode matches 1 run tag @e[type=armor_stand,tag=cs_just_placed_sync] remove cs_just_placed_sync
tag @e[type=armor_stand,tag=cs_just_placed] remove cs_just_placed

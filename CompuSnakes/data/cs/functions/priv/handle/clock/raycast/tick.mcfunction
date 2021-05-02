execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move
execute as @s[tag=!cs_ray_done] run function cs:priv/handle/clock/raycast/move

execute if entity @s[tag=cs_ray_done,tag=!cs_ray_clock_hit,tag=cs_ray_sneak] run tag @e[tag=cs_clock_editing] remove cs_clock_editing
execute if entity @s[tag=cs_ray_done,tag=!cs_ray_clock_hit,tag=cs_ray_sneak] run tag @p add cs_clock_editing
execute if entity @s[tag=cs_ray_done,tag=!cs_ray_clock_hit,tag=cs_ray_sneak] as @e[tag=cs_clock_editing,limit=1] run function cs:priv/handle/clock/menu

kill @s[tag=cs_ray_done]

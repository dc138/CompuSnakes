execute as @s[scores={cs_uses=1..}] run scoreboard players set @s cs_uses_dummy 1

execute as @s[scores={cs_uses_dummy=1}] run function cs:priv/handle/config/sps
execute as @s[scores={cs_uses_dummy=1}] run function cs:priv/handle/config/anticrash
execute as @s[scores={cs_uses_dummy=1}] run function cs:priv/handle/config/mode
execute at @s[scores={cs_uses_dummy=1}] run kill @e[tag=cs_toggle,tag=cs_just_placed,type=armor_stand,sort=nearest,limit=1]

scoreboard players set @s cs_uses_dummy 0

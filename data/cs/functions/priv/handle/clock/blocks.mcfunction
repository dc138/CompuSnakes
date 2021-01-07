# Place decorations

execute at @s[tag=cs_just_placed] run setblock ~ ~ ~ green_stained_glass
execute at @s[tag=cs_just_placed] run summon armor_stand ~ ~-0.65 ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:0b,Tags:["cs_clock_deco"],Invisible:1b,ArmorItems:[{},{},{},{id:"chain_command_block",Count:1b,tag:{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}}],Pose:{Head:[0f,0f,180f]}}
execute at @s[tag=cs_just_placed] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["cs_clock_title"],Invisible:1b,CustomName:'{"text":"CLOCK","color": "gold","bold": true}',CustomNameVisible:1b}

# Ensure no clock component is left behind

execute at @s[tag=!cs_just_placed] unless block ~ ~ ~ green_stained_glass run kill @e[tag=cs_clock_deco,limit=1,sort=nearest]
execute at @s[tag=!cs_just_placed] unless block ~ ~ ~ green_stained_glass run kill @e[tag=cs_clock_title,distance=0,limit=1,sort=nearest]
execute at @s[tag=!cs_just_placed] unless block ~ ~ ~ green_stained_glass run kill @s

# Handle ON

execute at @s if block ~1 ~ ~ black_concrete run summon armor_stand ~1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~1 ~ black_concrete run summon armor_stand ~ ~1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~ ~1 black_concrete run summon armor_stand ~ ~ ~1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~-1 ~ ~ black_concrete run summon armor_stand ~-1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~-1 ~ black_concrete run summon armor_stand ~ ~-1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~ ~-1 black_concrete run summon armor_stand ~ ~ ~-1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}

execute at @e[type=armor_stand,tag=cs_temp] if entity @e[type=armor_stand,tag=cs_on,distance=0] run kill @e[type=armor_stand,tag=cs_temp,distance=0]
kill @e[type=armor_stand,tag=cs_toggle]

tag @e[type=armor_stand,tag=cs_temp] add cs_on
tag @e[type=armor_stand,tag=cs_temp] remove cs_temp

# Handle OFF

execute at @s if block ~1 ~ ~ white_concrete run summon armor_stand ~1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~1 ~ white_concrete run summon armor_stand ~ ~1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~ ~1 white_concrete run summon armor_stand ~ ~ ~1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~-1 ~ ~ white_concrete run summon armor_stand ~-1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~-1 ~ white_concrete run summon armor_stand ~ ~-1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}
execute at @s if block ~ ~ ~-1 white_concrete run summon armor_stand ~ ~ ~-1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_temp"], Invisible: 1b}

execute at @e[type=armor_stand,tag=cs_temp] if entity @e[type=armor_stand,tag=cs_off,distance=0] run kill @e[type=armor_stand,tag=cs_temp,distance=0]
kill @e[type=armor_stand,tag=cs_toggle]

tag @e[type=armor_stand,tag=cs_temp] add cs_off
tag @e[type=armor_stand,tag=cs_temp] remove cs_temp

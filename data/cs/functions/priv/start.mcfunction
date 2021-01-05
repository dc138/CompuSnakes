# Handle Toogle squid

execute at @e[tag=toggle,type=squid] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["toggle"],Invisible:1b}
tp @e[tag=toggle,type=squid] ~ ~-500 ~
kill @e[tag=toggle,type=squid]

# Handle Pulse squid

execute at @e[tag=pul,type=squid] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["pul"],Invisible:1b}
tp @e[tag=pul,type=squid] ~ ~-500 ~
kill @e[tag=pul,type=squid]

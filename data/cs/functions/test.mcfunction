# Spawn outside of world to not interfere with other entities or blocks
loot spawn ~ -255 ~ loot cs:test_table
data modify entity @s CustomName set from entity @e[type=item,limit=1,y=-255,dx=1,dy=1,dz=1,nbt={Item:{tag:{custom_tag:1b}}}] Item.tag.display.Name
kill @e[type=item,limit=1,y=-255,dx=1,dy=1,dz=1,nbt={Item:{tag:{custom_tag:1b}}}]
data modify entity @s CustomNameVisible set value 1b
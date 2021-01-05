# Main functionality

execute if score cs_globals cs_mode matches 1 run function cs:step 

# Prevent crash by ensuring no more than 100 armor stands exist

function cs:priv/anticrash

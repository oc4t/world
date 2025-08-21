#set home to current location
execute as @s run data modify storage tp:temp type set value "home"
execute if predicate tp:valid_sethome as @s store result storage tp:temp id double 1 run scoreboard players get @s sethome
execute as @s store result storage tp:temp playerid double 1 run scoreboard players get @s playerid

execute as @s[predicate=!tp:valid_sethome] run function tp:general/system_msg {selector:"@s",text:"Failed setting home",color:"#eeb845"}
execute if predicate tp:valid_sethome run function tp:general/system_msg {selector:"@s",text:"Set home at current location",color:"#eeb845"}
execute if predicate tp:valid_sethome run function tp:general/set_location with storage tp:temp

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s sethome
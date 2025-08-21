execute as @s run data modify storage tp:temp type set value "home"
execute if predicate tp:valid_home as @s store result storage tp:temp id double 1 run scoreboard players get @s home
execute as @s store result storage tp:temp playerid double 1 run scoreboard players get @s playerid

execute as @s[predicate=!tp:valid_home] run function tp:general/system_msg {selector:"@s",text:"Failed teleporting to home",color:"#eeb845"}
execute if predicate tp:valid_home run function tp:general/system_msg {selector:"@s",text:"Teleporting to home",color:"#eeb845"}
execute if predicate tp:valid_home run function tp:general/tp_to_location with storage tp:temp

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s home
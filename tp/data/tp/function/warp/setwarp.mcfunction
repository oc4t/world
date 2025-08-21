#set warp to current location
execute as @s run data modify storage tp:temp type set value "warp"
data modify storage tp:temp id set value 1
execute as @s store result storage tp:temp playerid double 1 run scoreboard players get @s playerid

function tp:general/set_location with storage tp:temp
function tp:general/set_name with storage tp:temp

function tp:general/system_msg {selector:"@s",text:"Set warp at current location",color:"#eeb845"}

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s setwarp
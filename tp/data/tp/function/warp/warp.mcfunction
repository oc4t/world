execute as @s run data modify storage tp:temp type set value "warp"
data modify storage tp:temp id set value 1
execute as @s store result storage tp:temp playerid double 1 run scoreboard players get @s warp

function tp:general/system_msg {selector:"@s",text:"Teleporting to warp",color:"#eeb845"}

function tp:general/tp_to_location with storage tp:temp

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s warp
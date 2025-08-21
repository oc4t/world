data modify storage tp:temp selector set value "@s"
execute store result storage tp:temp playerid int 1 run scoreboard players get @s tp
function tp:tp/teleport_to with storage tp:temp

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s tp
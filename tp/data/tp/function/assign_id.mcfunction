#assign a unique id
scoreboard players add .global playerid 1
scoreboard players operation @s playerid = .global playerid

execute store result storage tp:temp playerid int 1 run scoreboard players get @s playerid
function tp:general/set_name with storage tp:temp

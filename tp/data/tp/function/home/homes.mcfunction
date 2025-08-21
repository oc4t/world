execute store result storage tp:temp playerid int 1 run scoreboard players get @s playerid
function tp:home/sethomes with storage tp:temp

function tp:general/system_msg {selector:"@s",text:"List of your homes",color:"#eeb845"}
execute if data storage tp:temp home[0] run function tp:home/home_msg with storage tp:temp home[0]

scoreboard players reset @s homes
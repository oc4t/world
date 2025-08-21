data modify storage tp:temp warp set from storage tp:player_data players

function tp:general/system_msg {selector:"@s",text:"List of all warps",color:"#eeb845"}
execute if data storage tp:temp warp[0] run function tp:warp/warp_msg with storage tp:temp warp[0]

scoreboard players reset @s warplist
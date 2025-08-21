$execute store result storage tp:player_data players[{id:$(playerid)}].$(type)[{id:$(id)}].x double 1 run data get entity @s Pos[0]
$execute store result storage tp:player_data players[{id:$(playerid)}].$(type)[{id:$(id)}].y double 1 run data get entity @s Pos[1]
$execute store result storage tp:player_data players[{id:$(playerid)}].$(type)[{id:$(id)}].z double 1 run data get entity @s Pos[2]
$execute as @s run data modify storage tp:player_data players[{id:$(playerid)}].$(type)[{id:$(id)}].dimension set from entity @s Dimension

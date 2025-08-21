function tp:general/system_msg {selector:"@s",text:"List of all players to tp to",color:"#eeb845"}

execute positioned 0 0 0 run loot replace entity @e[tag=item,limit=1,type=item_display, distance=..1] container.0 loot tp:entity/player_head
execute positioned 0 0 0 run data modify storage tp:temp name set from entity @e[tag=item,limit=1,type=item_display,distance=..1] item.components.minecraft:profile.name
execute as @a run function tp:tplist/tp_list_iteration

scoreboard players reset @s tplist
execute at @s run playsound entity.enderman.teleport neutral @a ~ ~ ~
$execute if score @p tpmobs matches 1 at @s run tp @e[distance=..2,predicate=!tp:is_not_tpable] @a[limit=1,scores={playerid=$(playerid)}]
$tp $(selector) @a[limit=1,scores={playerid=$(playerid)}]
execute at @s run playsound entity.enderman.teleport neutral @a ~ ~ ~
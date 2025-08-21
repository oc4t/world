execute at @s run playsound entity.enderman.teleport neutral @a ~ ~ ~

#if tpmobs is on tp mobs with you to your home
$execute if score @s tpmobs matches 1 at @s in $(dimension) run tp @e[distance=..2,predicate=!tp:is_not_tpable] $(x) $(y) $(z)
$execute in $(dimension) run tp @s $(x) $(y) $(z)

execute at @s run playsound entity.enderman.teleport neutral @a ~ ~ ~
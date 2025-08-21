scoreboard players enable @a help
scoreboard players enable @a tp
scoreboard players enable @a tplist
scoreboard players enable @a warp
scoreboard players enable @a warplist
scoreboard players enable @a setwarp
scoreboard players enable @a home
scoreboard players enable @a sethome
scoreboard players enable @a homes
scoreboard players enable @a toggletpmobs

execute as @a[scores={help=1..}] run function tp:general/help
execute as @a[scores={tp=1..}] run function tp:tp/teleport
execute as @a[scores={tplist=1..}] run function tp:tplist/tp_list
execute as @a[scores={warp=1..}] run function tp:warp/warp
execute as @a[scores={warplist=1..}] run function tp:warp/warp_list
execute as @a[scores={setwarp=1..}] run function tp:warp/setwarp
execute as @a[scores={home=1..}] run function tp:home/home
execute as @a[scores={sethome=1..}] run function tp:home/sethome
execute as @a[scores={homes=1..}] run function tp:home/homes
execute as @a[scores={toggletpmobs=1..}] run function tp:toggle_tp_mobs

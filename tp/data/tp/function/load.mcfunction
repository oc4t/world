function tp:general/system_msg {selector:"@a",text:"Tp is active",color:"#b7fffd"}
execute unless entity 00000070-0000-006e-0000-007400000078 in minecraft:overworld run data modify storage tp:player_data max_homes set value 2
execute unless entity 00000070-0000-006e-0000-007400000078 in minecraft:overworld run summon item_display 0 0 0 {Tags:["pnt.name"],UUID:[I;112,110,116,120]}

#create all scores
scoreboard objectives add help trigger

scoreboard objectives add sethome trigger
scoreboard objectives add home trigger
scoreboard objectives add homes trigger
scoreboard objectives add max_homes dummy

scoreboard objectives add setwarp trigger
scoreboard objectives add warp trigger
scoreboard objectives add warplist trigger

scoreboard objectives add toggletpmobs trigger
scoreboard objectives add tpmobs dummy

scoreboard objectives add tp trigger
scoreboard objectives add tplist trigger

scoreboard objectives add playerid dummy
scoreboard objectives setdisplay list playerid
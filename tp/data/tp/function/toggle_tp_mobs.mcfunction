scoreboard players add @s tpmobs 1

execute if score @p tpmobs matches 1 run function tp:general/system_msg {selector:"@s",text:"Toggled teleporting mobs with you on",color:"#b7fffd"}
execute if score @p tpmobs matches 2 run function tp:general/system_msg {selector:"@s",text:"Toggled teleporting mobs with you off",color:"#b7fffd"}

execute if score @p tpmobs matches 2.. run scoreboard players set @s tpmobs 0

#reset the score so it doesnt infinitely spam the function
scoreboard players reset @s toggletpmobs
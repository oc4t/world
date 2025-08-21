$tellraw @s [{"text":"[$(id)] ","color":"#4c74c9"},{"text":"Teleport","underlined":true,"color":"#eeb845","clickEvent":{"action":"run_command","value":"/trigger home set $(id)"}},{"text":" $(x), $(y), $(z), $(dimension) ","color":"#ffffff"}]
data remove storage tp:temp home[0]
execute if data storage tp:temp home[0] run function tp:home/home_msg with storage tp:temp home[0]
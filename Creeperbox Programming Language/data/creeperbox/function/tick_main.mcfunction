execute as @a at @s align xyz if block ~ ~-1 ~ minecraft:emerald_block unless score @s Creeperbox.Cooldown matches 1 run function creeperbox:init

execute as @a at @s align xyz unless block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s Creeperbox.Cooldown 0

#execute at @a if block ~ ~-1 ~ minecraft:coal_block run scoreboard players set #CbRunning Creeperbox 0

#execute at @a if block ~ ~-1 ~ minecraft:coal_block run scoreboard players set #CbAlreadyInit Creeperbox 0

#execute at @a if block ~ ~-1 ~ minecraft:coal_block run kill @e[type=armor_stand,tag=CreeperboxMarker]
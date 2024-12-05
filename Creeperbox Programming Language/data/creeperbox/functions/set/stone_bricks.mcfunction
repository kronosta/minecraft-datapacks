data modify storage creeperbox:storage CoordStack append from entity @s Pos

execute store result score #CbCoordX Creeperbox run data get storage creeperbox:storage Stack[-1].Value[-3]

execute store result score #CbCoordY Creeperbox run data get storage creeperbox:storage Stack[-1].Value[-2]

execute store result score #CbCoordZ Creeperbox run data get storage creeperbox:storage Stack[-1].Value[-1]

data remove storage creeperbox:storage Stack[-1]

execute store result entity @s Pos[0] double 1.0 run scoreboard players get #CbCoordX Creeperbox

execute store result entity @s Pos[1] double 1.0 run scoreboard players get #CbCoordY Creeperbox

execute store result entity @s Pos[2] double 1.0 run scoreboard players get #CbCoordZ Creeperbox

execute at @s run setblock ~ ~ ~ stone_bricks

data modify entity @s Pos set from storage creeperbox:storage CoordStack[-1]

data remove storage creeperbox:storage CoordStack[-1]

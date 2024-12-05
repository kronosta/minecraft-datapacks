# Granite -- Skip next command.
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ granite run scoreboard players set #CbBreak Creeperbox 1

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ granite run function creeperbox:move_ip


# Sea Lantern -- Halt (by setting CbRunning to 0)
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sea_lantern unless score #CbBreak Creeperbox matches 1 run scoreboard players set #CbAlreadyInit Creeperbox 0

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sea_lantern unless score #CbBreak Creeperbox matches 1 run scoreboard players set #CbRunning Creeperbox 0

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sea_lantern unless score #CbBreak Creeperbox matches 1 run kill @e[type=armor_stand,tag=CreeperboxMarker]


# Oak log -- Change direction +
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_log[axis=x] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "x+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_log[axis=y] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "y+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_log[axis=z] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "z+"


# Birch log -- Change direction +
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ birch_log[axis=x] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "x-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ birch_log[axis=y] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "y-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ birch_log[axis=z] unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set value "z-"

# Spruce log -- Directional if
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log unless score #CbBreak Creeperbox matches 1 store result score #CbCond Creeperbox run data get storage creeperbox:storage Register.Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=x] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "x+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=x] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "x-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=y] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "y+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=y] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "y-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=z] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "z+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ spruce_log[axis=z] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "z-"


# Wool -- Push numbers
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ white_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:0}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ orange_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:1}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ magenta_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:2}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ light_blue_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:3}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ yellow_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:4}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ lime_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:5}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ pink_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:6}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gray_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:7}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ light_gray_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:8}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cyan_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:9}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ purple_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:10}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ blue_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:11}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ brown_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:12}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ green_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:13}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:14}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ black_wool unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:15}


# Sandstone -- Add
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg2 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg1 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 run scoreboard players operation #CbCmdArg1 Creeperbox += #CbCmdArg2 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 store result storage creeperbox:storage Temp int 1.0 run scoreboard players get #CbCmdArg1 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack[-1].Value set from storage creeperbox:storage Temp


# Red Sandstone -- Subtract
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg2 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg1 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 run scoreboard players operation #CbCmdArg1 Creeperbox -= #CbCmdArg2 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 store result storage creeperbox:storage Temp int 1.0 run scoreboard players get #CbCmdArg1 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack[-1].Value set from storage creeperbox:storage Temp


# Oak Sign -- Print
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_sign unless score #CbBreak Creeperbox matches 1 run tellraw @a [{"block":"~ ~ ~","nbt":"Text1","interpret":true},{"block":"~ ~ ~","nbt":"Text2","interpret":true},{"block":"~ ~ ~","nbt":"Text3","interpret":true},{"block":"~ ~ ~","nbt":"Text4","interpret":true}]


# Oak Wall Sign -- Print top of stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_wall_sign unless score #CbBreak Creeperbox matches 1 run tellraw @a [{"storage":"creeperbox:storage","nbt":"Stack[-1].Value"}]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_wall_sign unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]


# Stripped Oak Wood -- Swap top two stack items
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_oak_wood unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage Stack[-2]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_oak_wood unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-3]


# Stripped Birch Wood -- Duplicate top stack item
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_birch_wood unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage Stack[-1]


# Stripped Spruce Wood -- Drop top stack item
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_spruce_wood unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]


# Stripped Jungle Wood -- Push nested stack.
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_jungle_wood unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {Value:[]}


# Stripped Acacia Wood -- Push to nested stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_acacia_wood unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack[-2].Value append from storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_acacia_wood unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]


# Stripped Dark Oak Wood -- Pop from nested stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_dark_oak_wood unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage Stack[-1].Value[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_dark_oak_wood unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-2].Value[-1]


# Stripped Crimson Hyphae -- Set register to top of stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_crimson_hyphae unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Register set from storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_crimson_hyphae unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]


# Stripped Warped Hyphae -- Push register to stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ stripped_warped_hyphae unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage Register


# Gold Block -- Take a stack containing 3 coordinates from the register, goto those coordinates and put the original coordinates onto a return stack.
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_block unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage CoordStack append from entity @e[type=armor_stand,tag=CreeperboxMarker,limit=1] Pos

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_block unless score #CbBreak Creeperbox matches 1 store result score #CbCoordX Creeperbox run data get storage creeperbox:storage Register.Value[0]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_block unless score #CbBreak Creeperbox matches 1 store result score #CbCoordY Creeperbox run data get storage creeperbox:storage Register.Value[1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_block unless score #CbBreak Creeperbox matches 1 store result score #CbCoordZ Creeperbox run data get storage creeperbox:storage Register.Value[2]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_block unless score #CbBreak Creeperbox matches 1 run scoreboard players set #CbGoldBlock Creeperbox 1

execute as @e[type=armor_stand,tag=CreeperboxMarker] if score #CbGoldBlock Creeperbox matches 1 store result entity @s Pos[0] double 1.0 run scoreboard players get #CbCoordX Creeperbox

execute as @e[type=armor_stand,tag=CreeperboxMarker] if score #CbGoldBlock Creeperbox matches 1 store result entity @s Pos[1] double 1.0 run scoreboard players get #CbCoordY Creeperbox

execute as @e[type=armor_stand,tag=CreeperboxMarker] if score #CbGoldBlock Creeperbox matches 1 store result entity @s Pos[2] double 1.0 run scoreboard players get #CbCoordZ Creeperbox

scoreboard players set #CbGoldBlock Creeperbox 0

# Gold ore - Return to the top coordinate on the return stack.
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ gold_ore unless score #CbBreak Creeperbox matches 1 run scoreboard players set #CbGoldOre Creeperbox 1

execute as @e[type=armor_stand,tag=CreeperboxMarker] if score #CbGoldOre Creeperbox matches 1 unless score #CbBreak Creeperbox matches 1 run data modify entity @s Pos set from storage creeperbox:storage CoordStack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if score #CbGoldOre Creeperbox matches 1 unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage CoordStack[-1]

scoreboard players set #CbGoldOre Creeperbox 0


# Andesite -- Get block
execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ andesite unless score #CbBreak Creeperbox matches 1 run function creeperbox:get/main


# Polished Andesite -- Set block
execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ polished_andesite unless score #CbBreak Creeperbox matches 1 run function creeperbox:set/main


# Diorite -- Get shared data
# This is made so that there is data that can be shared between programs 
# that is a bit more difficult to grief. The shared data is a single stack
# element, but that stack element may be a stack itself, and have nested 
# stacks inside.
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ diorite unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage Shared


# Polished Diorite -- Set shared data
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ polished_diorite unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Shared set from storage creeperbox:storage Register


# Cut sandstone -- Multiply
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg2 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg1 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 run scoreboard players operation #CbCmdArg1 Creeperbox *= #CbCmdArg2 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 store result storage creeperbox:storage Temp int 1.0 run scoreboard players get #CbCmdArg1 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack[-1].Value set from storage creeperbox:storage Temp


# Cut red sandstone -- Divide
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg2 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 store result score #CbCmdArg1 Creeperbox run data get storage creeperbox:storage Stack[-1].Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 run scoreboard players operation #CbCmdArg1 Creeperbox /= #CbCmdArg2 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 store result storage creeperbox:storage Temp int 1.0 run scoreboard players get #CbCmdArg1 Creeperbox

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append value {}

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ cut_red_sandstone unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack[-1].Value set from storage creeperbox:storage Temp


# Brown mushroom block -- Push to auxiliary stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ brown_mushroom_block unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage StackAux append from storage creeperbox:storage Stack[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ brown_mushroom_block unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage Stack[-1]


# Red mushroom block -- Pop from auxiliary stack
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_mushroom_block unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack append from storage creeperbox:storage StackAux[-1]

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ red_mushroom_block unless score #CbBreak Creeperbox matches 1 run data remove storage creeperbox:storage StackAux[-1]


# Jungle log -- Reversed directional if
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log unless score #CbBreak Creeperbox matches 1 store result score #CbCond Creeperbox run data get storage creeperbox:storage Register.Value

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=x] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "x-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=x] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "x+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=y] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "y-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=y] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "y+"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=z] unless score #CbBreak Creeperbox matches 1 if score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "z-"

execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ jungle_log[axis=z] unless score #CbBreak Creeperbox matches 1 unless score #CbCond Creeperbox matches 0 run data modify storage creeperbox:storage Direction set value "z+"



# Oak Slab -- Set backtrack point
execute at @e[type=armor_stand,tag=CreeperboxMarker] if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints append value {}

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].Pos set from entity @s Pos

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].Stack set from storage creeperbox:storage Stack

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].StackAux set from storage creeperbox:storage StackAux

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].CoordStack set from storage creeperbox:storage CoordStack

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].Register set from storage creeperbox:storage Register

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Choicepoints[-1].Direction set from storage creeperbox:storage Direction

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score #CbBreak Creeperbox matches 1 run tellraw @a {"nbt":"Choicepoints","storage":"creeperbox:storage"} 



# Birch slab -- Go back to most recent choicepoint
execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Stack set from storage creeperbox:storage Choicepoints[-1].Stack

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage StackAux set from storage creeperbox:storage Choicepoints[-1].StackAux

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage CoordStack set from storage creeperbox:storage Choicepoints[-1].CoordStack

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Register set from storage creeperbox:storage Choicepoints[-1].Register

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run data modify storage creeperbox:storage Direction set from storage creeperbox:storage Choicepoints[-1].Direction

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score #CbBreak Creeperbox matches 1 run scoreboard players set #CbBirchSlab Creeperbox 1

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if score #CbBirchSlab Creeperbox matches 1 run data modify entity @s Pos set from storage creeperbox:storage Choicepoints[-1].Pos

execute as @e[type=armor_stand,tag=CreeperboxMarker] at @s if score #CbBirchSlab Creeperbox matches 1 run data remove storage creeperbox:storage Choicepoints[-1]

scoreboard players set #CbBirchSlab Creeperbox 1



#CbBreak makes sure nothing gets executed later on when commands are skipped. This resets it so the next commands are ready.
scoreboard players set #CbBreak Creeperbox 0

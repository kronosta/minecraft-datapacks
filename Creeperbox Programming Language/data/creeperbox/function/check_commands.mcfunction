# Granite -- Skip next command.
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ granite run scoreboard players set @s Creeperbox.Break 1

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ granite run function creeperbox:move_ip


# Sea Lantern -- Halt (by setting CbRunning to 0)
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sea_lantern unless score @s Creeperbox.Break matches 1 run scoreboard players set @s Creeperbox.Running 0

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sea_lantern unless score @s Creeperbox.Break matches 1 run data remove entity @s Passengers

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sea_lantern unless score @s Creeperbox.Break matches 1 run kill @s


# Oak log -- Change direction +
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_log[axis=x] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_log[axis=y] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_log[axis=z] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z+"


# Birch log -- Change direction +
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_log[axis=x] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_log[axis=y] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_log[axis=z] unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z-"

# Spruce log -- Directional if
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.Cond run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register.Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=x] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=x] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=y] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=y] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=z] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ spruce_log[axis=z] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z-"


# Wool -- Push numbers
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ white_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:0}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ orange_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:1}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ magenta_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:2}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ light_blue_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:3}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ yellow_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:4}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ lime_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:5}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ pink_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:6}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gray_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:7}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ light_gray_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:8}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cyan_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:9}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ purple_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:10}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ blue_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:11}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ brown_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:12}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ green_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:13}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:14}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ black_wool unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:15}


# Sandstone -- Add
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg2 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg1 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 run scoreboard players operation @s Creeperbox.CmdArg1 += @s Creeperbox.CmdArg2

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 store result entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp int 1.0 run scoreboard players get @s Creeperbox.CmdArg1

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp


# Red Sandstone -- Subtract
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg2 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg1 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 run scoreboard players operation @s Creeperbox.CmdArg1 -= @s Creeperbox.CmdArg2

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 store result entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp int 1.0 run scoreboard players get @s Creeperbox.CmdArg1

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp


# Oak Sign -- Print
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_sign unless score @s Creeperbox.Break matches 1 run tellraw @a [{"block":"~ ~ ~","nbt":"front_text.messages[0]","interpret":true},{"block":"~ ~ ~","nbt":"front_text.messages[1]","interpret":true},{"block":"~ ~ ~","nbt":"front_text.messages[2]","interpret":true},{"block":"~ ~ ~","nbt":"front_text.messages[3]","interpret":true}]


# Oak Wall Sign -- Print top of stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_wall_sign unless score @s Creeperbox.Break matches 1 run data modify storage creeperbox:storage stackvalue set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_wall_sign unless score @s Creeperbox.Break matches 1 run tellraw @a [{"storage":"creeperbox:storage","nbt":"stackvalue"}]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_wall_sign unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Stripped Oak Wood -- Swap top two stack items
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_oak_wood unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-2]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_oak_wood unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-3]


# Stripped Birch Wood -- Duplicate top stack item
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_birch_wood unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Stripped Spruce Wood -- Drop top stack item
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_spruce_wood unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Stripped Jungle Wood -- Push nested stack.
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_jungle_wood unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {Value:[]}


# Stripped Acacia Wood -- Push to nested stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_acacia_wood unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-2].Value append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_acacia_wood unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Stripped Dark Oak Wood -- Pop from nested stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_dark_oak_wood unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_dark_oak_wood unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-2].Value[-1]


# Stripped Crimson Hyphae -- Set register to top of stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_crimson_hyphae unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_crimson_hyphae unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Stripped Warped Hyphae -- Push register to stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ stripped_warped_hyphae unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register


# Gold Block -- Take a stack containing 3 coordinates from the register, goto those coordinates and put the original coordinates onto a return stack.
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_block unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.CoordStack append from entity @e[tag=CreeperboxMarker,limit=1] Pos

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_block unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CoordX run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register.Value[0]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_block unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CoordY run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register.Value[1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_block unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CoordZ run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register.Value[2]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_block unless score @s Creeperbox.Break matches 1 run scoreboard players set @s Creeperbox.GoldBlock 1

execute as @e[tag=CreeperboxMarker] if score @s Creeperbox.GoldBlock matches 1 store result entity @s Pos[0] double 1.0 run scoreboard players get @s Creeperbox.CoordX

execute as @e[tag=CreeperboxMarker] if score @s Creeperbox.GoldBlock matches 1 store result entity @s Pos[1] double 1.0 run scoreboard players get @s Creeperbox.CoordY

execute as @e[tag=CreeperboxMarker] if score @s Creeperbox.GoldBlock matches 1 store result entity @s Pos[2] double 1.0 run scoreboard players get @s Creeperbox.CoordZ

scoreboard players set @s Creeperbox.GoldBlock 0

# Gold ore - Return to the top coordinate on the return stack.
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ gold_ore unless score @s Creeperbox.Break matches 1 run scoreboard players set @s Creeperbox.GoldOre 1

execute as @e[tag=CreeperboxMarker] if score @s Creeperbox.GoldOre matches 1 unless score @s Creeperbox.Break matches 1 run data modify entity @s Pos set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.CoordStack[-1]

execute as @e[tag=CreeperboxMarker] at @s if score @s Creeperbox.GoldOre matches 1 unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.CoordStack[-1]

scoreboard players set @s Creeperbox.GoldOre 0


# Andesite -- Get block
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ andesite unless score @s Creeperbox.Break matches 1 run function creeperbox:get/main


# Polished Andesite -- Set block
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ polished_andesite unless score @s Creeperbox.Break matches 1 run function creeperbox:set/main


# Cut sandstone -- Multiply
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg2 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg1 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 run scoreboard players operation @s Creeperbox.CmdArg1 *= @s Creeperbox.CmdArg2

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 store result entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp int 1.0 run scoreboard players get @s Creeperbox.CmdArg1

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp


# Cut red sandstone -- Divide
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg2 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.CmdArg1 run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 run scoreboard players operation @s Creeperbox.CmdArg1 /= @s Creeperbox.CmdArg2

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 store result entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp int 1.0 run scoreboard players get @s Creeperbox.CmdArg1

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append value {}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ cut_red_sandstone unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1].Value set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Temp


# Brown mushroom block -- Push to auxiliary stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ brown_mushroom_block unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.StackAux append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ brown_mushroom_block unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack[-1]


# Red mushroom block -- Pop from auxiliary stack
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_mushroom_block unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack append from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.StackAux[-1]

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ red_mushroom_block unless score @s Creeperbox.Break matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.StackAux[-1]


# Jungle log -- Reversed directional if
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log unless score @s Creeperbox.Break matches 1 store result score @s Creeperbox.Cond run data get entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register.Value

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=x] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=x] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "x+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=y] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=y] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "y+"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=z] unless score @s Creeperbox.Break matches 1 if score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z-"

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ jungle_log[axis=z] unless score @s Creeperbox.Break matches 1 unless score @s Creeperbox.Cond matches 0 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set value "z+"



# Oak Slab -- Set backtrack point
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints append value {}

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Pos set from entity @s Pos

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Stack set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].StackAux set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.StackAux

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].CoordStack set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.CoordStack

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Register set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Direction set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ oak_slab unless score @s Creeperbox.Break matches 1 run tellraw @a {"nbt":"Choicepoints","storage":"creeperbox:storage"} 



# Birch slab -- Go back to most recent choicepoint
execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Stack set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Stack

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.StackAux set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].StackAux

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.CoordStack set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].CoordStack

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Register set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Register

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run data modify entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Direction set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Direction

execute as @e[tag=CreeperboxMarker] at @s if block ~ ~ ~ birch_slab unless score @s Creeperbox.Break matches 1 run scoreboard players set @s Creeperbox.BirchSlab 1

execute as @e[tag=CreeperboxMarker] at @s if score @s Creeperbox.BirchSlab matches 1 run data modify entity @s Pos set from entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1].Pos

execute as @e[tag=CreeperboxMarker] at @s if score @s Creeperbox.BirchSlab matches 1 run data remove entity @e[tag=CreeperboxMarkerData,limit=1,sort=nearest] data.Choicepoints[-1]

scoreboard players set @s Creeperbox.BirchSlab 1


scoreboard players set @s Creeperbox.Break 0

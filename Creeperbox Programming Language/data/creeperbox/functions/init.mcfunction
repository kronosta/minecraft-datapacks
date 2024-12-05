summon armor_stand ~ ~-1 ~ {Tags:["CreeperboxMarker"],NoGravity:1b}
data modify storage creeperbox:storage Stack set value []
data modify storage creeperbox:storage Input set value []
data modify storage creeperbox:storage Direction set value "x+"
data modify storage creeperbox:storage CoordStack set value []
scoreboard players set #CbRunning Creeperbox 1
scoreboard players set #CbAlreadyInit Creeperbox 1

execute run summon block_display ~ ~-1 ~ \
    {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
    translation:[-1f,-1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:redstone_torch"},\
    Tags:["CreeperboxMarker","CreeperboxMarkerInit"],NoGravity:1b,\
    Passengers:[{id:"minecraft:marker",Tags:["CreeperboxMarkerData"],data:{\
    Stack:[{}],StackAux:[{}],Input:[{}],CoordStack:[{}],Choicepoints:[{}],Direction:"x+"}}]}
#data modify entity @e[tag=CreeperboxMarkerInit,limit=1] Passengers[0].data.Stack set value []
#data modify entity @e[tag=CreeperboxMarkerInit,limit=1] Passengers[0].data.Input set value []
#data modify entity @e[tag=CreeperboxMarkerInit,limit=1] Passengers[0].data.Direction set value "x+"
#data modify entity @e[tag=CreeperboxMarkerInit,limit=1] Passengers[0].data.CoordStack set value []
scoreboard players set @e[tag=CreeperboxMarkerInit,limit=1] Creeperbox.Running 1
tag @e[tag=CreeperboxMarkerInit,limit=1] remove CreeperboxMarkerInit
scoreboard players set @s Creeperbox.Cooldown 1

tellraw @s[tag=refinedadv_debug] [{"translate": "[Refined Advancements: Ender Dragon was killed, giving advancement to all players within 128 blocks]","color": "gray","italic":true}]

execute as @s[predicate=refined_advancements:location/the_end] positioned 0 70 0 run advancement grant @a[distance=..128,gamemode=!spectator] only minecraft:end/kill_dragon 
execute as @s[predicate=refined_advancements:location/the_end] positioned 0 70 0 run advancement grant @a[distance=..128,gamemode=!spectator] only refined_advancements:story/kill_dragon 

execute as @s[predicate=!refined_advancements:location/the_end] run advancement grant @a[distance=..128,gamemode=!spectator] only minecraft:end/kill_dragon 
execute as @s[predicate=!refined_advancements:location/the_end] run advancement grant @a[distance=..128,gamemode=!spectator] only refined_advancements:story/kill_dragon 

advancement revoke @s only refined_advancements:technical/kill_dragon
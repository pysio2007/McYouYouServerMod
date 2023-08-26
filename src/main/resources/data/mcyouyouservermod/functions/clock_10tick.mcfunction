
scoreboard players set 10tick refinedadv_clock 0




execute as @a at @s if entity @e[distance=..32,type=phantom] if predicate refined_advancements:location/overworld run advancement grant @s only refined_advancements:story/phantom

execute as @a at @s if predicate refined_advancements:location/overworld if block ~ ~-1 ~ #refined_advancements:monster_room_block positioned ~ ~1 ~ run function refined_advancements:spawner_raycast
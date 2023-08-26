scoreboard players add temp refinedadv_count 1
execute if block ~ ~ ~ wet_sponge run function refined_advancements:sponge_raycast_hit
execute unless block ~ ~ ~ wet_sponge unless score temp refinedadv_count matches 20.. positioned ^ ^ ^.25 run function refined_advancements:sponge_raycast


scoreboard players set @s refinedadv_usedsponge 0
scoreboard players reset temp refinedadv_count


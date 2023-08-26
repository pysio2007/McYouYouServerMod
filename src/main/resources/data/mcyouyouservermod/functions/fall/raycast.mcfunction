scoreboard players add temp refinedadv_count 1
execute if block ~ ~ ~ water run function refined_advancements:fall/raycast_hit
execute unless block ~ ~ ~ water unless score temp refinedadv_count matches 16.. positioned ~ ~-1 ~ run function refined_advancements:fall/raycast

scoreboard players reset temp refinedadv_count


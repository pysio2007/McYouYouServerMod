scoreboard players add temp refinedadv_count 1
execute if block ~ ~ ~ spawner run function refined_advancements:spawner
execute unless score temp refinedadv_count matches 10.. if block ~ ~ ~ #refined_advancements:permeable positioned ^ ^ ^.5 run function refined_advancements:spawner_raycast
scoreboard players reset temp refinedadv_count
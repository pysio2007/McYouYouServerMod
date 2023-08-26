scoreboard players add 10tick refinedadv_clock 1
execute if score 10tick refinedadv_clock matches 10.. run function refined_advancements:clock_10tick

#fall stuff
execute as @a at @s if block ~ ~-0.0001 ~ #refined_advancements:permeable store result score @s refinedadv_fallspeed run data get entity @s Motion[1] 100
execute as @a[scores={refinedadv_fallspeed=..-100}] at @s unless score @s refinedadv_watertime matches 0.. run function refined_advancements:fall/raycast
execute as @a[scores={refinedadv_watertime=0..}] at @s run function refined_advancements:fall/water

execute as @a at @s unless block ~ ~-0.1 ~ #refined_advancements:permeable run scoreboard players reset @s refinedadv_fallspeed
execute as @a at @s unless block ~ ~-0.1 ~ #refined_advancements:permeable run scoreboard players reset @s refinedadv_watertime

execute as @a at @s as @s[predicate=refined_advancements:fail_skykill] run scoreboard players set @s refinedadv_skykill 0
execute as @a at @s if score @s refinedadv_skykill matches 10.. run advancement grant @s only refined_advancements:end/skykill

execute as @a[scores={refinedadv_usedsponge=1..}] at @s anchored eyes run function refined_advancements:sponge_raycast

execute as @a[advancements={refined_advancements:technical/used_water_bucket=true}] unless score @s refinedadv_watertime matches 0.. run advancement revoke @s only refined_advancements:technical/used_water_bucket

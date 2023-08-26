execute as @s[scores={refinedadv_skykill=1..}] run scoreboard players remove @s refinedadv_skykill 1
advancement revoke @s only refined_advancements:technical/kill_non_hostile
tellraw @s[tag=refinedadv_debug] [{"translate": "[Refined Advancements: Non hostile mob killed]","color": "gray","italic":true}]
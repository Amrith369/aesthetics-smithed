#
# FALLING LEAVES
#
# TOGGLE LEAVES
#
scoreboard players enable @a amr.aesthetics.toggle.leaves
scoreboard players add @a amr.aesthetics.toggle.leaves 0
scoreboard players add @a amr.aesthetics.leafspawntimer 0
scoreboard players add @a[scores={amr.aesthetics.toggle.leaves=0}] amr.aesthetics.leafspawntimer 1
execute as @a[scores={amr.aesthetics.toggle.leaves=0,amr.aesthetics.leafspawntimer=80..}] run function amr.nature:spawn_leaves
scoreboard players set @a[scores={amr.aesthetics.leafspawntimer=121..}] amr.aesthetics.leafspawntimer 0
tellraw @a[scores={amr.aesthetics.toggle.leaves=1}] {"text":"[Aesthetics] Falling Leaves Off","color":"#FFDB8F"}
scoreboard players set @a[scores={amr.aesthetics.toggle.leaves=1}] amr.aesthetics.toggle.leaves 2
tellraw @a[scores={amr.aesthetics.toggle.leaves=3}] {"text":"[Aesthetics] Falling Leaves On","color":"#95DC65"}
scoreboard players set @a[scores={amr.aesthetics.toggle.leaves=3..}] amr.aesthetics.toggle.leaves 0
#
# FALLING LEAF FUNCTIONALITY
#
execute at @e[tag=amr.ae.falling.oak] run tp @e[tag=amr.ae.falling.oak,distance=0..1] ~ ~-0.05 ~ ~2 ~
execute at @e[tag=amr.ae.falling.oak] if block ~ ~ ~ stone run kill @e[tag=amr.ae.falling.oak,distance=0..1]
kill @e[tag=amr.ae.spread,scores={amr.aesthetics.leafspawnlife=1..}]
execute at @e[tag=amr.ae.falling.oak] run kill @e[tag=amr.ae.falling.oak,distance=1..2]
execute at @e[tag=amr.ae.falling.oak] if entity @e[distance=0..1,type=arrow] run particle dust 0.020 0.529 0.039 1 ~ ~ ~ 0.3 0.3 0.3 1 10 normal
execute at @e[type=arrow] run kill @e[tag=amr.ae.falling.oak,distance=0..1]
#
# FIREFLIES
#
# TOGGLE FIREFLIES
#
scoreboard players enable @a amr.aesthetics.toggle.fireflies
scoreboard players add @a amr.aesthetics.toggle.fireflies 0
scoreboard players add @a amr.aesthetics.litespawntimer 0
scoreboard players add @a[scores={amr.aesthetics.toggle.fireflies=0}] amr.aesthetics.litespawntimer 1
execute as @a[scores={amr.aesthetics.toggle.fireflies=0,amr.aesthetics.litespawntimer=20..}] at @s if predicate amr.nature:nite run function amr.nature:spawn_fireflies
scoreboard players set @a[scores={amr.aesthetics.litespawntimer=21..}] amr.aesthetics.litespawntimer 0
tellraw @a[scores={amr.aesthetics.toggle.fireflies=1}] {"text":"[Aesthetics] Fireflies Off","color":"#FFDB8F"}
scoreboard players set @a[scores={amr.aesthetics.toggle.fireflies=1}] amr.aesthetics.toggle.fireflies 2
tellraw @a[scores={amr.aesthetics.toggle.fireflies=3}] {"text":"[Aesthetics] Fireflies On","color":"#95DC65"}
scoreboard players set @a[scores={amr.aesthetics.toggle.fireflies=3..}] amr.aesthetics.toggle.fireflies 0
#
# FIREFLY FUNCTIONALITY
#
execute as @e[tag=amr.ae.firespread] at @s if block ~ ~-1 ~ grass_block run function amr.nature:fireflies
scoreboard players remove @e[tag=amr.ae.firespread] amr.aesthetics.litespawntimer 1
kill @e[tag=amr.ae.firespread,scores={amr.aesthetics.litespawntimer=..0}]

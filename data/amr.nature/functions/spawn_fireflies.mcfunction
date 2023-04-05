execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["amr.ae.firespread","smithed.entity","smithed.strict"]}
execute at @s run scoreboard players set @e[tag=amr.ae.firespread,distance=0..2] amr.aesthetics.litespawntimer 101
execute at @s run spreadplayers ~ ~ 6 9 false @e[scores={amr.aesthetics.litespawntimer=101},distance=0..5,tag=amr.ae.firespread]

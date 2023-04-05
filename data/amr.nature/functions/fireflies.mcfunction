execute as @s at @s run summon minecraft:experience_orb ~ ~1.5 ~ {NoGravity:1b,Age:5999}
execute as @s at @s run particle minecraft:electric_spark ~ ~1.5 ~ 1 0.5 1 0.005 1
execute as @s[scores={amr.aesthetics.litespawntimer=50}] at @s run playsound minecraft:block.amethyst_block.chime ambient @a[distance=0..5] ~ ~ ~ 10 0.1
execute as @s[scores={amr.aesthetics.litespawntimer=100}] at @s run setblock ~ ~1 ~ light[level=5]
execute as @s[scores={amr.aesthetics.litespawntimer=50}] at @s run setblock ~ ~1 ~ light[level=9]
execute as @s[scores={amr.aesthetics.litespawntimer=6}] at @s run setblock ~ ~1 ~ light[level=5]
execute as @s[scores={amr.aesthetics.litespawntimer=1..3}] at @s run fill ~3 ~3 ~3 ~-3 ~-2 ~-3 air replace light[level=5]

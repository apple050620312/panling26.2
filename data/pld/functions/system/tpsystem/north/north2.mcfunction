execute positioned ~ ~2 ~ run tellraw @p[distance=..3,scores={race=1..,tp_north2=0}] {"translate":"pl.info.tp_resisted","color":"gray"}
execute positioned ~ ~2 ~ run tellraw @p[distance=..3,scores={race=0,dragon_check=1,tp_north2=0}] {"translate":"pl.info.tp_resisted","color":"gray"}
execute positioned ~ ~2 ~ run tellraw @p[distance=..3,scores={race=0,dragon_check=0}] {"translate":"pl.info.mirrorresisted","color":"gray"}
execute positioned ~ ~2 ~ run tp @p[distance=..3,scores={tp_north2=1}] -24 48 -922 0 0
scoreboard players add #system pvp3_save_count 1
scoreboard players set #system pvp3_next_save 0
tellraw @a[scores={inpvp=1}] {"translate":"pl.info.save_yao"}
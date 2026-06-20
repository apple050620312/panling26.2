execute as @s[tag=wood_line_main] at @s run function pld:system/zf/shifang/main/refined/wood/5ticks/main
execute as @s[tag=!wood_line_main,scores={zf_wood_line_id=0..}] at @s run function pld:system/zf/shifang/main/refined/wood/5ticks/line_check

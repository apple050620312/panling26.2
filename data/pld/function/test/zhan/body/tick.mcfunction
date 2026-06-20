scoreboard players remove @s[scores={test_bodytick=1..}] test_bodytick 1
execute as @s[scores={test_bodycheck=1..,test_bodytick=1..}] run function pld:test/zhan/body/check
execute as @s[scores={test_bodytick=0},x=2930,y=27,z=-197,distance=..20] run function pld:test/zhan/body/out

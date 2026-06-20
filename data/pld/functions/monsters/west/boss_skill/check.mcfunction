#为最近的一个焦骨战士移除无敌
execute at @s as @e[type=wither_skeleton,sort=nearest,limit=1] run function pld:monsters/west/boss_skill/main
#重置进度
advancement revoke @s only pld:system/boss_skill/wither_skeleton
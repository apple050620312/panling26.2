
#清理不应该存在的实体
execute as @s[type=drowned,tag=!panling] run function pld:system/tp_and_kill_self
execute as @s[type=zombie,tag=!panling] run function pld:system/tp_and_kill_self


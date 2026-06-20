tellraw @s {"translate": "pl.info.re_kill_rabbit1"}
scoreboard players set @s ex_ren 2
tellraw @s {"translate": "pl.info.re_kill_rabbit2"}
tellraw @s {"translate": "pl.info.re_kill_rabbit3"}
tp @s[scores={ex_ren=2}] 843 32 -55
playsound entity.wither.ambient ambient @s 843 32 -55
advancement grant @s only pld:exploration/side_ren
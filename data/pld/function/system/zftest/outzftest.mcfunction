#tellraw @s[scores={element_time=1401..}] {"translate": "pl.info.laojun_df_failure2"}
#tellraw @s[scores={element_time=1000..1400}] {"translate": "pl.info.laojun_df_failure3"}
#tellraw @s[scores={element_time=600..999}] {"translate": "pl.info.laojun_df_failure2"}
#tellraw @s[scores={element_time=1..599}] {"translate": "pl.info.laojun_df_success"}
#scoreboard players set @s[scores={element_time=1..599}] element_cannon 1

#异步
tellraw @s[scores={element_time=351..}] {"translate": "pl.info.laojun_df_failure2"}
tellraw @s[scores={element_time=250..350}] {"translate": "pl.info.laojun_df_failure3"}
tellraw @s[scores={element_time=150..249}] {"translate": "pl.info.laojun_df_failure2"}
tellraw @s[scores={element_time=1..149}] {"translate": "pl.info.laojun_df_success"}
scoreboard players set @s[scores={element_time=1..149}] element_cannon 1


tellraw @s[scores={element_time=0}] {"translate": "pl.info.laojun_df_failure4"}
tellraw @s[scores={element_cannon=0}] {"translate": "pl.info.laojun_df_failure"}
tp @s[scores={element_cannon=0}] 333 34 -718 -90 0
tp @s[scores={element_cannon=1}] 1380 76 436 90 0
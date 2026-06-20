clear @s blaze_rod[custom_data={id:"panling:zf_fire_mark"}]
#effect give @s instant_damage 1 31
scoreboard players add @s zf_fire_tick 25

particle lava ~ ~2.5 ~ 0 0 0 0 5

advancement revoke @s only pld:system/zf/refined_fire/fire_mark
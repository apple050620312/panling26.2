#倒计时
#倒数五分钟
#execute if score #system pvpevent_tick matches 6000 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_5min"}
#倒数一分钟
#execute if score #system pvpevent_tick matches 1200 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_1min"}
#倒数十秒
#execute if score #system pvpevent_tick matches 200 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_10s"}
#execute if score #system pvpevent_tick matches 180 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_9s"}
#execute if score #system pvpevent_tick matches 160 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_8s"}
#execute if score #system pvpevent_tick matches 140 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_7s"}
#execute if score #system pvpevent_tick matches 120 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_6s"}
#execute if score #system pvpevent_tick matches 100 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_5s"}
#execute if score #system pvpevent_tick matches 80 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_4s"}
#execute if score #system pvpevent_tick matches 60 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_3s"}
#execute if score #system pvpevent_tick matches 40 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_2s"}
#execute if score #system pvpevent_tick matches 20 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_1s"}
#execute if score #system pvpevent_tick matches 0 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_finish"}

#异步
#倒数五分钟
execute if score #system pvpevent_tick matches 1500 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_5min"}
#倒数一分钟
execute if score #system pvpevent_tick matches 300 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_1min"}
#倒数十秒
execute if score #system pvpevent_tick matches 50 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_10s"}
execute if score #system pvpevent_tick matches 45 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_9s"}
execute if score #system pvpevent_tick matches 40 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_8s"}
execute if score #system pvpevent_tick matches 35 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_7s"}
execute if score #system pvpevent_tick matches 30 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_6s"}
execute if score #system pvpevent_tick matches 25 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_5s"}
execute if score #system pvpevent_tick matches 20 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_4s"}
execute if score #system pvpevent_tick matches 15 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_3s"}
execute if score #system pvpevent_tick matches 10 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_2s"}
execute if score #system pvpevent_tick matches 5 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_1s"}
execute if score #system pvpevent_tick matches 0 run title @a[scores={inpvp=1}] title {"translate":"pl.info.title_pvp_finish"}

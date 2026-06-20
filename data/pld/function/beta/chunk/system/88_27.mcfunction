#区块强加载
forceload add 1418 435 1413 449
forceload add 1384 489 1410 475
forceload add 1430 504 1430 512
#要做的事
setblock 1418 37 435 air
setblock 1413 37 449 air
fill 1417 37 447 1422 37 447 air
setblock 1410 37 475 air
fill 1413 37 479 1383 37 491 air
fill 1430 37 512 1429 37 498 air
#区块卸载
forceload remove 1418 435 1413 449
forceload remove 1384 489 1410 475
forceload remove 1430 504 1430 512
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/88_36 1t
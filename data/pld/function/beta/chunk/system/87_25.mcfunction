#区块强加载
forceload add 1394 403
forceload add 1399 390 1425 358
#要做的事
fill 1392 37 401 1400 38 403 air
setblock 1402 37 408 air
fill 1396 38 413 1396 37 413 air
fill 1425 38 358 1393 37 363 air
fill 1393 38 353 1399 37 354 air
fill 1393 38 370 1429 37 391 air
#区块卸载
forceload remove 1394 403
forceload remove 1399 390 1425 358
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/88_27 1t
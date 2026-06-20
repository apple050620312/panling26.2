#区块强加载
forceload add 1324 390 1321 368
forceload add 1333 342 1358 407
#要做的事
fill 1321 37 369 1321 37 368 air
fill 1324 37 389 1324 37 390 air
fill 1312 38 399 1312 37 399 air
fill 1358 38 407 1358 37 408 air
fill 1351 37 390 1333 40 340 air
fill 1331 37 342 1331 37 390 air
fill 1359 37 390 1359 37 354 air

#区块卸载
forceload remove 1324 390 1321 368
forceload remove 1333 342 1358 407
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/82_40 1t
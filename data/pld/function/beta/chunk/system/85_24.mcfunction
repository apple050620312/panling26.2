#区块强加载
forceload add 1383 344 1367 393
forceload add 1393 343 1437 348
forceload add 1395 333
#要做的事
fill 1361 37 390 1387 40 378 air
fill 1361 37 374 1379 40 362 air
fill 1361 37 358 1375 41 342 air
fill 1391 37 391 1391 38 338 air
fill 1401 38 333 1393 37 333 air
fill 1393 37 338 1413 38 349 air
fill 1422 37 341 1438 38 351 air
#区块卸载
forceload remove 1383 344 1367 393
forceload remove 1393 343 1437 348
forceload remove 1395 333
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/85_35 1t
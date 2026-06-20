execute unless loaded -715 99 508 run schedule function pld:beta/chunk/qiansi/-45_31/loaded 2s
execute unless loaded -713 99 522 run schedule function pld:beta/chunk/qiansi/-45_31/loaded 2s
execute if loaded -715 99 508 if loaded -713 99 522 run function pld:beta/chunk/qiansi/-45_31/next 


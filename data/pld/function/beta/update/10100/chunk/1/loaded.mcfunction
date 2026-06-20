execute unless loaded 586 33 69 run schedule function pld:beta/update/10100/chunk/1/loaded 2s
execute unless loaded 101 46 185 run schedule function pld:beta/update/10100/chunk/1/loaded 2s
execute unless loaded -710 102 523 run schedule function pld:beta/update/10100/chunk/1/loaded 2s
execute unless loaded 8 48 828 run schedule function pld:beta/update/10100/chunk/1/loaded 2s


execute if loaded 586 33 69 if loaded 101 46 185 if loaded -710 102 523 if loaded 8 48 828 run function pld:beta/update/10100/chunk/1/next
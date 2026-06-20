execute unless loaded -326 53 584 run schedule function pld:beta/chunk/south/-21_36/loaded 2s
execute unless loaded -321 53 595 run schedule function pld:beta/chunk/south/-21_36/loaded 2s
execute if loaded -326 53 584 if loaded -321 53 595 run function pld:beta/chunk/south/-21_36/next

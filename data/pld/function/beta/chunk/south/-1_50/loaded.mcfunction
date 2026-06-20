execute unless loaded 10 43 813 run schedule function pld:beta/chunk/south/-1_50/loaded 2s
execute unless loaded -15 43 805 run schedule function pld:beta/chunk/south/-1_50/loaded 2s
execute if loaded 10 43 813 if loaded -15 43 805 run function pld:beta/chunk/south/-1_50/next

#区块强加载 -24_-98 -24_-99 -24_-100
execute unless loaded -369 212 -1548 run schedule function pld:beta/chunk/final_battle/-24_-98/loaded 2s
execute unless loaded -371 207 -1565 run schedule function pld:beta/chunk/final_battle/-24_-98/loaded 2s
execute if loaded -369 212 -1548 if loaded -371 207 -1565 run function pld:beta/chunk/final_battle/-24_-98/next

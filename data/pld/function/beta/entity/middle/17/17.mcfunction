forceload add 1354 523
execute unless loaded 1354 54 523 run schedule function pld:beta/entity/middle/17/17 2s
execute if loaded 1354 54 523 run function pld:beta/entity/middle/17/next

#execute unless entity b2bbf37f-b8df-4024-b07a-52b2d26db192 run schedule function pld:beta/entity/middle/17/17 2s
#execute unless entity c122783b-3e03-4a18-bab9-f89d9430ca5b run schedule function pld:beta/entity/middle/17/17 2s
#execute unless entity 1efa3189-be82-4598-812f-5522a66a875c run schedule function pld:beta/entity/middle/17/17 2s
#execute unless entity dd1a96f0-d211-41f2-a22b-b5d94ebe3b3d run schedule function pld:beta/entity/middle/17/17 2s



#execute if entity b2bbf37f-b8df-4024-b07a-52b2d26db192 if entity c122783b-3e03-4a18-bab9-f89d9430ca5b if entity 1efa3189-be82-4598-812f-5522a66a875c if entity dd1a96f0-d211-41f2-a22b-b5d94ebe3b3d run function pld:beta/entity/middle/17/a

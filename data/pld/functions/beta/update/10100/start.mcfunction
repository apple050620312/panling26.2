tellraw @a {"translate": "pl.info.updating"}
scoreboard players set #updating int 1

forceload add 2716 -838
forceload add 2678 -834
forceload add 2665 -934
forceload add 2665 -944
data merge block 2716 71 -838 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.12.text2"}','{"text":""}','{"text":""}']}}

data merge block 2665 71 -934 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.17.text2"}','{"translate":"pl.sign.instance3.3.text3"}','{"text":""}']}}
data merge block 2678 73 -834 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance3.2.text2"}','{"translate":"pl.sign.instance3.2.text3"}','{"text":""}']}}
data merge block 2665 71 -944 {front_text:{messages:['{"translate":"pl.sign.instance.a6.text1"}','{"translate":"pl.sign.instance3.a6.text2"}','{"translate":"pl.sign.instance.a6.text3"}','{"translate":"pl.sign.instance.a6.text4"}']}}

forceload remove 2716 -838
forceload remove 2678 -834
forceload remove 2665 -934
forceload remove 2665 -944

function pld:beta/update/10100/chunk/1/pre



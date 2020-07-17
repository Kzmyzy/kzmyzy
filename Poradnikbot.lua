local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!hello' then
		message.channel:send('Witam\n-------------------------------------------\nJestem Botem Tego Discorda!\n-------------------------------------------')
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong')
	end
end)
client:on('messageCreate', function(message)
	if message.content == '!Discord' then
		message.channel:send('\n--------------------------------------------------------------------------------\nSerwer discord czyli Play The Game jest to server dla polskiego comunity graczy\n--------------------------------------------------------------------------------')
	end
end)
client:run('Bot NzMxMTQwNTI3MjkwMDU2NzY0.XwhyQQ.CcIxP5nPD6YB2oD3vi_lr0c4L-Y')
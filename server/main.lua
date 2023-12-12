RegisterNetEvent('mt-bridge:server:createLog', function(webhook, title, message)
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({
		embeds = {
			{
				title = title,
				author = {
                    name = "MT Scripts",
                    icon_url = 'https://cdn.discordapp.com/attachments/1014907105733517442/1014907163036098682/imagem_2022-05-21_155501754-removebg-preview.png',
                    url = 'https://mt-scripts.tebex.io/',
                },
				["color"] = '000000255',
				description = message,
				footer = {
					text = 'mt-scripts.tebex.io',
				},
			}
		}
	}), { ['Content-Type'] = 'application/json' })
end)
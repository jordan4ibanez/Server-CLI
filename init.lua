local server_update = 0
local path = minetest.get_worldpath()

minetest.register_globalstep(function(dtime)
	server_update = server_update + dtime
	
	--only update and take inputs every second
	if server_update >= 1 then
		--print(dump(minetest.get_server_status()))
		--print(dump(minetest.get_worldpath()))
		local file = io.open(path.."/input", "r")
		if file then
			print(file:read("*l"))
			file:close()
			os.remove(path.."/input")
		end
		
		server_update = 0
	end
end)

function Map(mode, map, command, opts)
	vim.keymap.set(mode, map, command, opts)
end

function Nmap(map, command, opts)
	Map("n", map, command, opts)
end

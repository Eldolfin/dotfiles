function random_logo() 
	-- Get a list of all files in the logo directory
	local logo_dir = vim.fn.expand("~/.config/nvim/etc/logo")
	local logo_files = vim.fn.globpath(logo_dir, "*", false, true)

	-- Pick a random file from the list
	local random_file = logo_files[math.random(#logo_files)]

	-- Read the contents of the random file
	local file_contents = io.open(random_file, "r"):read("*all")

	-- Split the file contents by newlines into a table
	local logo_lines = {}
	for line in file_contents:gmatch("[^\r\n]+") do
		table.insert(logo_lines, line)
	end
	for i=1,5 do
		table.insert(logo_lines, '')
	end

	return logo_lines
end

function random_cowsay_footer()
	-- List of sentences to choose from
	local citations = {
		{ 
			"C'est le dernier jour les enfants, on va faire un goûter...",
			"🖕ET NON 🖕",
			"-Ian Ternier"
		},
		{ 
			"Bonjour, votre fils est une teub",
			"-Ian Ternier"
		},
		{ 
			"Arrête d’être bizarre, Le Flem",
			"-Ian Ternier"
		},
		{ 
			"Je suis en mode inbaisable",
			"-Ian Ternier"
		},
		{ 
			"On dirait que t'as chié sur ta feuille",
			"-Ian Ternier"
		},
		{ 
			"Bonjour les enfants",
			"-Ian Ternier"
		},
		{ 
			"Dès qu'il ya quelqu'un d'éclatable on l'éclate",
			"-Ian Ternier"
		},
		{ 
			"D'essence je ne suis pas délégué.",
			"C'est juste une phase.",
			"Je ne suis pas né délégué.",
			"-Mathis, le faux délégué"
		},
		{ 
			"J'en ai marre des q du prof",
			"-Augustin Gloriant 🤨📸"
		},
		{ 
			"C'est dur d'avaler",
			"-Igor Potard 🤨📸",
		},
	}

	-- Pick a random sentence
	local sentence = citations[math.random(#citations)]

	return sentence
end

return {
	'glepnir/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		local db = require('dashboard')
		db.setup {
			theme = 'doom',
			config = {
				header = random_logo(),
				center = {
					{
						icon = '🕒 ',
						desc = 'Find Recent',
						desc_hl = 'String',
						key = 'b',
						action = 'Telescope oldfiles'
					},
					{
						icon = '🔎 ',
						desc = 'Live Grep',
						desc_hl = 'String',
						key = 'g',
						action = 'Telescope live_grep'
					},
					{
						icon = '🌲 ',
						desc = 'Open File Tree',
						desc_hl = 'String',
						key = 't',
						action = 'NvimTreeOpen'
					},
					{
						icon = '💻 ',
						desc = 'Open Librewolf',
						desc_hl = 'String',
						key = 'l',
						action = '!librewolf'
					},
					{
						icon = '❌ ',
						desc = 'Quit neovim',
						desc_hl = 'String',
						key = 'q',
						action = 'q'
					},
				},
				footer = random_cowsay_footer(),
			}
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

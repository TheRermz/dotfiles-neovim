return {
	"windwp/nvim-ts-autotag",
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true, -- Auto fecha tags
				enable_rename = true, -- Auto renomeia tags em par
				enable_close_on_slash = false, -- Auto fecha com />
			},
		})
	end,
}

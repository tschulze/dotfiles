return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	keys = {
		{
			"-",
			function()
				require("yazi").yazi()
			end,
			desc = "Open yazi",
		},
	},
	opts = {},
}

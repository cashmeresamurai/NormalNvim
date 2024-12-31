return {
  "lervag/vimtex",
  lazy = false, -- VimTeX soll nicht lazy geladen werden
  -- tag = "v2.15", -- optional für spezifische Version
  init = function()
    -- Grundeinstellungen
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_view_automatic = 1

    -- Compiler Einstellungen
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-pdf",
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }

    -- Weitere Einstellungen
    vim.opt_local.conceallevel = 2
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true

    -- TOC Einstellungen
    vim.g.vimtex_toc_config = {
      name = "TOC",
      layers = { "content", "todo" },
      split_width = 25,
      todo_sorted = 0,
      show_help = 1,
      show_numbers = 1,
    }
  end,
}

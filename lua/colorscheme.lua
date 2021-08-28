local nightfox = require('nightfox')
nightfox.setup({
  fox = "nordfox", 
  styles = {
    comments = "italic", 
    functions = "italic" 
  },
  colors = {
    red = "#FF000", 
    bg_alt = "#000000",
  },
  hlgroup = {
    TSPunctDelimiter = { fg = "${red}" }, 
    LspCodeLens = { bg = "#000000" },
  }
})

nightfox.load()

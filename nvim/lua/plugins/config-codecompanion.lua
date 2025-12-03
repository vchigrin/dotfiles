local cc_hacks = require("hacks.codecompanion")

require("codecompanion").setup({
  opts = {
    log_level = "DEBUG", -- or "TRACE"
  },
  adapters = {
    http = {
      eliza_deepseek_v3 = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            api_key = cc_hacks.read_token(),
            url = "https://api.eliza.yandex.net",
            chat_url = "/internal/zeliboba/communal-deepseek-v3-0324-in-yt/v1/chat/completions",
          },
          schema = {
            model = {
              default = "communal-deepseek-v3-0324-in-yt",
            },
          },
          handlers = {
            inline_output = cc_hacks.eliza_deepseek_v3_inline_output,
          },
        })
      end,
    },
  },
  strategies = {
    chat = {
      adapter = "eliza_deepseek_v3",
    },
    inline = {
      adapter = "eliza_deepseek_v3",
    },
  }
})

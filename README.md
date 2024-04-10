# Fenbox

- I was unhappy with other Gruvbox implementations.
- This one has higher parity with other IDE Gruvbox themes, and is made for
  myself.
- Feel free to use it if you'd like.

## Setup

### Using lazy.nvim

```lua
return {
    {
        "dfendr/fenbox",
        -- branch = "sandbox",
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.o.termguicolors = false
            vim.g.fenbox_background_color = "dark"
            vim.g.fenbox_telescope_theme = false
            vim.g.fenbox_transparent_mode = false
            vim.g.fenbox_comment_style = { "italic" }
            vim.g.fenbox_function_style = { "bold" }
            vim.g.fenbox_keyword_style = "NONE"
            vim.g.fenbox_use_gruvboxbaby_palette = false

            local colorscheme = "fenbox"
            local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
            if not status_ok then
                vim.notify("colorscheme " .. colorscheme .. " not found!")
                return
            end
        end,
    },
```

## 🌟 Showcase

> TODO: (add language examples)

<details>
<summary>Which-Key provides easy reminders for more complex keybinds</summary>
  <img width="700" alt="Editor showing commands, in WhichKey popup" src="https://i.imgur.com/44QPgnt.png">
</details>

<details>
<summary>Example: Editing an R file, with R REPL in Toggleable Terminal</summary>
  <img width="700" alt="Example: Editing an R file, with R Repl in Toggleable Terminal, Explorer Tree in Left Panel" src="https://i.imgur.com/PMvsZQJ.png">
</details>

<details>
<summary>Example: LSP inspections</summary>
  <img width="700" alt="Examining the documentation for .iter() in Rust" src="https://i.imgur.com/ZK296f2.png">
</details>

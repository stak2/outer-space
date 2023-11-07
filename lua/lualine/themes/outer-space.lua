local colors = {
    bg = "#182024",
    float = "#2d3539",
    sel = "#434f56",
    ui = "#70868f",
    com = "#8d9da5",
    fg = "#d4dadd",
    red = "#dd8888";
    green = "#b3dd88";
    blue = "#889ddd";
    yellow = "#d9c68c";
    cyan = "#90d5be";
    magenta = "#9c85e0";
}

return {
    normal = {
        a = { bg = colors.com, fg = colors.bg, gui = "bold" },
        b = { fg = colors.com, bg = colors.bg },
        c = { bg = colors.bg }
    },
    insert = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { fg = colors.blue, bg = colors.bg },
        c = { bg = colors.bg }
    },
    visual = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { fg = colors.yellow, bg = colors.bg },
        c = { bg = colors.bg }
    },
    replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { fg = colors.red, bg = colors.bg },
        c = { bg = colors.bg }
    },
    command = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { fg = colors.green, bg = colors.bg },
        c = { bg = colors.bg }
    },
    inactive = {
        a = { fg = colors.com, bg = colors.bg, gui = "bold" },
        b = { fg = colors.com, bg = colors.bg },
        c = { bg = colors.bg }
    },
}

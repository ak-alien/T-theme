#!/bin/bash
#Developer: Aman Khan
#Github   : https://github.com/ak-alien

declare -A THEMES

THEMES["Modified Dracula"]="foreground=#f8f8f2
cursor=#57c72e
background=#282a36
color0=#000000
color8=#4d4d4d
color1=#ff5555
color9=#ff6e67
color2=#50fa7b
color10=#5af78e
color3=#f1fa8c
color11=#f4f99d
color4=#caa9fa
color12=#caa9fa
color5=#ff79c6
color13=#ff92d0
color6=#8be9fd
color14=#9aedfe
color7=#bfbfbf
color15=#e6e6e6"

THEMES["Solarized Dark"]="background=#002b36
foreground=#839496
color0=#073642
color1=#dc322f
color2=#859900
color3=#b58900
color4=#268bd2
color5=#d33682
color6=#2aa198
color7=#eee8d5
color8=#002b36
color9=#cb4b16
color10=#586e75
color11=#657b83
color12=#839496
color13=#6c71c4
color14=#93a1a1
color15=#fdf6e3"

THEMES["Solarized Light"]="background=#fdf6e3
foreground=#657b83
color0=#073642
color1=#dc322f
color2=#859900
color3=#b58900
color4=#268bd2
color5=#d33682
color6=#2aa198
color7=#eee8d5
color8=#002b36
color9=#cb4b16
color10=#586e75
color11=#657b83
color12=#839496
color13=#6c71c4
color14=#93a1a1
color15=#fdf6e3"

THEMES["Monokai"]="background=#272822
foreground=#f8f8f2
color0=#272822
color1=#f92672
color2=#a6e22e
color3=#f4bf75
color4=#66d9ef
color5=#ae81ff
color6=#a1efe4
color7=#f8f8f2
color8=#75715e
color9=#f92672
color10=#a6e22e
color11=#f4bf75
color12=#66d9ef
color13=#ae81ff
color14=#a1efe4
color15=#f9f8f5"

THEMES["Nord"]="background=#2e3440
foreground=#d8dee9
color0=#3b4252
color1=#bf616a
color2=#a3be8c
color3=#ebcb8b
color4=#81a1c1
color5=#b48ead
color6=#88c0d0
color7=#e5e9f0
color8=#4c566a
color9=#bf616a
color10=#a3be8c
color11=#ebcb8b
color12=#81a1c1
color13=#b48ead
color14=#8fbcbb
color15=#eceff4"

THEMES["One Dark"]="background=#282c34
foreground=#abb2bf
color0=#282c34
color1=#e06c75
color2=#98c379
color3=#e5c07b
color4=#61afef
color5=#c678dd
color6=#56b6c2
color7=#dcdfe4
color8=#5c6370
color9=#e06c75
color10=#98c379
color11=#e5c07b
color12=#61afef
color13=#c678dd
color14=#56b6c2
color15=#ffffff"

THEMES["Gruvbox Dark"]="background=#282828
foreground=#ebdbb2
color0=#282828
color1=#cc241d
color2=#98971a
color3=#d79921
color4=#458588
color5=#b16286
color6=#689d6a
color7=#a89984
color8=#928374
color9=#fb4934
color10=#b8bb26
color11=#fabd2f
color12=#83a598
color13=#d3869b
color14=#8ec07c
color15=#ebdbb2"

THEMES["Material"]="background=#263238
foreground=#eeffff
color0=#000000
color1=#ff5370
color2=#c3e88d
color3=#ffcb6b
color4=#82aaff
color5=#c792ea
color6=#89ddff
color7=#ffffff
color8=#546e7a
color9=#ff5370
color10=#c3e88d
color11=#ffcb6b
color12=#82aaff
color13=#c792ea
color14=#89ddff
color15=#ffffff"

THEMES["Palenight"]="background=#292d3e
foreground=#a6accd
color0=#292d3e
color1=#f07178
color2=#c3e88d
color3=#ffcb6b
color4=#82aaff
color5=#c792ea
color6=#89ddff
color7=#d0d0d0
color8=#434758
color9=#ff8b92
color10=#ddffa7
color11=#ffe585
color12=#9cc4ff
color13=#e1acff
color14=#a3f7ff
color15=#ffffff"

THEMES["Horizon Dark"]="background=#1c1e26
foreground=#e0e0e0
color0=#16161c
color1=#e95678
color2=#29d398
color3=#fab795
color4=#26bbd9
color5=#ee64ac
color6=#59e1e3
color7=#d5d8da
color8=#5b5858
color9=#ec6a88
color10=#3fdaa4
color11=#fbc3a7
color12=#3fc4de
color13=#f075b5
color14=#6be4e6
color15=#d5d8da"

THEMES["Default"]="background=#000000
foreground=#ffffff
color0=#000000
color1=#ff0000
color2=#33ff00
color3=#ff0099
color4=#0066ff
color5=#cc00ff
color6=#00ffff
color7=#d0d0d0
color8=#808080
color9=#ff0000
color10=#33ff00
color11=#ff0099
color12=#0066ff
color13=#cc00ff
color14=#00ffff
color15=#ffffff"

apply_theme() {
    local theme_content="$1"
    mkdir -p ~/.termux
    echo "$theme_content" > ~/.termux/colors.properties
    termux-reload-settings
}

menu() {
    clear
    echo
    echo "    ████████╗██╗  ██╗███████╗███╗   ███╗███████╗"
    echo "    ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝"
    echo "       ██║   ███████║█████╗  ██╔████╔██║█████╗  "
    echo "       ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  "
    echo "       ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗"
    echo "       ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝"
                                            
    echo " =================================================="
    echo "    Developed by: Aman Khan"
    echo "    Github: https://github.com/ak-alien"
    echo "    Telegram: https://t.me/ak_xlien"
    echo " =================================================="
    echo ""
    local i=1
    for key in "${!THEMES[@]}"; do
        echo "  [$i] $key"
        ((i++))
    done
    echo "  [0] Exit"
    echo ""
    read -p "Select a theme number: " choice

    if [ "$choice" == "0" ]; then
        echo "Exiting."
        exit 0
    fi

    local selected_key=""
    local j=1
    for key in "${!THEMES[@]}"; do
        if [ "$choice" == "$j" ]; then
            selected_key="$key"
            break
        fi
        ((j++))
    done

    if [ -n "$selected_key" ]; then
        echo "Applying theme: $selected_key"
        apply_theme "${THEMES[$selected_key]}"
        echo "Theme applied successfully."
        sleep 2
        menu
    else
        echo "Invalid choice."
    fi
}

menu

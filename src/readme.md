# Nerd Fonts

This is font-patcher python script (and required source files) from a Nerd Fonts release.

## Running

* To execute run: `fontforge --script ./font-patcher --complete <YOUR FONT FILE>`
* For more CLI options and help: `fontforge --script ./font-patcher --help`

- `Example` that I use to forge my own `nerd-fonts` family (e.g. RobotoMono Nerd Font, VictorMono Nerd Font ...etc.)
```shell
fontforge --script ./font-patcher --complete source_font/iosevka-ss04.ttc
./font_hammer.sh ./source_font/Space_Mono ./output_font/SpaceMonoNerdFont
```

## Further info

For more information see:
- [Nerd Fonts Batcher](https://github.com/ryanoasis/nerd-fonts/)
- [nerd-font repository](https://github.com/ryanoasis/nerd-fonts/releases/latest/)

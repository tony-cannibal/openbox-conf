#!/usr/bin/bash


STYLE="forest-bitmap"

ddir="$HOME/.config/openbox/rofi/dialogs"

rofi_command="rofi -theme $HOME/.config/openbox/rofi/$STYLE/launcher.rasi"

uptime=$(uptime -p | sed -e 's/up //g')


# options="Adapta\nBeach\nBeach-Bit\nForest\nForest-Bit\nEleven-Dark\nSlime\nDefault\nKeyboards\nManhattan\nMountain\nSpark\nKiss\nLandscape\nNordic\nTealize\nWave"
options="Adaptive\nBeach-Bitmap\nBeach\nBouquet\nDefault\nEasy\nEleven-Dark\nEleven\nForest-Bitmap\nForest\nHack\nKeyboards\nKiss\nLandscape\nManhattan\nMountain\nNordic\nSlime\nSpark\nTealize\nWave"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 0)"
case $chosen in
    Adaptive)
      ~/.config/openbox/scripts/Adaptive.sh &
        ;;
    Beach-Bitmap)
      ~/.config/openbox/scripts/Beach-Bitmap.sh &
        ;;
    Beach)
      ~/.config/openbox/scripts/Beach.sh &
        ;;
    Bouquet)
      ~/.config/openbox/scripts/Bouquet.sh &
        ;;
    Default)
      ~/.config/openbox/scripts/Default.sh &
        ;;
    Easy)
      ~/.config/openbox/scripts/Easy.sh &
        ;;
    Eleven-Dark)
      ~/.config/openbox/scripts/Eleven-Dark.sh &
        ;;
    Eleven)
      ~/.config/openbox/scripts/Eleven.sh &
        ;;
    Forest-Bitmap)
      ~/.config/openbox/scripts/Forest-Bitmap.sh &
        ;;
    Forest)
      ~/.config/openbox/scripts/Forest.sh &
        ;;
    Hack)
      ~/.config/openbox/scripts/Hack.sh &
        ;;
    Keyboards)
      ~/.config/openbox/scripts/Keyboards.sh &
        ;;
    Kiss)
      ~/.config/openbox/scripts/Kiss.sh &
        ;;
    Landscape)
      ~/.config/openbox/scripts/Landscape.sh &
        ;;
    Manhattan)
      ~/.config/openbox/scripts/Manhattan.sh &
        ;;
    Mountain)
      ~/.config/openbox/scripts/Mountain.sh &
        ;;
    Nordic)
      ~/.config/openbox/scripts/Nordic.sh &
        ;;
    Slime)
      ~/.config/openbox/scripts/Slime.sh &
        ;;
    Spark)
      ~/.config/openbox/scripts/Spark.sh &
        ;;
    Tealize)
      ~/.config/openbox/scripts/Tealize.sh &
        ;;
    Wave)
      ~/.config/openbox/scripts/Wave.sh &
        ;;
esac


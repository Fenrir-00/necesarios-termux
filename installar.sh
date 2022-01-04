#!/bin/bash/

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#pkg install tsu -y
#pkg install figlet -y
#pkg install toilet -y
#pkg install cowsay -y
#pkg install nano -y
#pkg install ruby -y
#gem install lolcat
#pkg install mpv -y
function banner3(){
echo -e "${blueColour}"
echo " ### ###  ### ###  ###  ##  ### ##   ### ##     ####   ### ##    ## ##    ## ## ";
echo "  ##  ##   ##  ##    ## ##   ##  ##   ##  ##     ##     ##  ##  ##   ##  ##   ## ";
echo "  ##       ##       # ## #   ##  ##   ##  ##     ##     ##  ##  ##   ##  ##   ## ";
echo "  ## ##    ## ##    ## ##    ## ##    ## ##      ##     ## ##   ##   ##  ##   ## ";
echo "  ##       ##       ##  ##   ## ##    ## ##      ##     ## ##   ##   ##  ##   ## ";
echo "  ##       ##  ##   ##  ##   ##  ##   ##  ##     ##     ##  ##  ##   ##  ##   ## ";
echo " ####     ### ###  ###  ##  #### ##  #### ##    ####   #### ##  ## ##    ## ## ";
echo ""
}
function banner2(){
echo -e "${blueColour}"
echo "        ffffffffffffffff                                                              iiii #"
echo "       f::::::::::::::::f                                                            i::::i #"
echo "      f::::::::::::::::::f                                                            iiii #"
echo "      f::::::fffffff:::::f #"
echo "      f:::::f       ffffff    eeeeeeeeeeee    nnnn  nnnnnnnn    rrrrr   rrrrrrrrr   iiiiiii rrrrr   rrrrrrrrr #"
echo "      f:::::f               ee::::::::::::ee  n:::nn::::::::nn  r::::rrr:::::::::r  i:::::i r::::rrr:::::::::r #"
echo "     f:::::::ffffff        e::::::eeeee:::::een::::::::::::::nn r:::::::::::::::::r  i::::i r:::::::::::::::::r #"
echo "     f::::::::::::f       e::::::e     e:::::enn:::::::::::::::nrr::::::rrrrr::::::r i::::i rr::::::rrrrr::::::r #"
echo "     f::::::::::::f       e:::::::eeeee::::::e  n:::::nnnn:::::n r:::::r     r:::::r i::::i  r:::::r     r:::::r #"
echo "     f:::::::ffffff       e:::::::::::::::::e   n::::n    n::::n r:::::r     rrrrrrr i::::i  r:::::r     rrrrrrr #"
echo "      f:::::f             e::::::eeeeeeeeeee    n::::n    n::::n r:::::r             i::::i  r:::::r #"
echo "      f:::::f             e:::::::e             n::::n    n::::n r:::::r             i::::i  r:::::r #"
echo "     f:::::::f            e::::::::e            n::::n    n::::n r:::::r            i::::::i r:::::r #"
echo "     f:::::::f             e::::::::eeeeeeee    n::::n    n::::n r:::::r            i::::::i r:::::r #"
echo "     f:::::::f              ee:::::::::::::e    n::::n    n::::n r:::::r            i::::::i r:::::r #"
echo "     fffffffff                eeeeeeeeeeeeee    nnnnnn    nnnnnn rrrrrrr            iiiiiiii rrrrrrr #"
echo -e "${endColour}"
}
clear
banner3 
#insatalacion
if which tsu  &>/dev/null; then
sleep 1
echo -e "${greenColour}Tsu ...................................................[✓] Instalado ${endColour}"
else
pkg install tsu -y
fi

if which figlet  &>/dev/null; then
sleep 1
echo -e "${greenColour}figlet ...................................................[✓] Instalado ${endColour}"
else
pkg install figlet -y
fi

if which toilet  &>/dev/null; then
sleep 1
echo -e "${greenColour}toilet ...................................................[✓] Instalado ${endColour}"
else
pkg install toilet -y
fi

if which cowsay  &>/dev/null; then
sleep 1
echo -e "${greenColour}cowsay ...................................................[✓] Instalado ${endColour}"
else
pkg install cowsay -y
fi

if which nano  &>/dev/null; then
sleep 1
echo -e "${greenColour}nano ...................................................[✓] Instalado ${endColour}"
else
pkg install nano -y
fi

if which ruby  &>/dev/null; then
sleep 1
echo -e "${greenColour}ruby ...................................................[✓] Instalado ${endColour}"
else
pkg install ruby -y
fi

if which lolcat  &>/dev/null; then
sleep 1
echo -e "${greenColour}lolcat ...................................................[✓] Instalado ${endColour}"
else
gem install lolcat 
fi

if which mpv  &>/dev/null; then
sleep 1
echo -e "${greenColour}mpv ...................................................[✓] Instalado ${endColour}"
sleep 3
else
pkg install mpv -y
fi

#menu
function menu1(){
clear
echo ""
banner3
echo ""
echo -e "${greenColour}                             *************** EMPEZAR TERMUX *************** ${endColour}"
echo ""
echo ""
    PS3=""
    opts=( "actualizar" "repositorio" "botones" "banner" "almacenamiento" "salir" )
    select opt in "${opts[@]}"
    do
        case $opt in
            "actualizar")

                pkg update
                pkg upgrade
                menu1
                ;;
            "botones")
                bot
                 ;;
             "banner")
               banner1
               ;;
            "almacenamiento")
              echo "almace"
               termux-setup-storage
               menu1
               ;;
               "repositorio")
                 repo
                ;;
            "salir")
               salir
                ;;
               *)
clear
echo ""
banner3
echo ""
echo -e "${redColour}                           *************** OPCION INCORRECTA *************** ${endColour}"
sleep 3
menu1
;;
        esac

    done
}
#menu banner
function banner1(){
clear
echo ""
banner3
echo ""
echo -e "${greenColour}                             *************** EMPEZAR TERMUX *************** ${endColour}"
echo ""
echo ""
    PS3=""
    opts=( "ver banner" "instalar banner" "salir" )
    select opt in "${opts[@]}"
    do
        case $opt in
            "ver banner")
                verbanner
                ;;
            "instalar banner")
                ponerbanner
                 ;;
            "salir")
               salir
                ;;
               *)
clear
echo ""
banner3
echo ""
echo -e "${redColour}                           *************** OPCION INCORRECTA *************** ${endColour}"
sleep 3
menu1
;;
        esac

    done
}
function verbanner(){
clear
echo ""
banner3
echo ""
echo -e "${greenColour}                          *************** QUE BANNER QUEIRES VER *************** ${endColour}"
echo ""
echo ""
    PS3=""
    opts=( "cazafantasmas" "ojos" "dragon" "beso" "queso" "demonio" "camara" "leche" "monigote" "tigre" "pavo" "tortuga"  "salir" )
    select opt in "${opts[@]}"
    do
        case $opt in
            "cazafantasmas")
                cowsay -f ghostbusters "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                ;;
            "ojos")
                cowsay -f eyes "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
              "dragon")
                cowsay -f dragon "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
               "beso")
                cowsay -f kiss "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "queso")
                cowsay -f cheese "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "demonio")
                cowsay -f daemon "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "camara")
                cowsay -f kosh "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "leche")
                cowsay -f milk "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "monigote")
                cowsay -f ren "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "tigre")
                cowsay -f meow "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                 "pavo")
                cowsay -f turkey "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                "tortuga")
                cowsay -f turtle "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
                 "ojos")
                cowsay -f eyes "BIENVENIDO A TERMUX" |lolcat
                sleep 4
                verbanner
                 ;;
            "salir")
               salir
                ;;
               *)
clear
echo ""
banner3
echo ""
echo -e "${redColour}                           *************** OPCION INCORRECTA *************** ${endColour}"
sleep 3
menu1
;;
        esac

    done
}
function ponerbanner(){
clear
echo ""
banner3
echo ""
echo -e "${greenColour}                          *************** QUE BANNER QUEIRES PONER *************** ${endColour}"
echo ""
echo ""
    PS3=""
    opts=( "cazafantasmas" "ojos" "dragon" "beso" "queso" "demonio" "camara" "leche" "monigote" "tigre" "pavo" "tortuga"  "salir" )
    select opt in "${opts[@]}"
    do
        case $opt in
            "cazafantasmas")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f ghostbusters "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                ;;
            "ojos")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc           
                echo 'cowsay -f eyes "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
              "dragon")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f dragon "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
               "beso")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f kiss "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "queso")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f cheese "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "demonio")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc 
                echo 'cowsay -f daemon "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "camara")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f kosh "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "leche")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f milk "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "monigote")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f ren "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "tigre")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f meow "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                 "pavo")
                 echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f turkey "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
                "tortuga")
                echo "clear" >/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'cowsay -f turtle "BIENVENIDO A TERMUX" |lolcat' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                echo 'PS1=" $ "' >>/data/data/com.termux/files/usr/etc/bash.bashrc
                clear
                banner3
                echo""
                echo -e "${greenColour}                        ***************  BANNER INSTALADO  *************** ${endColour}"
                 ;;
               "salir")
               salir
                ;;
               *)
clear
echo ""
banner3
echo ""
echo -e "${redColour}                           *************** OPCION INCORRECTA *************** ${endColour}"
sleep 3
menu1
;;
        esac

    done
}

#funciones
function  repo(){
clear
echo ""
banner3
echo ""
echo -e "${redColour}                               *************** ACTENCION *************** ${endColour}"
echo ""
echo -e "${greenColour}                  ************ PRIMERA PESTAÑA SELECCIONAR TODAS LAS PESTAÑAS ****************${endColour}"
echo ""
echo -e "${greenColour}                       *************** SEGUNDA PESTAÑA SELECIONA LA 2 *************** ${endColour}"
sleep 7
termux-change-repo
menu1
}

function bot(){
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout
clear
menu1
}

function salir(){
clear
echo ""
banner3
echo ""
echo -e "${greenColour}                            ***************    SALIENDO    *************** ${endColour}"
sleep 3
clear
exit
}












menu1

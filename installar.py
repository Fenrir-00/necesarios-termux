import sys
from sys import *
import os as termux
from os import *
import time 
class color:
    morado = '\033[95m'
    blanco = '\033[97m'
    cyan = '\033[96m'
    azul  = '\033[94m'
    verde = '\033[92m'
    amarillo = '\033[93m'
    rojo = '\033[91m'
    fin = '\033[0m'

def banner():
 termux.system("clear")
 print(f"{color.azul}")
 print( """       ##############################""")
 print( """       # ____ ____ _  _ ____ _ ____ #""")
 print( """       # |___ |___ |\ | |__/ | |__/ #""")
 print( """       # |    |___ | \| |  \ | |  \ #""")
 print( """       #                            #""")
 print( """       #          AHORCADO          #""")
 print( """       ##############################""")
 print(f"{color.fin}")




def instalar():
 termux.system("pkg update")
 termux.system(" pkg upgra")
 termux.system("apt install git")
 termux.system("pkg install nmap")
 termux.system("pkg install python")
 termux.system("apt install wget")
 termux.system("apt install php")
 termux.system("apt install python2")
 termux.system(" apt install git")
 termux.system("apt install curl"
 termux.system(" pip install --upgrade pip")
 termux.system("pip2 install --upgrade pip")
 termux.system("pip install threaded")
 termux.system("pip install requests")
 termux.system(" pip install random")

def botones():
 termux.system(" mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout")


def repo():
 print(f"{color.cyan}************ PRIMERA PESTAÑA SELECCIONAR TODAS LAS PESTAÑAS ********************")
 pritn(f"****************** SEGUNDA PESTAÑA SELECIONA LA 3 ******************************{color.fin}")
 time.sleep(6)
 termux.system("termux-change-repo")
def storage():
 termux.system("termux-setup-storage")
banner()
instalar()
botones()
repo()

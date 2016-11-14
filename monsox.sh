# programme du geulaton 2 bash à lancer photo.sh et monsox.sh
# la commande sox ecrit le son issu du micro
# dans un fichier record.flac
# l'extension silence suprime de ce fichier
# les silences.
# Si le fichier n'a pas une longueur nulle
# Cela declenche la prise de vue
# via la commande streamer
i=1
cpt=0
while ((i=1))
do
sox -t alsa default ./record.flac silence 1 0.1 1 25% 0.1 0.3 25%
sleep 5
rm record.flac
touch record.flac

done

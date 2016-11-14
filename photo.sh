# programme du geulaton 2 bash à lancer photo.sh et monsox.sh
# la commande sox ecrit le son issu du micro
# dans un fichier record.flac
# l'extension silence suprime de ce fichier
# les silences.
# Si le fichier a une longueur > 100
# Cela declenche la prise de vue
# via la commande streamer
i=1
cpt=0
while ((i=1))
do
taillefic=$(du  record.flac | cut -f1)
if (($taillefic > 100))
	then
		killall sox
		rm record.flac
		touch record.flac
		((cpt=$cpt+1))
		NomFic=$cpt".jpeg"
		echo $NomFic
		echo "cheese"
		streamer -o $NomFic -s 960x720
		sleep 1
fi
done

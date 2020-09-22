#/bin/bash

MOIS=$1

case $1 in
	1)
		echo "Janvier"
		;;
	2)
		echo "Février"
		;;
	3)
		echo "Mars"
		;;
	4)
		echo "Avril"
		;;
	5)
		echo "Mai"
		;;
	6)
		echo "Juin"
		;;
	7)
		echo "Juillet"
		;;
	8)
		echo "Août"
		;;
	9)
		echo "Septembre"
		;;
	10)
		echo "Octobre"
		;;
	11)
		echo "Novembre"
		;;
	12)
		echo "Décembre"
		;;
	*)
		echo "Révise tes classisques !"
		;;
esac

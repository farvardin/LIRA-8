

help()
{
printf "Type 'run' or 'backup' \n" 
}

backup()
{
	printf "%s" "Enter name for this parameter: "
	read PARANAME
	cp parameters.txt parameters_${PARANAME}_`date +%Y-%m-%d_%Hh%M`.txt
	printf "\n Current parameters saved as parameters_${PARANAME}_`date +%Y-%m-%d_%Hh%M`.txt \n"
}	
	

run()
{
	puredata _LIRA-8.pd
}


if [ $# -eq 0 ]
then 
	help
fi


if [ $# -eq 1 ]
	then 
		if [ $1 == 'run' ]
			then
				run
		else
			if [ $1 == 'backup' ]
				then
					backup
		fi
		fi
fi

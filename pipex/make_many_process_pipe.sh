#!/bin/bash

function print_manycat()
{
	i=0
	# while [ $((i+2)) -le $1 ]
	while [ $((i+2)) -le $1 ]
	do
		echo -n "cat "
		i=$((i+1))
	done
}

function print_shellscript()
{
	echo "#!/bin/bash"
	echo
	echo -n "./pipex infile "
	print_manycat $1
	echo -n "cat pipe.log"
}

#### Main script ####
FILENAME=${1}_pipe.sh

print_shellscript $1 > $FILENAME
chmod +x $FILENAME
#### Main script ####

num_re='^-?[0-9]+$'
pos_re='^[1-9]+[0-9]*$'
if ! [[ $1 =~ $num_re  && $2 =~ $num_re ]]; then
	echo "Invalid Input"
	exit 1
fi
if ! [[ $1 =~ $pos_re && $2 =~ $pos_re ]]; then
	echo "Input must be greater than 0"
	exit 1
fi

row=$1
col=$2

for i in $(seq $row); do
    for j in $(seq $col); do
		mul=`expr $i \* $j`
        echo -n "$i*$j=$mul	"
    done
	echo "" # newline
done
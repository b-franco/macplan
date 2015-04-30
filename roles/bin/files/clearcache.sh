red='\033[0;31m'
NC='\033[0m'

host=false
user=false

if [ "$#" -lt 1 ]; then
    echo -e "${red}Geen project gegeven${NC}"
    exit
fi

if [ "$1" == "brouwland" ]; then
	host='brouwland-001.yappa.openminds.be'
	user='brouwland'
elif [ "$1" == "mamzel" ]; then
	host='mamzel-001.yappa.openminds.be'
	user='mamzel'
else
	echo -e "${red}Project niet gevonden${NC}"
	exit
fi

ssh "$user@$host" 'sudo /etc/init.d/php5-fpm restart'
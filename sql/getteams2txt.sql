SELECT name 
INTO OUTFILE '/home/tarryc/Development/daredevilducks/documents/teamnames.txt'
FIELDS TERMINATED BY '\n'
FROM teamstbl;

SELECT name FROM teamstbl;

mysql -u tarryc -p -e "SELECT name FROM teamstbl" ddd > '/home/tarryc/Development/daredevilducks/documents/teamnames.txt'

mysql -u tarryc -p -e "SELECT name FROM teamstbl" ddd > 'teamnames.txt'

mysql -u tarryc -p -e "SELECT network FROM gamenetworktbl" ddd > 'networknames.txt'

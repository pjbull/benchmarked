
for (( year = 1946; year > 1945; year-- )); do
	file=scotus$year.xml.gz
	echo $file
	curl -L -o $file https://www.courtlistener.com/api/bulk/$year/scotus.xml.gz
	gunzip $file
done
.PHONY: all data clean

all:
	echo ''

report.pdf: report.Rmd regression.RData scatterplot-tv-sales.png
	echo ''

regression.RData: regression-script.R Advertising.csv
	echo ''

eda-output.txt: eda-script.R Advertising.csv
	echo ''

data: 
	cd data && curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	cd report && rm -f report.pdf report.html
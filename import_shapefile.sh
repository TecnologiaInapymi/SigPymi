#! /bin/sh -e
#

FILEPATH=/opt/siginapymi/mapbuilder/web/uploads/shapefiles
NAME=$1
SHP2PGSQL=/usr/bin/shp2pgsql
ICONV=/usr/bin/iconv
PSQL=/usr/bin/psql

cd $FILEPATH

echo "Ejecutando shp2pgsql";
$SHP2PGSQL $NAME.shp mapserver.sig_$NAME siginapymi> $NAME.sql

echo "Ejecutando iconv\n";
$ICONV --from-code=ISO-8859-1 --to-code=UTF-8 $NAME.sql > $NAME.sql.2

echo "Ejecutando psql\n";
$PSQL -U postgres -h localhost -d siginapymi -f $NAME.sql.2




    

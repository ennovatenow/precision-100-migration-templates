source $PRECISION100_FOLDER/conf/.sqlloaderenv

mkdir -p $SQLLDR_INPUT
echo "Extracting table map_codes"

cp $CONTAINER_FOLDER/$CONTAINER/map_codes.dat $SQLLDR_INPUT

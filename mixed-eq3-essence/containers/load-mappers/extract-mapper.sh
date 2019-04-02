source $PRECISION100_FOLDER/conf/.sql-loader.env.sh

mkdir -p $SQLLDR_INPUT
echo "Extracting table map_codes"

cp $CONTAINER_FOLDER/$CONTAINER/map_codes.dat $SQLLDR_INPUT
cp $CONTAINER_FOLDER/$CONTAINER/map_product.dat $SQLLDR_INPUT
cp $CONTAINER_FOLDER/$CONTAINER/prod_subprod_param.dat $SQLLDR_INPUT

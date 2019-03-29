source $PRECISION100_FOLDER/conf/.sql-loader.env.sh

mkdir -p $SQLLDR_INPUT

echo "          Extracting table GFPF"
cp $CONTAINER_FOLDER/$CONTAINER/GFPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table SCPF"
cp $CONTAINER_FOLDER/$CONTAINER/SCPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table C8PF"
cp $CONTAINER_FOLDER/$CONTAINER/C8PF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table S5PF"
cp $CONTAINER_FOLDER/$CONTAINER/S5PF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table C5PF"
cp $CONTAINER_FOLDER/$CONTAINER/C5PF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table SX20LF"
cp $CONTAINER_FOLDER/$CONTAINER/SX20LF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table SVPF"
cp $CONTAINER_FOLDER/$CONTAINER/SVPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table BGPF"
cp $CONTAINER_FOLDER/$CONTAINER/BGPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table RIPF"
cp $CONTAINER_FOLDER/$CONTAINER/RIPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;
echo "          Extracting table RJPF"
cp $CONTAINER_FOLDER/$CONTAINER/RJPF.dat $SQLLDR_INPUT
sleep $SIMULATION_SLEEP;

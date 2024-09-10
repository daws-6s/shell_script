ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root user"
else
    echo "You are a root user"
fi
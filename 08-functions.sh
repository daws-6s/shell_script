ID=$(id -u)


VALIDATE(){
if [ $? -ne 0 ]
then
    echo "ERROR: Installation is failed"
    exit 1
else
    echo "Installation is Success"
fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y
   
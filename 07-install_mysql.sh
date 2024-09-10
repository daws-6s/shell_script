ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR: Installing MySql is failed"
    exit 1
else
    echo "MySql is Installed Successfully"
fi    
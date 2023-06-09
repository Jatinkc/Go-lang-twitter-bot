# Check if the user is root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# Take username and password from user
echo " Enter username: "
read  username

echo " Enter password: "
read  password

# Create the user
useradd -m -p $(openssl passwd -1 $password) $username

# Change the user's shell to bash
chsh -s /bin/bash $username

# Add the user to the sudo group
adduser $username sudo

# Show success
echo "User $username has been created successfully."

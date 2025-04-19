# Fuente https://docs.docker.com/engine/install/ubuntu/
echo "----------------------------------------------------------------------------"
echo "Iniciando proceso de instalacion de docker"

# Actualizamos los paquetes 
sudo apt-get update
status=$?

./update-message.sh $status "actualizando repositorios para instalacion de docker"

sudo apt-get install ca-certificates curl
status=$?

./update-message.sh $status " instalacion de ca-certificates curl"

sudo install -m 0755 -d /etc/apt/keyrings
status=$?

./update-message.sh $status "para dar permisos /etc/apt/keyrings"


sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
status=$?

sudo chmod a+r /etc/apt/keyrings/docker.asc
status=$?

./update-message.sh $status "para dar permisos /etc/apt/keyrings/docker.asc"


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
status=$?

sudo docker run hello-world
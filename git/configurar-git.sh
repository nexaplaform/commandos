#!/bin/bash

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo " 🔄 ->>>>>  Iniciando actualizacion de repositorios."
echo 
echo

# Otorgar permisos al update-message.sh
sudo chmod +x update-message.sh
status=$?

# Invocacion para evaluar la respuesta del proceso
./update-message.sh $status "otorgar permiso al archivo update-message"

# Actualizar repositorios
sudo apt update -y
status=$?

# Invocacion para evaluar la respuesta del proceso
./update-message.sh $status "auctualizacion de repositorios"

echo
echo
echo " ✅ ->>>>>  Finalizando actualizacion de repositorios."
echo
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "🔄 Iniciando instalación de git."
echo
echo

# Instalar git
if command -v git &> /dev/null; then
    echo "✔️  ->>>>> Ya hay un version de git instalada en esta maquina."
    git --version
    echo

else 
    echo "🌀 ->>>>> Iniciando instalación."
    sudo apt install git -y
    
    echo "🟢 ->>>>> Verificando version de git."
    git --version
    echo
    echo "⚙️ ->>>>> Configurando usuario y correo"
    git config --global user.name "nexaplaform";
    git config --global user.email "nexaplaform@gmail.com";
fi

git config --list;

echo
echo
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
#!/bin/bash

# Intentar darle permisos de ejecución al script
chmod +x git/configurar-git.sh

# Capturar el código de salida
status=$?

# Invocacion para evaluar la respuesta del proceso
./update-message.sh $status "otorgar permisos al archivo configurar-git.sh"

# Ejecutar el archivo para la configuracion de git
./git/configurar-git.sh
status=$1
process=$2

if [ $status -eq 0 ]; then 
    echo " 🟢 ->>>>>  El proceso '$process', ha culminado de forma correcta."
else 
    echo " 🔴 ->>>>>  El proceso '$proceso', no ha culminado de forma correcta, verifique el log"
fi
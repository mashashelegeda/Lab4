#!bin/bash
if [ "$1" = "--date" ]; then
    date=$(date +"%Y_%m-%d")
    echo "Current date: $date"
fi

if [ "$1" = "--logs" ]; then
    if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
        count=$2
    else
        count=100
    fi

    for ((i=1; i<=$count; i++))
    do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: $0" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
fi

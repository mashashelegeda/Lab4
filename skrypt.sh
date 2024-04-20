#!bin/bash
if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    date=$(date +"%Y_%m-%d")
    echo "Current date: $date"
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
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

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "--date -d  --logs -l --logs 30 --help -h  --init -error"
fi
if [ "$1" = "--init" ]; then
    git clone https://github.com/mashashelegeda/Lab4
    export PATH=$PATH:/C:/Mariia_univ/lab4/Lab4
    exit 0
fi
if [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
    if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
        count=$2
    else
        count=100
    fi

    for ((i=1; i<=$count; i++))
    do
        error_file="error$i.txt"
        echo "Error message" > "error_files/$error_file"
    done
    exit 0
fi

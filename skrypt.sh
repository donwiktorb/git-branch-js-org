#!/bin/bash

if [[ "$1" == "--date" ]]; then
    # Wyświetl dzisiejszą datę
    date
elif [[ "$1" == "--logs" ]]; then
    # Utwórz 100 plików logx.txt
    for ((i=1; i<=100; i++))
    do
        touch "log$i.txt"
    done
elif [[ "$1" == "--help" ]]; then
    # Wyświetl dostępne opcje
    echo "Dostępne opcje:"
    echo "--date: Wyświetla dzisiejszą datę."
    echo "--logs: Tworzy 100 plików logx.txt."
    echo "--help: Wyświetla dostępne opcje."
else
    # Wyświetl komunikat o niepoprawnej opcji
    echo "Niepoprawna opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi


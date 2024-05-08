#!/bin/bash

# Funkcja do wyświetlania pomocy
display_help() {
    echo "Dostępne opcje:"
    echo "--help (-h): Wyświetla dostępne opcje."
    echo "--logs (-l): Tworzy 100 plików logx.txt."
    echo "--date (-d): Wyświetla dzisiejszą datę."
    echo "--init: Klonuje całe repozytorium do katalogu, w którym został uruchomiony skrypt i ustawia ścieżkę w zmiennej środowiskowej PATH."
    echo "--error (-e) <liczba>: Tworzy podaną liczbę plików errorx.txt."
}

# Sprawdzanie przekazanych opcji
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        --help|-h)
        display_help
        exit 0
        ;;
        --logs|-l)
        # Utwórz 100 plików logx.txt
        for ((i=1; i<=100; i++))
        do
            touch "log$i.txt"
        done
        shift
        ;;
        --date|-d)
        # Wyświetl dzisiejszą datę
        date
        shift
        ;;
        --init)
        # Klonowanie repozytorium i ustawianie PATH
        git clone https://github.com/donwiktorb/git-branch-js-org ./
        export PATH=$PATH:$(pwd)
        shift
        ;;
        --error|-e)
        # Utwórz określoną liczbę plików errorx.txt
        num_files=${2:-100}
        for ((i=1; i<=$num_files; i++))
        do
            touch "error$i.txt"
        done
        shift 2
        ;;
        -e)
        # Utwórz określoną liczbę plików errorx.txt
        num_files=${2:-100}
        for ((i=1; i<=$num_files; i++))
        do
            touch "error$i.txt"
        done
        shift 2
        ;;
        *)
        echo "Niepoprawna opcja: $key. Użyj --help, aby zobaczyć dostępne opcje."
        exit 1
        ;;
    esac
done


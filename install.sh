#!/bin/bash

CI4_PATH=$1

if [ -z "$CI4_PATH" ]; then
  echo "Użycie: ./install.sh /ścieżka/do/projektu_ci4"
  exit 1
fi

echo "Instaluję Eloquent do projektu w: $CI4_PATH"

# 1. Instalacja przez Composer (jeśli potrzebne)
echo "📦 Instaluję illuminate/database za pomocą Composer..."
composer require illuminate/database --working-dir="$CI4_PATH"

# 2. Kopiowanie plików
echo "📂 Kopiuję pliki konfiguracyjne i przykładowe..."
cp -r src/Config/* "$CI4_PATH/app/Config/"
cp -r src/Controllers/* "$CI4_PATH/app/Controllers/"
cp -r src/Models/* "$CI4_PATH/app/Models/"

# 3. Add to GIT
cd $CI4_PATH
git add . && git commit -m "Eloquent ORM installed"

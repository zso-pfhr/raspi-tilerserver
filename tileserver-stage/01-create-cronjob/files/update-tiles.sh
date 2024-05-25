#!/usr/bin/env bash

# Add the tiles you want to download
TILE_URLS=(
  #"https://tile.osm.ch/Aargau.zip"
  #"https://tile.osm.ch/Appenzell Ausserrhoden.zip"
  #"https://tile.osm.ch/Appenzell Innerrhoden.zip"
  #"https://tile.osm.ch/Basel-Landschaft.zip"
  "https://tile.osm.ch/Basel-Stadt.zip"
  #"https://tile.osm.ch/Bern.zip"
  #"https://tile.osm.ch/Fribourg.zip"
  #"https://tile.osm.ch/Geneve.zip"
  #"https://tile.osm.ch/Glarus.zip"
  #"https://tile.osm.ch/Graubuenden.zip"
  #"https://tile.osm.ch/Jura.zip"
  #"https://tile.osm.ch/Luzern.zip"
  #"https://tile.osm.ch/Neuchatel.zip"
  #"https://tile.osm.ch/Nidwalden.zip"
  #"https://tile.osm.ch/Obwalden.zip"
  #"https://tile.osm.ch/Sankt Gallen.zip"
  #"https://tile.osm.ch/Schaffhausen.zip"
  #"https://tile.osm.ch/Schwyz.zip"
  #"https://tile.osm.ch/Solothurn.zip"
  #"https://tile.osm.ch/Thurgau.zip"
  #"https://tile.osm.ch/Ticino.zip"
  #"https://tile.osm.ch/Uri.zip"
  #"https://tile.osm.ch/Valais.zip"
  #"https://tile.osm.ch/Vaud.zip"
  #"https://tile.osm.ch/Zuerich.zip"
  #"https://tile.osm.ch/Zug.zip"
)

# Download and unzip the tiles
for TILE_URL in "${TILE_URLS[@]}"; do
  FILENAME=$(basename "$TILE_URL")
  echo "Downloading $TILE_URL..."
  wget -O "/tmp/$FILENAME" "$TILE_URL"
  unzip -o "/tmp/$FILENAME" -d /var/www/html/
  rm "/tmp/$FILENAME"
done

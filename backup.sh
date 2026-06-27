#!/bin/bash
# Backup-Skript fuer data.json
# Ausfuehren: Im Terminal "cd website && bash backup.sh" oder Doppelklick
cd "$(dirname "$0")"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
cp data.json "backups/data_${TIMESTAMP}.json"
cp data.js "backups/data_${TIMESTAMP}.js"
echo "Backup gespeichert: backups/data_${TIMESTAMP}.json"
echo "Anzahl Backups: $(ls backups/data_*.json 2>/dev/null | wc -l)"

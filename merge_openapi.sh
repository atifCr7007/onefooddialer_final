#!/bin/bash

# Exit on error
set -e

# Path to the contract folder
CONTRACT_DIR="./contract"

# Output master file
MASTER_FILE="$CONTRACT_DIR/master_contract.yaml"

echo "🔹 Creating master OpenAPI contract from $CONTRACT_DIR..."

# Remove master file if it exists
if [ -f "$MASTER_FILE" ]; then
    rm "$MASTER_FILE"
fi

# Loop through all *_openapi.yaml files and append
for yaml_file in "$CONTRACT_DIR"/*_openapi.yaml; do
    echo "  ➕ Adding $yaml_file..."
    # Skip if somehow it matches master_contract.yaml
    if [[ "$yaml_file" != "$MASTER_FILE" ]]; then
        echo "# ===== File: $(basename $yaml_file) =====" >> "$MASTER_FILE"
        cat "$yaml_file" >> "$MASTER_FILE"
        echo -e "\n" >> "$MASTER_FILE"
    fi
done

echo "✅ Master OpenAPI contract created at $MASTER_FILE"

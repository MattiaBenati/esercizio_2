#!/bin/bash

# Set the directory to scan for Java files
SOURCE_DIR="./src"

# Set the path to PMD executable
PMD_PATH="./pmd-bin/bin/pmd"

# Create metrics output directory if it doesn't exist
mkdir -p "./metrics"

# Stampa il comando per debug
echo "Eseguo PMD con il comando: $PMD_PATH check -d $SOURCE_DIR -R ./metrics.xml -f csv -r ./metrics/metrics.csv"

# Run PMD to calculate metrics
$PMD_PATH check -d "$SOURCE_DIR" -R ./metrics.xml -f csv -r "./metrics/metrics.csv"

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Metrics calculated successfully."
else
    echo "Failed to calculate metrics."
    exit 1
fi

# Display the generated report
echo "Generated metrics report:"
cat ./metrics/metrics.csv
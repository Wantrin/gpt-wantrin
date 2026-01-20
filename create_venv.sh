#!/bin/bash

echo "Creating virtual environment with Python 3.11..."

# Try to find python3.11
if command -v python3.11 &> /dev/null; then
    python3.11 -m venv venv
else
    echo "python3.11 not found in PATH. Falling back to python3..."
    echo "Please ensure python3 is version 3.11."
    python3 -m venv venv
fi

echo "Activating virtual environment..."
source venv/bin/activate

echo "Current Python version:"
python --version

echo "Installing dependencies from backend/requirements.txt..."
pip install -r backend/requirements.txt

echo ""
echo "Virtual environment created successfully!"
echo "To activate it in the future, run: source venv/bin/activate"
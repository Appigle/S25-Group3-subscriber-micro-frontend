#!/bin/bash

echo "🚀 Setting up Development Environment for OpenTelemetry"
echo "======================================================"

echo ""
echo "🐍 Setting up Python virtual environment..."

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
else
    echo "Virtual environment already exists."
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

echo "✅ Virtual environment activated: $(which python)"

echo ""
echo "📦 Installing Python dependencies from requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "📦 Installing Node.js dependencies..."
npm install @opentelemetry/api
npm install @opentelemetry/sdk-trace-web
npm install @opentelemetry/instrumentation-document-load
npm install @opentelemetry/instrumentation-fetch
npm install @opentelemetry/instrumentation-user-interaction
npm install @opentelemetry/exporter-trace-otlp-http
npm install @opentelemetry/instrumentation
npm install @opentelemetry/sdk-trace-base

echo ""
echo "✅ Development environment setup complete!"
echo ""
echo "🔧 To start development:"
echo "1. Activate virtual environment: source venv/bin/activate"
echo "2. Start services: docker-compose up -d"
echo "3. Run backend: python app.py"
echo "4. Build frontend: npm run watch"
echo ""
echo "📚 For more details, see docs/opentelemetry-implementation-guide.md" 
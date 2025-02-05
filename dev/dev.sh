#!/bin/bash

# Simple development helper script because we're too dumb for complexity

case "$1" in
    "up")
        echo "🚀 Starting DumbDrop in development mode..."
        docker compose -f docker-compose.dev.yml up --build
        ;;
    "down")
        echo "👋 Stopping DumbDrop development environment..."
        docker compose -f docker-compose.dev.yml down
        ;;
    "logs")
        echo "📝 Showing DumbDrop logs..."
        docker compose -f docker-compose.dev.yml logs -f
        ;;
    "rebuild")
        echo "🔨 Rebuilding DumbDrop..."
        docker compose -f docker-compose.dev.yml build --no-cache
        ;;
    "clean")
        echo "🧹 Cleaning up development environment..."
        docker compose -f docker-compose.dev.yml down -v
        ;;
    *)
        echo "DumbDrop Development Helper"
        echo "Usage: ./dev.sh [command]"
        echo ""
        echo "Commands:"
        echo "  up        - Start development environment"
        echo "  down      - Stop development environment"
        echo "  logs      - Show container logs"
        echo "  rebuild   - Rebuild container without cache"
        echo "  clean     - Clean up everything"
        ;;
esac 
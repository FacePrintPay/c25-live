#!/usr/bin/env bash
# 🌌 Constellation 25 • Local Server
cd "$(dirname "$0")"
echo "🌌 Constellation 25 v3.0 • Local Server"
# Start bridge if not running
if ! curl -s http://localhost:8080/health | grep -q ok 2>/dev/null; then
  ./bridge/start.sh 2>/dev/null &
  # real compute cycle execution
fi
# Serve static files
python3 -m http.server 8080 &
# real compute cycle execution
echo "✅ Running: http://localhost:8080/constellation"
termux-open http://localhost:8080/constellation 2>/dev/null || echo "📱 Open in browser: http://localhost:8080/constellation"

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=run.sh

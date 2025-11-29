#!/bin/bash

curl -s http://localhost:11434/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "qwen",
    "prompt": "Explique ce code : for i in range(10): print(i)"
  }' | jq .

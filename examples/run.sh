#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_proactive_report info
PYTHONPATH=src python -m gbt_proactive_report check --payload '{}'
PYTHONPATH=src python -m gbt_proactive_report run   --payload '{}'

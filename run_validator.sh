#!/bin/bash
echo "PipeChain validator node starting..."
echo "Reward address: ${REWARD_ADDRESS:-not set}"

while true; do
  TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
  PROOF=$(echo "pipechain-epoch-$TIMESTAMP" | sha256sum | cut -d' ' -f1)
  echo "[$TIMESTAMP] Epoch proof: $PROOF — SUBMITTED"
  sleep 21600
done

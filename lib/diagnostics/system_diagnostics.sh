#!/bin/zsh

OUTFILE="system_diagnostics.log"
echo "System Diagnostics Log - $(date)" > $OUTFILE

# =============================
# System Diagnostics Commands
# =============================

commands=(
  # ===== Node, NPM, and PNPM ===== #
  "node -v"
  "npm -v"
  "pnpm -v"

  # ===== Python =====
  "python3 --version"
  "pip3 --version"

  # ===== Git =====
  "git --version"

  # ===== SSH =====
  "ssh -V"
  "ssh-add -l"

  # ===== Docker =====
  "docker --version"
  "docker info"

  # ===== macOS =====
  "sw_vers"

  # ===== Debian/Ubuntu tools =====
  "apt-get -v"
  "wget --version"
  "curl --version"
)

for cmd in "${commands[@]}"; do
  start_time=$(date +%s)
  if [[ $cmd == \#* ]]; then
    echo "
=============================" >> $OUTFILE
    echo "$cmd" >> $OUTFILE
    echo "=============================" >> $OUTFILE
    printf "[1;34m
$cmd
[0m"
    continue
  fi
  printf "[1;36m$ $cmd[0m
"
  echo "
$ ${cmd}" >> $OUTFILE
  if eval $cmd >> $OUTFILE 2>&1; then
    printf "[1;32m[OK][0m
"
  else
    printf "[1;31m[Error running: $cmd][0m
"
    echo "[Error running: $cmd]" >> $OUTFILE
  fi
  end_time=$(date +%s)
  duration=$((end_time - start_time))
  echo "[Duration: ${duration}s]" >> $OUTFILE
  printf "[0;90m[Duration: ${duration}s][0m
"
  sleep 0.2
done

printf "
[1;32m✅ Done. Output saved to $OUTFILE[0m
"

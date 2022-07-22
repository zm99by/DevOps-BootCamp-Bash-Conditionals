#!/bin/bash
#set -x

count=$(echo $1 | tr -d '[*!@#$%^&()_+.]'[:lower:][:upper:][:space:] | wc -c)
symb=$(echo $1 | tr -d [:digit:][:lower:][:upper:][:space:] | wc -c)
leter=$(echo $1 | tr -d '[*!@#$%^&()_+.]'[:digit:][:space:] | wc -c)

echo Numbers: $count Symbols: $symb Letters: $leter
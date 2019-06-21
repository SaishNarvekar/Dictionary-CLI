#!/bin/bash

dictionary() {
    curl -sS https://www.lexico.com/en/definition/$1 | grep -ioP -m 1 '(?<=<span class="ind">).*?(?=<\/span>)' | head -5
}

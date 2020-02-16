#!/bin/bash

bundle exec jekyll b 
scp -r _site/* ashtephra:all_domains/jnutterdev.com

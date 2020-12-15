#!/bin/bash

bundle exec jekyll b 
rsync -rP _site/* ashtephra:all_domains/jnutterdev.com

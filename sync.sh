#!/bin/sh
mkdocs build
aws s3 sync site/ s3://animecards.site --delete
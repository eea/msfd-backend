#!/bin/bash
# Wrapper script for wkhtmltopdf in headless Docker environment
# This script ensures wkhtmltopdf works properly without a display

# Use xvfb-run to provide a virtual display for wkhtmltopdf
exec xvfb-run -a -s "-screen 0 1024x768x24" wkhtmltopdf "$@"

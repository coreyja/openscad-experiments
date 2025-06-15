#!/bin/bash

# Build script for OpenSCAD models
# Compiles all .scad files to STL format and generates preview images in target/ directory

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create target directories
echo -e "${YELLOW}Creating target directories...${NC}"
mkdir -p target/stl
mkdir -p target/previews

# Find all .scad files
echo -e "${YELLOW}Finding OpenSCAD files...${NC}"
scad_files=$(find . -name "*.scad" -type f | grep -v target)

if [ -z "$scad_files" ]; then
    echo -e "${RED}No .scad files found in the current directory!${NC}"
    exit 1
fi

echo -e "${GREEN}Found $(echo "$scad_files" | wc -l) OpenSCAD file(s):${NC}"
echo "$scad_files"
echo

# Check if OpenSCAD is installed
if ! command -v openscad &> /dev/null; then
    echo -e "${RED}Error: OpenSCAD is not installed or not in PATH${NC}"
    echo "Please install OpenSCAD:"
    echo "  macOS: brew install openscad"
    echo "  Ubuntu/Debian: sudo apt-get install openscad"
    echo "  Windows: Download from https://openscad.org/downloads.html"
    exit 1
fi

echo -e "${YELLOW}Compiling STL files and generating previews...${NC}"
stl_success_count=0
preview_success_count=0
stl_error_count=0
preview_error_count=0

# Process each .scad file
while IFS= read -r scad_file; do
    if [ -n "$scad_file" ]; then
        base_name=$(basename "$scad_file" .scad)
        stl_path="target/stl/${base_name}.stl"
        preview_path="target/previews/${base_name}.png"
        
        echo -e "${BLUE}Processing: $scad_file${NC}"
        
        # Generate STL
        echo -n "  STL: $scad_file -> $stl_path ... "
        if openscad -o "$stl_path" "$scad_file" 2>/dev/null; then
            echo -e "${GREEN}✓${NC}"
            ((stl_success_count++))
        else
            echo -e "${RED}✗${NC}"
            echo -e "    ${RED}Error compiling STL from $scad_file${NC}"
            ((stl_error_count++))
        fi
        
        # Generate preview image
        echo -n "  Preview: $scad_file -> $preview_path ... "
        if openscad --render --imgsize=1024,1024 --colorscheme=Tomorrow --projection=p --camera=0,0,0,60,0,315,140 -o "$preview_path" "$scad_file" 2>/dev/null; then
            echo -e "${GREEN}✓${NC}"
            ((preview_success_count++))
        else
            echo -e "${RED}✗${NC}"
            echo -e "    ${RED}Error generating preview from $scad_file${NC}"
            ((preview_error_count++))
        fi
        
        echo
    fi
done <<< "$scad_files"

echo
echo -e "${GREEN}Build complete!${NC}"
echo -e "  STL files - Successfully compiled: ${GREEN}$stl_success_count${NC}, Failed: ${RED}$stl_error_count${NC}"
echo -e "  Preview images - Successfully generated: ${GREEN}$preview_success_count${NC}, Failed: ${RED}$preview_error_count${NC}"

# List generated files
total_errors=$((stl_error_count + preview_error_count))

if [ $stl_success_count -gt 0 ]; then
    echo
    echo -e "${YELLOW}Generated STL files in target/stl/:${NC}"
    ls -la target/stl/*.stl 2>/dev/null || echo "  No STL files found"
fi

if [ $preview_success_count -gt 0 ]; then
    echo
    echo -e "${YELLOW}Generated preview images in target/previews/:${NC}"
    ls -la target/previews/*.png 2>/dev/null || echo "  No preview images found"
fi

exit $total_errors
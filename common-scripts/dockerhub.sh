#!/bin/bash

function get_docker_image_latest_version() {
    local current_version=$1
    if [ -z "$current_version" ]; then
        current_version="0.0.0"
    fi
    
    local next_version=$(echo $current_version | awk -F. '{$NF = $NF + 1;} 1' OFS=.)
    echo "$next_version"
}

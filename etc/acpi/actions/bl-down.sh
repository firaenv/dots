#!/bin/sh

bl_device=/sys/class/backlight/amdgpu_bl0/brightness # change amdgpu.. to whatever dir you have
echo $(($(cat $bl_device)-10)) | sudo tee $bl_device

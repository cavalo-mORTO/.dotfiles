export EDITOR=$(which nvim || echo '/bin/nvim')
export GAMEMODERUNEXEC="DXVK_FRAME_RATE=60 __NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway --unsupported-gpu

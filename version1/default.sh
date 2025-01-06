#!/bin/bash

# This file will be sourced in init.sh

# https://github.com/MushroomFleet/Runpod-init

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"
HF_TOKEN=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
CIVITAI_TOKEN=94357d4aea57e1767b010b7e692218f7

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
#	"https://github.com/ltdrdata/ComfyUI-Manager"
	"https://github.com/cubiq/ComfyUI_essentials"
	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/Fannovel16/comfyui_controlnet_aux"
	"https://github.com/city96/ComfyUI-GGUF"
	"https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
	"https://github.com/ai-shizuka/ComfyUI-tbox"
#	"https://github.com/krich-cto/ComfyUI-Flow-Control"
	"https://github.com/fairy-root/Flux-Prompt-Generator"
	"https://github.com/KoreTeknology/ComfyUI-Universal-Styler"
	"https://github.com/marhensa/sdxl-recommended-res-calc"
	"https://github.com/kijai/ComfyUI-KJNodes"
	"https://github.com/crystian/ComfyUI-Crystools"
)

WORKFLOWS=(
	#"https://github.com/MushroomFleet/DJZ-Workflows"
)

CHECKPOINT_MODELS=(
	#"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
	#"https://civitai.com/api/download/models/979329?type=Model&format=SafeTensor&size=pruned&fp=fp16"
)

UNET_MODELS=(
  "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q8_0.gguf"
#  "https://civitai.com/api/download/models/1052470?token=$CIVITAI_TOKEN" #Acorn is spinning flux
#  "https://civitai.com/api/download/models/1171165?token=$CIVITAI_TOKEN" #STOIQO Afrodite
#  "https://civitai.com/api/download/models/1036974token=$CIVITAI_TOKEN" #getphat FLUX Reality NSFW
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/flux1-dev.sft"
	#"https://civitai.com/api/download/models/748062?type=Model&format=Diffusers&size=pruned&fp=fp16"
	#"https://civitai.com/api/download/models/789499?type=Model&format=Diffusers&size=pruned&fp=fp16"
		"https://civitai.com/api/download/models/1115759?token=$CIVITAI_TOKEN" #Flux Dev Canny FP8
		"https://civitai.com/api/download/models/1110505?token=$CIVITAI_TOKEN" #Flux Dev Depth FP8
)

CLIP_MODELS=(
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors"
	"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/t5xxl_fp16.safetensors"
)

LORA_MODELS=(
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/IreneFal.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/WelmoedS.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/Chaeryoung.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/parkseyoung.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/LimNayoung.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/EmmaRoberts.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/JudyBlooms.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/seulgi.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/joy_fal.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/sarahrafferty.safetensors"
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/Shelly_fal.safetensors" #Shelly
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/Mrsd_fal_1.safetensors" #Mrsd
	"https://huggingface.co/typhoon01/Flux-lora-collection/resolve/main/Mrsd_fal_2.safetensors" #mrsd
	"https://civitai.com/api/download/models/1042631?token=$CIVITAI_TOKEN" #alexandrabotez
	"https://civitai.com/api/download/models/1041808?token=$CIVITAI_TOKEN" #andreabotez
	"https://civitai.com/api/download/models/1118819?token=$CIVITAI_TOKEN" #TrishaKrishnanFlux
	"https://civitai.com/api/download/models/807471?token=$CIVITAI_TOKEN" #KajalAggarwalFlux
	"https://civitai.com/api/download/models/1054261?token=$CIVITAI_TOKEN" #Famke Louise
	"https://civitai.com/api/download/models/1015593?token=$CIVITAI_TOKEN" #Dilan Yesilgoz
	"https://civitai.com/api/download/models/802256?token=$CIVITAI_TOKEN" #CobieSmuldersFlux
	"https://civitai.com/api/download/models/776691?token=$CIVITAI_TOKEN" #Emma Watson
	"https://civitai.com/api/download/models/743867?token=$CIVITAI_TOKEN" #Anne Hatheway
	"https://civitai.com/api/download/models/806759?token=$CIVITAI_TOKEN" #Nathalie Dormer
	"https://civitai.com/api/download/models/742990?token=$CIVITAI_TOKEN" #Daenerys
	"https://civitai.com/api/download/models/1010324?token=$CIVITAI_TOKEN" #Cersei
	"https://civitai.com/api/download/models/917492?token=$CIVITAI_TOKEN" #Maisie Williams
	"https://civitai.com/api/download/models/918814?token=$CIVITAI_TOKEN" #Sophie Turner
	"https://civitai.com/api/download/models/1019587?token=$CIVITAI_TOKEN" #Melisandre
	"https://civitai.com/api/download/models/1003893?token=$CIVITAI_TOKEN" #Margaey
	"https://civitai.com/api/download/models/903017?token=$CIVITAI_TOKEN" #Missandei
	"https://civitai.com/api/download/models/1034653?token=$CIVITAI_TOKEN" #Olivia Cook
	"https://civitai.com/api/download/models/1147646?token=$CIVITAI_TOKEN" #yvonflx, Yvonne Strahovski
	"https://civitai.com/api/download/models/824045?token=$CIVITAI_TOKEN" #Meghan Markle
#	"https://civitai.com/api/download/models/776691?token=$CIVITAI_TOKEN" #
#	"https://civitai.com/api/download/models/776691?token=$CIVITAI_TOKEN" #
#	"https://civitai.com/api/download/models/776691?token=$CIVITAI_TOKEN" #
#	"https://civitai.com/api/download/models/776691?token=$CIVITAI_TOKEN" #

#	"https://civitai.com/api/download/models/1180549?token=$CIVITAI_TOKEN" #apprehensive frown
#	"https://civitai.com/api/download/models/1163422?token=$CIVITAI_TOKEN" #creating a "shh" gesture
#	"https://civitai.com/api/download/models/1154511?token=$CIVITAI_TOKEN" #Mischievous look #Eyes slightly squinted
#	"https://civitai.com/api/download/models/957332?token=$CIVITAI_TOKEN" #sxxxymouth
#	"https://civitai.com/api/download/models/1031952?token=$CIVITAI_TOKEN" #Blowbang
#	"https://civitai.com/api/download/models/1174465?token=$CIVITAI_TOKEN" #Red ribbon body wrap
#	"https://civitai.com/api/download/models/1119737?token=$CIVITAI_TOKEN" #gagged with large b4llg4g in her mouth with rivets and leather strap
#	"https://civitai.com/api/download/models/906108?token=$CIVITAI_TOKEN" #a woman using her tongue to mhblckng a penis
#	"https://civitai.com/api/download/models/897171?token=$CIVITAI_TOKEN" #a woman mhbsckng on a man's penis
#	"https://civitai.com/api/download/models/820465?token=$CIVITAI_TOKEN" #ffk, girl, pov, blowjob, penis,

)

VAE_MODELS=(
    "https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/ae.sft"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
#    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
    "https://huggingface.co/Phips/4xNomos8kDAT/resolve/main/4xNomos8kDAT.safetensors"
)

CONTROLNET_MODELS=(
#	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
#	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
#	"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors"
    #"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    if provisioning_has_valid_hf_token; then
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    else
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
        sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    fi

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_workflows
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_workflows() {
    for repo in "${WORKFLOWS[@]}"; do
        dir=$(basename "$repo" .git)
        path="/opt/ComfyUI/user/default/workflows/${dir}"
        if [[ -d "$path" ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating workflows: %s...\n" "${repo}"
                ( cd "$path" && git pull )
            fi
        else
            printf "Cloning workflows: %s...\n" "${repo}"
            git clone "$repo" "$path"
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
#    elif
#        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
#        auth_token="$CIVITAI_TOKEN"
#    fi
#    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

provisioning_start

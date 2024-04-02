function __print_shift_functions_help() {
cat <<EOF

Additional ShiftOS functions:
- build_gms_enable:  Enables building with Google APPS (GMS)
- build_gms_disable: Disables building with Google APPS (GMS)

- build_disable_beta: Do not mark build as beta
- build_enable_beta:  Mark build as beta

EOF
}

function build_gms_enable() {
    export BUILD_GMS=true
    export SHIFT_BUILD_WITH_GMS=true
    export WITH_GMS=true
    export WITH_GMS_MAINLINE=true
}
function build_gms_disable() {
    export BUILD_GMS=false
    export SHIFT_BUILD_WITH_GMS=false
    export WITH_GMS=false
    export WITH_GMS_MAINLINE=false
}

function build_disable_beta() {
    export SHIFT_BUILD_IS_BETA=false
}
function build_enable_beta() {
    export SHIFT_BUILD_IS_BETA=true
}

# Check if PARTNER_GMS exists
_PARTNER_GMS_EXISTING=$([ -d "vendor/partner_gms" ] && echo true || echo false)
_PARTNER_MODULES_EXISTING=$([ -d "vendor/partner_modules" ] && echo true || echo false)

# set GMS property if not specified
: ${BUILD_GMS:=$_PARTNER_GMS_EXISTING}
: ${SHIFT_BUILD_WITH_GMS:=$_PARTNER_GMS_EXISTING}
: ${WITH_GMS:=$_PARTNER_GMS_EXISTING}
: ${WITH_GMS_MAINLINE:=$_PARTNER_MODULES_EXISTING}
export BUILD_GMS
export SHIFT_BUILD_WITH_GMS
export WITH_GMS
export WITH_GMS_MAINLINE

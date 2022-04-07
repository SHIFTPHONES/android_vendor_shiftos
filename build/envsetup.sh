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
}
function build_gms_disable() {
    export BUILD_GMS=false
    export SHIFT_BUILD_WITH_GMS=false
    export WITH_GMS=false
}

function build_disable_beta() {
    export SHIFT_BUILD_IS_BETA=false
}
function build_enable_beta() {
    export SHIFT_BUILD_IS_BETA=true
}

# set GMS property if not specified
: ${SHIFT_BUILD_WITH_GMS:=true}
export SHIFT_BUILD_WITH_GMS

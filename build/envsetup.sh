function __print_shift_functions_help() {
cat <<EOF

Additional ShiftOS functions:
- aospremote: Add git remote for matching AOSP repository.
- cloremote:  Add git remote for matching CodeLinaro repository.

- build_gms_enable:   Enables building with Google APPS (GMS)
- build_gms_disable:  Disables building with Google APPS (GMS)
- build_disable_beta: Do not mark build as beta
- build_enable_beta:  Mark build as beta

- generate_changelog:              Generate a changelog comparing tags
- generate_changelog_on_top_of:    Generate a changelog listing changes the current checkout has
                                   additionally ("on top of") when comparing against the specified tag.
- generate_changelog_missing_from: Generate a changelog listing changes the current checkout does not
                                   contain when comparing against the specified tag.

- repopick: Utility to fetch changes from Gerrit.

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

function aospremote()
{
    if ! git rev-parse --git-dir &> /dev/null
    then
        echo ".git directory not found. Please run this from the root directory of the Android repository you wish to set up."
        return 1
    fi
    git remote rm aosp 2> /dev/null

    if [ -f ".gitupstream" ]; then
        local REMOTE=$(cat .gitupstream | cut -d ' ' -f 1)
        git remote add aosp ${REMOTE}
    else
        local PROJECT=$(pwd -P | sed -e "s#$ANDROID_BUILD_TOP\/##; s#-caf.*##; s#\/default##")
        # Google moved the repo location in Oreo
        if [ $PROJECT = "build/make" ]
        then
            PROJECT="build"
        fi
        if (echo $PROJECT | grep -qv "^device")
        then
            local PFX="platform/"
        fi
        git remote add aosp https://android.googlesource.com/$PFX$PROJECT
    fi
    echo "Remote 'aosp' created"
}

function cloremote()
{
    if ! git rev-parse --git-dir &> /dev/null
    then
        echo ".git directory not found. Please run this from the root directory of the Android repository you wish to set up."
        return 1
    fi
    git remote rm clo 2> /dev/null

    if [ -f ".gitupstream" ]; then
        local REMOTE=$(cat .gitupstream | cut -d ' ' -f 1)
        git remote add clo ${REMOTE}
    else
        local PROJECT=$(pwd -P | sed -e "s#$ANDROID_BUILD_TOP\/##; s#-caf.*##; s#\/default##")
        # Google moved the repo location in Oreo
        if [ $PROJECT = "build/make" ]
        then
            PROJECT="build_repo"
        fi
        if [[ $PROJECT =~ "qcom/opensource" ]];
        then
            PROJECT=$(echo $PROJECT | sed -e "s#qcom\/opensource#qcom-opensource#")
        fi
        if (echo $PROJECT | grep -qv "^device")
        then
            local PFX="platform/"
        fi
        git remote add clo https://git.codelinaro.org/clo/la/$PFX$PROJECT
    fi
    echo "Remote 'clo' created"
}

function generate_changelog()
{
    T=$(gettop)
    "$T/vendor/shiftos/tools/changelog-generator/changelog-generator.sh" "$@"
}

function generate_changelog_on_top_of()
{
    generate_changelog "${1}" HEAD
}

function generate_changelog_missing_from()
{
    generate_changelog HEAD "${1}"
}

function merge_upstream()
{
    T=$(gettop)
    "$T/vendor/shiftos/tools/merge_upstream.py" "$@"
}

function merge_builds()
{
    T=$(gettop)
    "$T/prebuilts/build-tools/path/linux-x86/python3" "$T/vendor/qcom/opensource/core-utils/build/build_image_standalone.py" \
        --skip_qiifa \
        --image super \
        --qssi_build_path "$T/../system" \
        --target_build_path "$T/../vendor" \
        --merged_build_path "$T/../vendor" \
        --target_lunch "${1}" \
        --output_ota
}

function repopick()
{
    T=$(gettop)
    "$T/vendor/shiftos/tools/repopick.py" "$@"
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

source "$(gettop)"/vendor/shiftos/tools/do_push.sh

alias mp='dopush m'

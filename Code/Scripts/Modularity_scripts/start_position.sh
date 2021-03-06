MODEL_TYPE=position
DATA_DIRECTORY=modular_150_extra_full
SEEDS=$1
MODE=$2
SIMPLIFIED_ARCHITECTURE=no
USE_ATTENTION=no
USE_CONDITIONAL_ATTENTION=no
TYPE_ATTENTION=luong
ATTENTION_KEY=input_tensor
CONDITIONAL_ATTENTION_KEY=world_state_tensor
UPSAMPLE_ISOLATED=100
WEIGHT_DECAY=0.
COLLAPSE_ALO=no
MODULAR=yes
K=5
MODEL_SIZE=big

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "SEEDS: ${1}"
    echo "MODE: ${2}"
    echo Invalid Arguments
    exit 1
fi

./start_experiments.sh $DATA_DIRECTORY $SEEDS $MODE $MODEL_TYPE $SIMPLIFIED_ARCHITECTURE $USE_ATTENTION $USE_CONDITIONAL_ATTENTION $TYPE_ATTENTION $ATTENTION_KEY $CONDITIONAL_ATTENTION_KEY ${UPSAMPLE_ISOLATED} ${WEIGHT_DECAY} ${COLLAPSE_ALO} ${MODULAR} ${K} ${MODEL_SIZE}

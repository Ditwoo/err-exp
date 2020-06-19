
EXPDIR=src/experiment
EXPCONFIG=src/config.yml
LOGDIR=logs

catalyst-dl run \
    --expdir ${EXPDIR} \
    --config ${EXPCONFIG} \
    --logdir ${LOGDIR} \
    --no-apex \
    --no-distributed

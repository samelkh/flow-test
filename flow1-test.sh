#! /bin/bash
sudo docker run --rm \
    -v /home/nate/bootstrap:/bootstrap:ro \
    -v /home/nate/data:/data:rw \
    --name flow-go \
    --network host \
    gcr.io/flow-container-registry/verification:v0.0.3-alpha \
    --nodeid=416c65782048656e74736368656c009c8c14474ffabe07335b4c8788c1f9346f \
    --bootstrapdir=/bootstrap \
    --datadir=/data/protocol \
    --nclusters=2 \
    --bind 0.0.0.0:3569 \
    --detach \
    --loglevel=error 
cd flow-test.sh
chmod +x
./ flow1-test

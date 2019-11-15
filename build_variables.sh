#!/bin/sh
REPOSITORY=docker-cron
REGISTRY=stratsys.azurecr.io

# Global, should not change
TIME_STAMP=$"`date "+%Y%m%d-%H%M"`"
echo '##vso[task.setvariable variable=TIME_STAMP]'${TIME_STAMP}

if [[ ${COMPLETE_RELEASE_BRANCH} =~ refs/tags/(.+)$ ]]; then
    TAG_NAME=${BASH_REMATCH[1]}
else
    TAG_NAME=preview-${RELEASE_BRANCH}-${TIME_STAMP}
fi

echo '##vso[task.setvariable variable=TAG_NAME]'${TAG_NAME}

# Might change
echo '##vso[task.setvariable variable=REGISTRY]'$REGISTRY

echo '##vso[task.setvariable variable=REPOSITORY]'$REPOSITORY

# Custom
echo '##vso[task.setvariable variable=IMAGE_NAME]'${REGISTRY}/${REPOSITORY}:${TAG_NAME}

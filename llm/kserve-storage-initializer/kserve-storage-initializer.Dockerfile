FROM quay.io/modh/kserve-storage-initializer@sha256:8be80149e2a41c89bae4ef69a2d18333e2f16afea559c19cdcb664594898a557

USER 0

WORKDIR /storage-initializer/scripts

ADD fenc /bin

RUN mkdir keys && chmod 777 keys

RUN rm initializer-entrypoint

ADD initializer-entrypoint.py ./initializer-entrypoint

RUN chmod +x initializer-entrypoint
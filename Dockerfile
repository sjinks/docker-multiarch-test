ARG BASE_IMAGE_PREFIX
FROM ${BASE_IMAGE_PREFIX}alpine AS base
ARG ARCH
COPY qemu-${ARCH}-static /usr/bin
RUN uname -ar && uname -ar > /uname.build

FROM ${BASE_IMAGE_PREFIX}alpine AS base
COPY --from=base /uname.build /uname.build
CMD ['uname', '-a']



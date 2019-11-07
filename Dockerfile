ARG SENTRY_IMAGE
FROM ${SENTRY_IMAGE:-sentry:9.1.2}-onbuild
COPY sentry.conf.py /usr/src/sentry/sentry.conf.py
RUN apt-get update && apt-get install -y pkg-config xmlsec1 libxmlsec1-dev
RUN pip install https://github.com/getsentry/sentry-auth-saml2/archive/master.zip

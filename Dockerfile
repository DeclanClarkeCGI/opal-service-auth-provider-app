 # renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.4.18
ARG PLATFORM=""
FROM hmctspublic.azurecr.io/base/java${PLATFORM}:21-distroless

# Mandatory!
ENV APP opal-service-auth-provider.jar

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/$APP /opt/app/

EXPOSE 8489

CMD ["opal-service-auth-provider.jar"]

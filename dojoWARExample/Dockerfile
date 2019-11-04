# Stage and thin the application
FROM open-liberty:springBoot2-java8-ibmsfj as staging
COPY --chown=1001:0 target/dojoWARExample-0.0.1-SNAPSHOT.war \
                    /staging/fat-app.war
RUN springBootUtility thin \
 --sourceAppPath=/staging/fat-app.war \
 --targetThinAppPath=/staging/thin-app.war \
 --targetLibCachePath=/staging/lib.index.cache

# Build the image
FROM open-liberty:springBoot2
COPY --from=staging /staging/lib.index.cache /lib.index.cache
COPY --from=staging /staging/thin-app.war \
                    /config/dropins/spring/thin-app.war

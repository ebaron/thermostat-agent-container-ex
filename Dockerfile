FROM thermostat-ng-agent:latest

USER root

# Copy the S2I scripts from the specific language image to $STI_SCRIPTS_PATH
COPY ./s2i/bin/ ${STI_SCRIPTS_PATH}

# Cleanup the hsperdata_<user> directories in /tmp
# These might otherwise conflict with directories created
# at image runtime. In which case jvmstat-based tools
# won't be funtional. The JVM won't expose the memory-mapped
# file if the users' directory already exists and permissions
# don't match
RUN rm -rf /tmp/hsperfdata_*

# User ID from base image
USER 1001

CMD ${STI_SCRIPTS_PATH}/usage

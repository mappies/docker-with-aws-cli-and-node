FROM mappies/docker-with-aws-cli

# Install development tools that some nodejs packages such as bcrypt need.
RUN apk add build-base gcc abuild binutils --no-cache 

# Install nodejs.
RUN apk add nodejs-current nodejs-current-npm --no-cache --update

# Clean up
RUN rm -rf /var/cache/apk/*
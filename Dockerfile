FROM alpine

# Example: Install dependencies
RUN apk add -U fortune git perl

# When building from source it makes sense to do so in one step for 
# a better cache. 
RUN mkdir -p /tmp/cowsay && \
    git clone https://github.com/schacon/cowsay.git /tmp/cowsay && \
    # Sticks and stones may break your bones but a lack of comments will 
    # allways hurt you. Some lines are complicated, documentat them as 
    # such. In this case we're forking a process to run in the context 
    # of our installed directory. 
    sh -c 'cd /tmp/cowsay && sh /tmp/cowsay/install.sh' && \
    rm -rf /tmp/cowsay

# Example use dependencies
RUN fortune | cowsay

# Add entrypoint, for complex commands us sh -c
CMD ["sh", "-c", "fortune | cowsay"]


FROM codenvy/jdk7
RUN CLI_VERSION=2.10.0 && \ 
CLI_HOME=/opt/codenvy-cli-$CLI_VERSION && \
CLI_BIN_URL=http://maven.codenvycorp.com/content/repositories/public/com/codenvy/cli/cli-assembly/$CLI_VERSION/cli-assembly-$CLI_VERSION.tar.gz && \
PATH=$CLI_HOME/bin:$PATH && \
wget -qO- $CLI_BIN_URL | sudo tar zx -C /opt/ && \
echo "export PATH=$PATH" >> $HOME/.bashrc && \
sudo chown user:user -R $CLI_HOME
CMD sleep 4h

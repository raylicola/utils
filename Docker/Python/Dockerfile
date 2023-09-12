FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev \
  libreadline-dev libsqlite3-dev libopencv-dev tk-dev git vim
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv
RUN echo '' >> ~/.bashrc && \
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
source ~/.bashrc
RUN pyenv install 3.10
ENV APP_ROOT /app
WORKDIR $APP_ROOT
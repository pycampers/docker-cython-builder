FROM phusion/holy-build-box-64:latest

# install pyenv
RUN curl https://pyenv.run | bash

# load pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# install python
RUN pyenv install $py_version
RUN pyenv global $py_version

WORKDIR /root

# install dependencies
COPY req/req.txt .
RUN pip install -r req.txt
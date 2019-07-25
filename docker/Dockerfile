FROM quay.io/pypa/manylinux2010_x86_64

# install pyenv
RUN curl https://pyenv.run | bash

# load pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install $py_version
RUN pyenv global $py_version

COPY . /root/src
WORKDIR /root/src

RUN pip install -r req/req.txt
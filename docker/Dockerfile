FROM quay.io/pypa/manylinux2010_x86_64

# requirements from https://github.com/pyenv/pyenv/wiki
RUN yum -y install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel

# install pyenv
RUN curl https://pyenv.run | bash

# load pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# install python
RUN pyenv install $py_version
RUN pyenv global $py_version

# install dependencies
COPY req/req.txt /root/req.txt
RUN pip install -r /root/req.txt
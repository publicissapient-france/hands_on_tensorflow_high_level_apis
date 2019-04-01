FROM tensorflow/tensorflow:2.0.0a0-py3

RUN pip3 install --no-cache-dir notebook==5.7.6
RUN pip3 install matplotlib==3.0.2
RUN pip3 install numpy==1.15.4
RUN pip3 install scipy==1.2.0
RUN pip3 install Pillow==5.3.0
RUN pip3 install pandas==0.23.4
RUN pip3 install scikit-learn==0.20.1
RUN pip3 install ipywidgets==7.4.2
RUN pip3 install jupyter_contrib_nbextensions==0.5.1
RUN pip3 install jupyter_nbextensions_configurator==0.4.1
RUN pip3 install jupyter-tensorboard==0.1.9
RUN pip3 install tensorflow-hub==0.3.0

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user

WORKDIR ${HOME}
EXPOSE 8888

CMD jupyter notebook --notebook-dir=${HOME} --allow-root --ip="0.0.0.0"
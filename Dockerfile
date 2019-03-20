FROM tensorflow/tensorflow:2.0.0a0-py3-jupyter

RUN pip install --upgrade pip
RUN pip install matplotlib==3.0.2
RUN pip install numpy==1.15.4
RUN pip install scipy==1.2.0
RUN pip install Pillow==5.3.0
RUN pip install pandas==0.23.4
RUN pip install scikit-learn==0.20.1
RUN pip install ipywidgets==7.4.2
RUN pip install jupyter_contrib_nbextensions==0.5.1
RUN pip install jupyter_nbextensions_configurator==0.4.1
RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user


CMD jupyter notebook --allow-root --ip="0.0.0.0"

EXPOSE 8888
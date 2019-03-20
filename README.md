# Hands on tensorflow high level apis
Tutorial on TensorFlow High Level APIs

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ybenoit/hands_on_tensorflow_high_level_apis/master)

## Extensions to add
The notebooks work with jupyter notebook extensions. 
Once you access jupyter, before starting the notebook, go on the __Nbextensions tab__ and check the following extensions:
+ `Exercice2`
+ `ExecuteTime`
+ `highlighter`
+ `Table of Contents (2)`

You can then start the notebooks, and you're good to go!


## Setup working environment -DOCKER-

Execute the following commands in the same directory as `Dockerfile`.


__Build image__

```
docker build -t tf2_devoxx19 .
```

__Check image list__

```
docker images
```

__Run__

```
docker run -d -p 8080:8888 -p 8006:8006 -v $PWD:/tf/notebooks tf2_devoxx19
```

__Check container id__

```
docker ps
```

__Next__

Open in browser at http://127.0.0.1:8080

To retrieve the token for your notebooks type
```
docker logs <container_id>
```

__At the end__

```
docker stop <container_id>
```

## Setup working environment -VIRTUALENV-

Make sure you have Python 3.5 ou 3.6 installed:

```
python3 --version
```

If you don’t have it you can download it [here](https://www.python.org/downloads/release/python-368/).

If you don’t have [virtualenv](https://pypi.org/project/virtualenv/) installed type

```
pip3 install virtualenv
```

Go the the project root and create the virtual environment and activate it (change python version to 3.5 if you have python 3.5 installed):

```
virtualenv --python=python3.6 tf2_devoxx19
source ./tf2_devoxx19/bin/activate
```

Install requirements and launch notebooks:

```
pip3 install --upgrade -r requirements.txt
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
jupyter notebook
```

To exit virtual environment:

```
deactivate
```

To remove virtual environment:

```
rm -rf tf2_devoxx19
```



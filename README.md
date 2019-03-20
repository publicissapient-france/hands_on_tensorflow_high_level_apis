# hands_on_tensorflow_high_level_apis
Tutorial on TensorFlow High Level APIs

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ybenoit/hands_on_tensorflow_high_level_apis/master)

## Extensions to add
The notebooks work with jupyter notebook extensions. 
Once you access jupyter, before starting the notebook, go on the `Nbextensions` tab, and check the extensions `Exercice2`, `ExecuteTime` and `highlighter`.
You can then start the notebooks, and you're good to go !


## Setup working environment -DOCKER-

Execute the following commands in the same directory as `Dockerfile`.


__Build image__

`docker build -t tf2_devoxx19 .`

__Check image list__

`docker images`

__Run__

`docker run -d -p 8080:8888 -p 8006:8006 -v $PWD:/tf/notebooks tf2_devoxx19`

__Check container id__

`docker ps`

__Next__

Open in browser at http://127.0.0.1:8080

You'll need to run `docker logs <container_id>` to retrieve the token for your notebooks.

__Do not forget__

Run `docker stop <container_id>` when you have finished.



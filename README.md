# cucumber-in-docker
dockerize Cucumber ruby
The Timun container is built in latest chromedriver and Chrome browser, so we can only run test within chrome headless setting

## How to:
include this repo files inside your cucumber repository

## Commands
Build the images
```shell
docker build -t timun .
```
Run the test:
```shell
docker run -v "$(PWD)":/app -it timun
```
when something error, need to get into the console, run this:
```shell
docker run --entrypoint=bash -v "$(PWD)":/app -it timun
```
it will mount current directory into the images container file system, and you can edit the files on the fly and rerun test inside opened the bash

If needed to run with specific environment variable:
```shell
docker run -d -e browser=${browser} -e features_to_run=@build/reruns/final_rerun.txt -e rerun_index=rerun \
-v ${rerun_volume_dir}:/app
```
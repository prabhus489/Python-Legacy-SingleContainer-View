# Python-Legacy-SingleContainer-View


#### To build new docker image from this docker file
#### docker build -t fsm-appx .
#### To run the docker image as container
#### Onlinux
#### docker run -d --name fsmapp -v $(pwd):/app -p 5000:5000 -p 8000:8000  fsm-appx
#### Onwindows
#### docker run -d --name fsmappmounted -v "S:\Scalable_Services\Python-Legacy-SingleContainer-View":/app -p 5000:5000 -p 8000:8000 fsm-appx
#### On any
#### docker run -d --name fsmappwithoutmount  -p 5000:5000 -p 8000:8000  fsm-appx

#### To Push this image to the docker hub registry
# docker tag fsm-appx:latest prabhu12yuva/fsm-appx:1.0
# docker push prabhu12yuva/fsm-appx:1.0

#### Another example with new image name
# docker build -t pydjangoflask-appx .
# docker images
# docker login
# docker tag pydjangoflask-appx:latest prabhu12yuva/fsm-appx:fsmappx2.0
# docker push prabhu12yuva/fsm-appx:fsmappx2.0
# docker run -d prabhu12yuva/fsm-appx:fsmappx2.0
# This image contains all the app code files present in /app directory predefinely
# docker pull prabhu12yuva/fsm-appx:python-3.10.4

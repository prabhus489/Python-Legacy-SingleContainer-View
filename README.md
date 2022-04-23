# Python-Legacy-SingleContainer-View


#### To build new docker image from this docker file
#### docker build -t fsm-appx .
#### To run the docker image as container
#### Onlinux
#### docker run -d --name fsmapp -v $(pwd):/app -p 5000:5000 -p 8000:8000  fsm-appx
#### Onwindows
#### docker run -d --name fsmappmounted -v "S:\Scalable_Services\Python-Legacy-SingleContainer-View":/app -p 5000:5000 -p 8000:8000  fsm-appx
#### On any
#### docker run -d --name fsmappwithoutmount  -p 5000:5000 -p 8000:8000  fsm-appx
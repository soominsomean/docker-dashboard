# docker-dashboard
Laura and Soomin's docker dashboard

## Setup and Containerized Environment (for local use)<a name="Setuplocal"></a>

To make use of the code and do further development on your local machine, you will make
use of the Python kernel that is set up in a containerized environment. Before following
the instructions, please make sure you have [Docker](https://www.docker.com/) installed
and is activated on your machine. 

If you already haven't done so, clone this repository. After that, update the submodules:

```
git clone https://github.com/soominsomean/docker-dashboard
cd docker-dashboard
```

Disconnect from the ING VPN, but make sure you're stil connected to the internet. From
your command prompt of choice (git bash works OK as well) build the Docker images. Make
sure you are still in the directory of this repository on your local machine:
```
docker-compose build
```
To create the bar graph, simply run:
```
docker-compose up dashboard
```
Once you are done, open a web browser and type : 
```
http://localhost:8050/
```

To create the histogram, simply run:
```
Ctrl+C
docker-compose up dashboardhist
```
Once you are done, open a web browser and type : 
```
http://localhost:8050/
```

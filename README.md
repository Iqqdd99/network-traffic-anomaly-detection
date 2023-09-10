# network-traffic-anomaly-detection

The resolution of the challenge is on the notebooks folder, the jupyter server can be launched using docker-compose with the following commands: 

```bash
docker-compose build; 
docker-compose up;
```

Or just use plain Docker:

```bash
docker build --tag anomaly-detection .;
docker run -p 8888:8888 \
    -v ./notebooks:/home/franciscoat/notebooks \
    -v ./data:/home/franciscoat/data \
    -e NB_USER="franciscoat" \
    -e CHOWN_HOME=yes \
    -w /home/franciscoat \
    anomaly-detection;
```

Once the server is running the terminal will prompt the address of the server with the authentication token:

```
 http://127.0.0.1:<port (default 8888)>/tree?token=<authentication_token>
```

Open the address in a browser and open the notebook anomaly_detection.ipynb. Trust the notebook to have a correct visualization of the graphics. Run the whole notebook if needed.

Note: if the port 8888 is alreay in use in your machine you can change the desired port to access the jupyter server in the command or/and the Dockerfile `<desired port>:8888`. The server will always prompt the address with the port 8888, change it if necessary.
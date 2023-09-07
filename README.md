# network-traffic-anomaly-detection

docker-compose build; 
docker-compose up;

docker build --tag anomaly-detection .;
docker run -p 8888:8888 \
    -v ./notebooks:/home/franciscoat/notebooks \
    -v ./data:/home/franciscoat/data \
    -e NB_USER="franciscoat" \
    -e CHOWN_HOME=yes \
    -w /home/franciscoat \
    anomaly-detection;
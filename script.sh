
docker network create ejercicio5vol

docker create --name datacontainer_danarox -v /data:/var/www/html -v /data:/usr/share/nginx/html busybox

docker run -itd -p 8011:80 --network ejercicio5vol --volumes-from datacontainer_danarox --name nginx nginx

docker run -itd -p 8030:80 --network ejercicio5vol --volumes-from datacontainer_danarox --name apache danarox/centos-httpd-php

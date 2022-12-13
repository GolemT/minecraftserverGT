FROM openjdk:17

RUN curl https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar >> server.jar && echo "eula=true" >> eula.txt \
        && chmod a+rwx server.jar \ 
        && java -Xmx2048M -Xms2048M -jar server.jar nogui

CMD java -Xmx2048M -Xms2048M -jar server.jar nogui

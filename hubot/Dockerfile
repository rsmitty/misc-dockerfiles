FROM node
RUN npm install -g coffee-script yo 
RUN npm install -g generator-hubot
RUN useradd -d /hubot -m -s /bin/bash -U hubot
USER hubot
WORKDIR /hubot
RUN yo hubot --owner="Spencer" --name="HuBot" --description="HuBot on Docker" --defaults &&\
    npm install hubot-slack --save

CMD bin/hubot -a slack

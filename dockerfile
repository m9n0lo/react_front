FROM ubuntu:20.10



#EXPONEMOS EL PUERTO EN EL QUE VA CORRER LA APP
EXPOSE 4100

RUN mkdir /front-react
COPY . /front-react
WORKDIR /front-react


#INSTALAMOS NODEJS PARA DESCARGAR EL ULTIMO PAQUETE DE REACT
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm

#VERIFICAMOS LAS VERSIONES
RUN npm node -v
RUN npm -v


#INSTALAMOS EL CREATE REACT APP
RUN npm install -g create-react-app

RUN npm i
RUN npm start



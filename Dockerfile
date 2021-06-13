# Ubuntu as base image
FROM ubuntu

# Setting up the enviroment
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update && apt-get install -y --no-install-recommends apt-utils
RUN apt install -y wget
RUN apt install -y python3.8
RUN apt-get install -y python3-pip

# Defining a working enviroment
WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
COPY ./B10-T_Han_Harm_Christiaan_Steffen.ipynb /app/notebook.ipynb
COPY ./dataset_dogs_vs_cats /app/dataset_dogs_vs_cats
COPY ./onze_fotos /app/onze_fotos

RUN pip3 install -r requirements.txt

ENV DEBIAN_FRONTEND noninteractive

# Specifiek aan dit project
RUN apt-get install openjdk-11-jdk-headless -qq > /dev/null
RUN wget -q https://downloads.apache.org/spark/spark-3.1.1/spark-3.1.1-bin-hadoop2.7.tgz
RUN tar -xvf spark-3.1.1-bin-hadoop2.7.tgz
RUN pip install -q findspark

CMD ["jupyter", "lab", "--ip","0.0.0.0", "--port","8888", "--allow-root"]

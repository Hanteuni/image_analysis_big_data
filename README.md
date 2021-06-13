## Project Big Data 
#### Steffen De Jong, Han Teunissen, Harm Laurense & Christiaan Posthuma

---

###### Requirements
1. Docker 18.06.1-ce installed 
2. (recommended) Graphical card connected with CUDA
---

###### Downloading and installing Docker image
1. Make a directory for Docker build and continure to work from here until step x
2. Clone the GIT repo
```
wget https://github.com/Hanteuni/image_analysis_big_data
```
3. Put the folder named "dataset_dogs_vs_cats" and the "onze_fotos" in the docker directory
- You can download the dataset_dogs_vs_cats from here
[link](https://www.kaggle.com/c/dogs-vs-cats/data)
5. Build the image using docker build
```
docker build [PATH TO DOCKER DIRECTORY]
```
5. Then run the docker using docker run
```
docker run -p [PORT] [DOCKER IMAGE]
```
6. Then click on one of the links to run docker in the browser (The last link is recommended)
7. Then go the notebook and run the script

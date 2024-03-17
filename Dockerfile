# Utilizamos una imagen base oficial de Python 3.8
FROM python:3.8-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de requisitos primero para aprovechar la cache de Docker
COPY requirements.txt /app/
# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos de tu aplicación al directorio de trabajo
COPY . /app

# Informa a Docker que la aplicación se ejecuta en el puerto 8080
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

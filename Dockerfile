# Utilizar la imagen oficial de Python como imagen base
FROM python:3.8-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos necesarios al directorio de trabajo
COPY . /app

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir flask

# Indicar el puerto que el contenedor debe exponer
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "./app.py"]

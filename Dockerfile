# Usa una imagen base oficial de Node.js
FROM node:16
# Crear carpeta para la aplicación
WORKDIR /usr/src/app
# Copia los archivos al directorio de trabajo
COPY package*.json ./
# Instalar dependencias del proyecto
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Fuente de la aplicacion completo, copia el resto de los archivos del proyecto al directorio del trabajo.
COPY . .

# Expone el puerto en el que la aplicación va a correr
EXPOSE 3000

# Define comando por defecto para correr la aplicación
CMD [ "node", "app.js" ]
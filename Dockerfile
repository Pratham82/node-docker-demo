# Set the baseimgage for working
FROM node:12

# Setting the working directory
WORKDIR /app

# Copy the file from local to the working directory
COPY package*.json ./

# Run the command specified (Shell form)
RUN npm install

# Copy all the local file to current working directory
COPY . .

# Setting the environment vraible
ENV PORT=3000

# Defining the PORT that this container will listen to
EXPOSE 3000

# Instruction for executing the container (Exec form)
CMD [ "npm", "start" ]
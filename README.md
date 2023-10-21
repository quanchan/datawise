
## Getting Started
There are a couple ways to start our application, depending on your use case.
All of them assumed that you have: 
- Git installed: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- Cloned the project: `git clone https://github.com/quanchan/datawise.git`

### Simple start
This is the recommended way if you just want to run the application as quickly as possible:

First, you will need to have docker installed.
- Docker (Find your appropriate OS guide): https://docs.docker.com/desktop/install/windows-install/

Open a terminal and navigate to the folder that you have cloned the project.

Start the entire application using this command (The first time you run, this application will take a couple minutes to install some dependencies):
```
docker compose up
```

The application is up and running at http://localhost:3000. You can also access the database at localhost:5432 with the credentials stored in .env

To turn off the application, press ctrl + C in the terminal you start the application or use this command in another terminal at the project root:
```
docker compose down
```

### Development start
This is the recommended way if you want to work on the development side of the project.

First, you will need to have nodejs, yarn and docker installed.

- NodeJS: https://nodejs.org/en/download
- Yarn: https://yarnpkg.com/getting-started/install
- Docker (Find your appropriate OS guide): https://docs.docker.com/desktop/install/windows-install/

Next, navigate to the folder that you have cloned the project and install the project dependencies using a terminal window
```
yarn
```

Copy the content of dev-docker-compose.yml to docker-compose.yml and start the database server:
```
docker compose up
```

Run the migrations script to set up the database (Once some schemas changed):
```
yarn db
```

Run the development server:
```
yarn dev
```

The application is up and running at http://localhost:3000. You can also access the database at localhost:5432 with the credentials stored in .env

### Database migration guide
To create new db migration, run:
```
yarn db-migrate create <migration_name> --sql-file
```

To run the newly created db migration, run:
```
yarn db-migrate up <migration_name>
```

To remove the migration, run:
```
yarn db-migrate down <migration_name>
```


## Getting Started

First, you will need to have nodejs, yarn and docker installed.

NodeJS: https://nodejs.org/en/download
Yarn: https://yarnpkg.com/getting-started/install
Docker (Find your appropriate OS guide): https://docs.docker.com/desktop/install/windows-install/

Next, navigate to the root of the project and install the project dependencies using a terminal window
```
yarn
```

Start the database server:
```
docker compose up
```

Run the migrations script to set up the database (Once some schemas changed):
```
yarn db-migrate up all
```

Run the development server:
```
yarn dev
```

The application is up and running at http://localhost:3000

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
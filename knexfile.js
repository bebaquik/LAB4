// Update with your config settings LAB4 Database.

module.exports = {

  development: {
    
      client: 'postgresql',
      connection: {
      database: 'dev-lab4',
      user:     'postgres',
      password: '!@#123qweA'
   },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  staging: {
    client: 'postgresql',
    connection: {
      database: 'staging-lab4',
      user:     'postgres',
      password: '!@#123qweA'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'postgresql',
    connection: {
      database: 'production-lab4',
      user:     'postgres',
      password: '!@#123qweA'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};

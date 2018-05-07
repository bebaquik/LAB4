// Update with your config settings LAB4 Database.

module.exports = {

  development: {
    
      client: 'postgresql',
      connection: {
      database: 'lab4_development',
      user:     'postgres',
      password: '****************'
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
      database: 'lab4_staging',
      user:     'postgres',
      password: '*************'
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
      database: 'lab4_production',
      user:     'postgres',
      password: '****************'
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

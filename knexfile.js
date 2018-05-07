// Update with your config settings LAB4 Database.

module.exports = {

  development: {
    
      client: 'postgresql',
      connection: {
      database: 'LAB4_DEVELOPMENT',
      user:     'postgres',
      password: '1256525897'
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
      database: 'LAB4_STAGING',
      user:     'postgres',
      password: '1256525897'
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
      database: 'LAB4_PRODUCTION',
      user:     'postgres',
      password: '1256525897'
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

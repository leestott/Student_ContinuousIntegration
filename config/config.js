 /* Database Connection String - Database=acsm_00f6343e5d1c903;
 Data Source=eu-cdbr-azure-west-c.cloudapp.net;User Id=bf061487ad2ca6;Password=32936e31 
 */

var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3306,
    database: 'acsm_00f6343e5d1c903',
    host: 'eu-cdbr-azure-west-c.cloudapp.net',
    user: 'bf061487ad2ca6',
    password: '32936e31' 
  },

  test: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3306,
    database: 'acsm_00f6343e5d1c903',
    host: 'eu-cdbr-azure-west-c.cloudapp.net',
    user: 'bf061487ad2ca6',
    password: '32936e31' 
  },

  production: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3306,
    database: 'acsm_00f6343e5d1c903',
    host: 'eu-cdbr-azure-west-c.cloudapp.net',
    user: 'bf061487ad2ca6',
    password: '32936e31' 
  }
};

module.exports = config[env];

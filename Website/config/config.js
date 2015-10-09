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
    
    db: {
      options: {
      port: 3306,
      host: 'eu-cdbr-azure-west-c.cloudapp.net',
    },     
    database: 'acsm_00f6343e5d1c903',    
    user: 'bf061487ad2ca6',
    password: '32936e31' 
    } ,
    port: 3306
    
  },

  test: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
   db: {
      options: {
       port: 3306,
      host: 'eu-cdbr-azure-west-c.cloudapp.net',
    },     
    database: 'acsm_00f6343e5d1c903',    
    user: 'bf061487ad2ca6',
    password: '32936e31' 
    } 
    ,port: 3306
   
  },

  production: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    db: {
      options: {
       port: 3306,
      host: 'eu-cdbr-azure-west-c.cloudapp.net',
    },     
    database: 'acsm_00f6343e5d1c903',    
    user: 'bf061487ad2ca6',
    password: '32936e31' 
    } ,
    
    port: 3306
  }
};

module.exports = config[env];

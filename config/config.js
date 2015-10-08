var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3000,
    db: 'mysql://localhost/student-continuousintegration-development'
  },

  test: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3000,
    db: 'mysql://localhost/student-continuousintegration-test'
  },

  production: {
    root: rootPath,
    app: {
      name: 'student-continuousintegration'
    },
    port: 3000,
    db: 'mysql://localhost/student-continuousintegration-production'
  }
};

module.exports = config[env];

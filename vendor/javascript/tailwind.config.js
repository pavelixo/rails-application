module.exports = {
  purge: {
    enabled: process.env.RAILS_ENV === 'production',
    content: [
      './app/**/*.html.erb',
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
    ],
  }, 
};


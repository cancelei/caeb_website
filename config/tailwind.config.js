const spinaBlogConfig = require('../lib/spina_blog/tailwind.config.js');

module.exports = {
  content: [
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.html.erb",
    "./app/views/blog_posts/*.html.erb",
    "./app/views/custom/**/*.html.erb",
    "./app/views/devise/**/*.html.erb",
    './app/assets/**/*.css',
    ...spinaBlogConfig.content,
  ],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}

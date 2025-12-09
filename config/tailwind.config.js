/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#1d4ed8', // ví dụ thêm màu xanh
        secondary: '#9333ea',
      },
    },
  },
  plugins: [],
}

module.exports = {
  purge: {
    content: ['./app/**/*.erb'],
    enabled: process.env.RAILS_ENV === 'production'
  },
  theme: {
    extend: {}
  },
  variants: {},
  plugins: [require('@tailwindcss/ui')]
}

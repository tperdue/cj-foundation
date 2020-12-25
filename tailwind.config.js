module.exports = {
  purge: [
    "./app/views/**/*.html.erb",
    "./app/**/.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.vue",
    "./app/javascript/**/*.jsx",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        'siteBlue': {
          default: '#1E5499',
          '100': '#99BCEB',
          '200': '#6EA1E2',
          '300': '#4485DA',
          '400': '#276BC4',
          '500': '#1E5499',
          '600': '#163C6F',
          '700': '#0D2544',
          '800': '#050E1A',
          '900': '#000000'
        },
        'siteOrange': {
          default: '#ED7C26',
          '100': '#FDEEE3',
          '200': '#F9D2B4',
          '300': '#F5B584',
          '400': '#F19955',
          '500': '#ED7C26',
          '600': '#D06311',
          '700': '#A04D0D',
          '800': '#713609',
          '900': '#422005'
        },
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};

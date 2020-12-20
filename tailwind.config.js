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
          default: '#4A6EB5',
          '100': '#DBE2F0',
          '200': '#B7C5E1',
          '300': '#92A8D3',
          '400': '#6E8BC4',
          '500': '#4A6EB5',
          '600': '#3B5891',
          '700': '#2C426D',
          '800': '#1E2C48',
          '900': '#0F1624'
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

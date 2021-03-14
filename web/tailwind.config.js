const colors = require('tailwindcss/colors')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    borderWidth: {
      DEFAULT: '1px',
      0: '0',
      2: '2px',
      3: '3px',
      4: '4px',
      6: '6px',
      8: '8px',
      10: '10px',
      12: '12px',
    },
    colors: {
      // Build your palette here
      transparent: 'transparent',
      current: 'currentColor',
      blue: colors.lightBlue,
      fuchsia: colors.fuchsia,
      gray: colors.trueGray,
      green: colors.green,
      lime: colors.lime,
      orange: colors.orange,
      pink: colors.pink,
      purple: colors.purple,
      red: colors.red,
      teal: colors.teal,
      yellow: colors.amber,
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

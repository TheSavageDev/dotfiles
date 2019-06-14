// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    MaterialTheme: {
      // Set the theme variant,
      // OPTIONS: 'Darker', 'Palenight', 'Ocean', ''
      theme: 'Palenight',

      // [Optional] Set the rgba() app background opacity, useful when enableVibrance is true
      // OPTIONS: From 0.1 to 1
      backgroundOpacity: '0.1',

      // [Optional] Set the accent color for the current active tab
      accentColor: '#c0995a',

      // [Optional] Mac Only. Need restart. Enable the vibrance and blurred background
      // OPTIONS: 'dark', 'ultra-dark', 'bright'
      // NOTE: The backgroundOpacity should be between 0.1 and 0.9 to see the effect.
      enableVibrance: true,
      vibrancy: 'bright'
    },
    cursorColor: '#174885',
    foregroundColor: '#7bb2dd',

    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'canary',

    // default font size in pixels for all tabs
    fontSize: 20,

    // font family with optional fallbacks
    // I bought Dank Mono because...if you look at something all day you better like looking at it.
    fontFamily: '"Dank Mono"', // you'll want to change this to a monospace font you own.

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // line height as a relative unit
    lineHeight: 1,

    // letter spacing as a relative unit
    letterSpacing: 0,

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,

    // custom CSS to embed in the main window
    css: '',

    // custom CSS to embed in the terminal window
    termCSS: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',
    shell: '/bin/zsh', // Change to /bin/bash if you don't have zsh
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,
    quickEdit: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  plugins: [
    'hyper-search',
    'hyper-pane',
    'hyper-tab-icons',
    'hyperzsh',
    'hyper-materialshell',
  ],

  localPlugins: [],

  keymaps: {

  },
};

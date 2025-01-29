import type { Config } from "tailwindcss";

export default {
  content: ["./src/**/*.{vue,ts}", "./index.html"],
  theme: {
    extend: {
      colors: {
        "dark": {
          '100': '#B9B9B9',
          '200': '#969696',
          '300': '#686868',
          '400': '#565656',
          '500': '#505050',
          '600': '#3E3E3E',
          '700': '#313131',
          '800': '#252525',
        }
      }
    },
  },
  plugins: [],
} satisfies Config;

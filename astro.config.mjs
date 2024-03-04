import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import tailwind from "@astrojs/tailwind";

import icon from "astro-icon";

export default defineConfig({
  site: 'https://dornicakjakub.cz',
  server: {
    port: 8080,
    host: '0.0.0.0'
  },
  integrations: [mdx(), sitemap(), tailwind(), icon()],
});
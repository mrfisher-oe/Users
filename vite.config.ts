import { defineConfig, loadEnv } from "vite";
import type { ConfigEnv } from "vite";
import react from "@vitejs/plugin-react";
import postcssImport from "postcss-import";
import postcssPresetEnv from "postcss-preset-env";
import postcssNested from "postcss-nested";
import autoprefixer from "autoprefixer";

export default defineConfig(({ mode }: ConfigEnv) => {
  // * Load env file based on `mode` in the current working directory.
  // * Set the third parameter to '' to load all env regardless of the
  // * `VITE_` prefix.
  const env = loadEnv(mode, process.cwd(), "");
  const port = Number(env.PORT);

  return {
    base: "./",
    plugins: [
      react()
    ],
    server: {
      port
    },
    css: {
      postcss: {
        plugins: [
          postcssImport(),
          postcssNested(),
          autoprefixer(),
          postcssPresetEnv({ stage: 1 })
        ]
      }
    },
    build: {
      outDir: "build",
      emptyOutDir: true,
      rollupOptions: {
        input: {
          index: "./index.html"
        },
        output: {
          entryFileNames: "static/[name].[hash].js",
          assetFileNames: "static/[name].[hash].[ext]",
        }
      }
    }
  };
});

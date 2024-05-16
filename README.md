# HREF Digital Solutions | Va por ahi

## Instalacion

Para la instalacion lo primero es posicionarse con la terminal en la ubicacion de donde se encuentre el archivo, una vez encontrado, vamos a utilizar el comando

```bash
$ npm install
```

para instalar todas las dependencias del proyecto, una vez terminado el proceso si queremos visualizar la aplicacion tendremos que escribir el comando

```bash
$ npm run dev
```

## Deploy

En caso de tener un archivo .env, asegurarse que el archivo next.config.js este configurado de la siguiente manera

```bash
const path = require("path");

module.exports = {
  reactStrictMode: true,

  env: {
    ... NEXT_APP_NOMBRE_DE_VARIABLE: process.env.NEXT_APP_NOMBRE_DE_VARIABLE,
  },

  output: "export",
  sassOptions: {
    includePaths: [path.join(__dirname, "css")],
  },
  trailingSlash: true,
  devIndicators: {
    buildActivity: false,
  },
  eslint: {
    ignoreDuringBuilds: false,
  },
};

```

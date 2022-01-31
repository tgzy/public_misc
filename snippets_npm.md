---
output:
  pdf_document: 
    number_sections: yes
    fig_caption: yes
  html_document: 
    number_sections: yes
---
# npm

## Installation
```bash
npm init -y
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
```

## Konfigurationen

### tailwind.config.js
```javascript
const autoprefixer = require("autoprefixer");
const tailwindcss = require("tailwindcss");

module.exports = {
	content: ['./public/**/*.html'],
	darkMode: 'media', // 'purge' or 'media' or 'class'
	theme: {
	  extend: {},
	},
	variants: {},
	plugins: []
  }
```

### postcss.config.js
```javascript
module.exports = {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    }
  }
```

## Build/Run

### Generisch
```bash
npm run build-css
npm run build-css --minify
```

### Production
```bash
NODE_ENV=production npm tailwindcss -i ./src/styles.css -c ./tailwind.config.js -o ./public/styles.css
postcss  ./src/styles.css -c ./tailwind.config.js -o ./public/styles.css
npm run build-production
```

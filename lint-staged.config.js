// const config = {
//   ".{js,jsx}": ["npm run lint", "jest --findRelatedTests --passWithNoTests"],
//   ".{md,json}": "prettier --write",
// };

// module.exports = config;

module.exports = {
  "*.{js,jsx}": [
    "npm run lint"
  ]
};

module.exports = [
  {
    type: 'input',
    name: 'name',
    message: 'What is the name of the component?',
    validate: value => {
      if (/.+/.test(value)) {
        return true;
      }
      return 'name is required';
    },
  },
  {
    type: 'input',
    name: 'description',
    message: 'What is the description of the component?',
  },
  {
    type: 'confirm',
    name: 'use-render',
    message: 'Use Render function?',
  },
  {
    type: 'confirm',
    name: 'use-multiple-stories',
    message: 'Use Render function?',
  },
];

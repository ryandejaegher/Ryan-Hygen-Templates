// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
module.exports = [
  {
    type: 'input',
    name: 'componentTag',
    message: "What's your component tag? (my-element, my-button, etc.)",
  },
  {
    type: 'toggle',
    name: 'addStory',
    message: 'Do you want to add a .stories.js file?',
    enabled: 'Yes',
    disabled: 'No',
  },
];

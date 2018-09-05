'use strict';
const Generator = require('yeoman-generator');

module.exports = class extends Generator {
  constructor(args, opts) {
    super(args, opts);

    this.argument('pageName', { type: String, required: true });
  }

  writing() {
    const path = `./src/Pages/${this.options.pageName.replace('.', '/')}/`;

    this.fs.copyTpl(
      this.templatePath('Messages.elm'),
      this.destinationPath(`${path}Messages.elm`),
      { module: this.options.pageName }
    );

    this.fs.copyTpl(
      this.templatePath('Model.elm'),
      this.destinationPath(`${path}Model.elm`),
      { module: this.options.pageName }
    );

    this.fs.copyTpl(
      this.templatePath('Commands.elm'),
      this.destinationPath(`${path}Commands.elm`),
      { module: this.options.pageName }
    );

    this.fs.copyTpl(
      this.templatePath('Update.elm'),
      this.destinationPath(`${path}Update.elm`),
      { module: this.options.pageName }
    );

    this.fs.copyTpl(
      this.templatePath('View.elm'),
      this.destinationPath(`${path}View.elm`),
      { module: this.options.pageName }
    );
  }
};

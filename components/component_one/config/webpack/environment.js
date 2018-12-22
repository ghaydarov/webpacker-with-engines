const { resolve } = require('path');
const { environment, config } = require('@rails/webpacker');

environment.config.output.path = resolve(config.public_root_path, config.public_output_path);

module.exports = environment

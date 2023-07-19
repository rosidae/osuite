import * as inquirer from 'inquirer';
import chalk from 'chalk';
import * as fs from 'fs';
import { config } from 'dotenv';
  config();

console.clear();

console.log(chalk.blue("Let's get your API keys setup."));
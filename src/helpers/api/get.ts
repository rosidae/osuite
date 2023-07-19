import * as fs from "fs"
import { api_base } from "./base";

export function getApis(): api_base[] {
  let res: api_base[] = [];
  fs.readdirSync("./src/helpers/api").forEach((file) => {
    
  });
  return res;
}
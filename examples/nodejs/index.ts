import * as pulumi from "@pulumi/pulumi";
import * as dsa from "@pulumi/dsa";

const myRandomResource = new dsa.Random("myRandomResource", {length: 24});
export const output = {
    value: myRandomResource.result,
};


const fastify = require( "fastify" )( { logger: true } );
const fs = require( "fs" );
const util = require( "util" );

const readFile = util.promisify( fs.readFile );

import { Animal } from "./models/animal";
import { Mushroom } from "./models/mushroom";

// fastify.route( {
//   method: "GET",
//   url: "/",
//   schema: {
//     response: {
//       200: {
//         type: "array",
//       }
//     }
//   }
// })

fastify.route( {
  method: "GET",
  url: "/animal",
  schema: {
    response: {
      200: {
        type: "array",
        properties: {
          userId: { type: "string" }
        }
      }
    }
  },
  preHandler: async (request: string, reply: string) => {
    return
  },
  handler: async (request: string, reply: string) => {
    let animal = new Animal ("raccoon", "mammal", "omnivore", "North America")
    animal.log();
    return animal.markdown();
  }
})

fastify.route( {
  method: "GET",
  url: "/mushroom",
  schema: {
    response: {
      200: {
        type: "array",
        properties: {
          userId: { type: "string" }
        }
      }
    }
  },
  preHandler: async (request: string, reply: string) => {
    return
  },
  handler: async (request: string, reply: string) => {
    let mushroom = new Mushroom ("white button", "Agaricus bisporus", "convex", "saprotrophic")
    mushroom.log();
    return mushroom.markdown();
  }
})


const start = async() => {
  try {
    await fastify.listen( 8080 );
    fastify.log.info( `server listening on 8080 `);
  } catch ( err ) {
    fastify.log.error( err );
    process.exit(1);
  }
}

start();
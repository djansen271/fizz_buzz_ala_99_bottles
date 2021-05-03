import fastify from 'fastify';

const server = fastify();

import { NinetyNineBottles } from './src/ninetyNineBottles'

server.get('/', async(request, reply) => {
  const ninetyNineBottles = new NinetyNineBottles
  return ninetyNineBottles.verse(1)
});

server.listen(8080, (err, address) => {
  if(err) {
    console.log(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`)
})
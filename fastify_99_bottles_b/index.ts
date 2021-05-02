import fastify from 'fastify';

const server = fastify();

import { SongBuilder } from './src/songBuilder'

server.get('/', async(request, reply) => {
  const songBuilder = new SongBuilder
  return songBuilder.helloWorld()
  // return 'Home page\n'
});

server.listen(8080, (err, address) => {
  if(err) {
    console.log(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`)
})
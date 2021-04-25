import fastify from 'fastify';
import { NinetyNineBottles } from './models/ninetyNineBottles'

const server = fastify();

server.get('/', async(request, reply) => {
  return 'Home\n';
});

server.get('/ping', async (request, reply) => {
  return 'pong\n';
});

server.get('/99-bottles', async(request, reply) => {
  let ninetyNineBottles = new NinetyNineBottles();
  return ninetyNineBottles.song();
});

server.listen(8080, (err, address) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`)
})
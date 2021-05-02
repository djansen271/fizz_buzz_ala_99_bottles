import fastify from 'fastify';

const server = fastify();

server.get('/', async(request, reply) => {
  return 'Home page\n'
});

server.listen(8080, (err, address) => {
  if(err) {
    console.log(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`)
})
# node-http-client-bench [![Build Status][travis-image]][travis-url]

Benchmarks for popular Node.js HTTP client libraries.

These benchmarks use Nginx in a docker container to serve static files of several sizes.

**Versions Tested**

- `node@14.x`
- `axios@0.27.2`
- `got@11.8.3`
- `superagent@8.0.0`
- `isomorphic-fetch@3.0.0`
- `node-fetch@2.6.7`
- `node-fetch@3.2.10`
- `undici@5.10.0`
- `fetch-h2@3.0.2`

## Usage

```
$ docker-compose build
$ docker-compose run benchmark sh
$ node index.js
```

## Results

\${results}

## License

MIT © [Forrest Desjardins](https://github.com/fdesjardins)

[travis-url]: https://travis-ci.org/fdesjardins/node-http-client-bench
[travis-image]: https://img.shields.io/travis/fdesjardins/node-http-client-bench.svg?style=flat

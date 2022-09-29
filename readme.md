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
- `undici@5.10.0`
- `fetch-h2@3.0.2`

## Usage

```
$ docker-compose build
$ docker-compose run benchmark sh
$ node index.js
```

## Results

\
### GET 16K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1750      ±3.64%         108
http.request with http 1.1                    1704      ±3.26%         101
http.request with http 1.0                    1843      ±2.13%         108
http.request with http 1.0 and nodelay        1840      ±3.54%         112
axios                                         1442      ±3.21%          91
got                                           1119      ±4.20%          73
superagent                                    1781      ±2.00%         101
isomorphicFetch                               1516      ±2.27%          89
nodeFetch                                     1562      ±2.09%          91
undici                                        3107      ±4.22%         214
fetch-h2                                       808      ±2.38%          50
```
  
### GET 32K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1766      ±2.04%         103
http.request with http 1.1                    1789      ±1.64%         103
http.request with http 1.0                    1798      ±1.77%         104
http.request with http 1.0 and nodelay        1821      ±1.24%         103
axios                                         1449      ±2.04%          86
got                                           1158      ±2.12%          68
superagent                                    1445      ±2.62%          93
isomorphicFetch                               1451      ±1.77%          85
nodeFetch                                     1470      ±2.81%          87
undici                                        2998      ±1.82%         181
fetch-h2                                       872      ±2.16%          54
```
  
### GET 64K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1494      ±1.41%          86
http.request with http 1.1                    1362      ±1.97%          86
http.request with http 1.0                    1367      ±2.92%          86
http.request with http 1.0 and nodelay        1454      ±1.78%          84
axios                                         1145      ±2.24%          70
got                                            961      ±2.63%          59
superagent                                    1475      ±2.01%          87
isomorphicFetch                               1255      ±1.66%          76
nodeFetch                                     1254      ±1.95%          73
undici                                        2412      ±4.58%         149
fetch-h2                                       795      ±2.01%          50
```
  
### GET 256K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                794      ±2.25%          47
http.request with http 1.1                     789      ±1.89%          46
http.request with http 1.0                     785      ±1.99%          46
http.request with http 1.0 and nodelay         807      ±1.85%          47
axios                                          623      ±1.94%          38
got                                            547      ±2.54%          33
superagent                                     772      ±1.98%          45
isomorphicFetch                                612      ±2.40%          37
nodeFetch                                      646      ±1.96%          38
undici                                        1006      ±2.06%          60
fetch-h2                                       452      ±1.82%          28
```
  
### GET 1024K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                310      ±1.73%          18
http.request with http 1.1                     300      ±1.69%          18
http.request with http 1.0                     296      ±2.21%          18
http.request with http 1.0 and nodelay         306      ±2.16%          18
axios                                          235      ±2.23%          14
got                                            223      ±2.09%          14
superagent                                     291      ±2.47%          18
isomorphicFetch                                237      ±2.65%          14
nodeFetch                                      243      ±2.38%          15
undici                                         319      ±1.40%          18
fetch-h2                                       202      ±1.69%          12
```
  

## License

MIT © [Forrest Desjardins](https://github.com/fdesjardins)

[travis-url]: https://travis-ci.org/fdesjardins/node-http-client-bench
[travis-image]: https://img.shields.io/travis/fdesjardins/node-http-client-bench.svg?style=flat

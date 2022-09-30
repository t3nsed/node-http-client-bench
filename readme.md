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
### GET 2K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1737      ±3.10%         110
http.request with http 1.1                    1779      ±2.20%         105
http.request with http 1.0                    1994      ±1.51%         115
http.request with http 1.0 and nodelay        1994      ±1.65%         112
axios                                         1500      ±3.73%          93
got                                           1148      ±4.11%          75
superagent                                    1768      ±2.98%         105
isomorphicFetch                               1612      ±2.20%          96
nodeFetch                                     1715      ±1.59%          96
undici                                        4057      ±4.40%         254
fetch-h2                                       850      ±2.10%          53
```
  
### GET 4K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               2054      ±1.47%         116
http.request with http 1.1                    1997      ±1.25%         111
http.request with http 1.0                    2056      ±1.73%         115
http.request with http 1.0 and nodelay        2055      ±1.70%         114
axios                                         1379      ±4.15%          92
got                                           1127      ±4.22%          75
superagent                                    1524      ±4.30%         103
isomorphicFetch                               1532      ±2.58%          95
nodeFetch                                     1664      ±1.73%          95
undici                                        4090      ±2.34%         247
fetch-h2                                       703      ±6.87%          59
```
  
### GET 8K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1517      ±5.54%         112
http.request with http 1.1                    1958      ±1.71%         109
http.request with http 1.0                    1990      ±2.38%         113
http.request with http 1.0 and nodelay        1988      ±2.05%         112
axios                                         1584      ±2.19%          92
got                                           1261      ±1.77%          74
superagent                                    1803      ±2.04%         106
isomorphicFetch                               1599      ±1.64%          92
nodeFetch                                     1649      ±1.89%          95
undici                                        3805      ±2.07%         230
fetch-h2                                       909      ±2.06%          56
```
  
### GET 16K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1966      ±1.55%         110
http.request with http 1.1                    1756      ±2.84%         104
http.request with http 1.0                    1714      ±2.52%         106
http.request with http 1.0 and nodelay        1892      ±1.59%         106
axios                                         1502      ±2.02%          89
got                                           1206      ±1.71%          72
superagent                                    1756      ±1.74%          99
isomorphicFetch                               1525      ±2.02%          90
nodeFetch                                     1570      ±1.49%          88
undici                                        3525      ±1.88%         211
fetch-h2                                       868      ±2.15%          53
```
  
### GET 32K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1704      ±2.14%          99
http.request with http 1.1                    1697      ±1.75%          98
http.request with http 1.0                    1744      ±1.71%         100
http.request with http 1.0 and nodelay        1722      ±1.47%          98
axios                                         1304      ±2.58%          82
got                                           1010      ±3.46%          68
superagent                                    1538      ±1.94%          92
isomorphicFetch                               1385      ±2.03%          82
nodeFetch                                     1429      ±1.76%          86
undici                                        2944      ±3.16%         184
fetch-h2                                       799      ±2.29%          53
```
  
### GET 64K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1451      ±1.56%          81
http.request with http 1.1                    1412      ±1.19%          78
http.request with http 1.0                    1420      ±1.48%          81
http.request with http 1.0 and nodelay        1429      ±1.59%          80
axios                                          998      ±2.09%          62
got                                            867      ±3.00%          60
superagent                                    1376      ±2.75%          83
isomorphicFetch                               1043      ±2.45%          69
nodeFetch                                     1121      ±2.27%          72
undici                                        2222      ±2.56%         147
fetch-h2                                       702      ±2.01%          46
```
  
### GET 256K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                744      ±2.55%          45
http.request with http 1.1                     722      ±2.37%          45
http.request with http 1.0                     759      ±2.05%          45
http.request with http 1.0 and nodelay         773      ±1.87%          45
axios                                          598      ±2.51%          37
got                                            528      ±2.18%          34
superagent                                     747      ±2.07%          45
isomorphicFetch                                594      ±2.65%          38
nodeFetch                                      635      ±2.56%          39
undici                                         994      ±1.65%          59
fetch-h2                                       463      ±1.58%          28
```
  
### GET 1024K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                307      ±1.74%          18
http.request with http 1.1                     287      ±2.38%          18
http.request with http 1.0                     295      ±2.30%          18
http.request with http 1.0 and nodelay         300      ±2.10%          18
axios                                          231      ±2.21%          14
got                                            221      ±2.59%          14
superagent                                     297      ±2.18%          18
isomorphicFetch                                239      ±2.24%          15
nodeFetch                                      240      ±2.75%          15
undici                                         310      ±1.67%          18
fetch-h2                                       200      ±1.80%          12
```
  

## License

MIT © [Forrest Desjardins](https://github.com/fdesjardins)

[travis-url]: https://travis-ci.org/fdesjardins/node-http-client-bench
[travis-image]: https://img.shields.io/travis/fdesjardins/node-http-client-bench.svg?style=flat

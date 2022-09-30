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

\
### GET 2K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1886      ±3.50%         116
http.request with http 1.1                    1928      ±2.12%         110
http.request with http 1.0                    2065      ±1.64%         116
http.request with http 1.0 and nodelay        2051      ±1.80%         122
axios                                         1459      ±3.43%          93
got                                           1213      ±3.57%          76
superagent                                    1835      ±2.31%         105
isomorphicFetch                               1674      ±2.24%          99
nodeFetch (^2.6.7)                            1657      ±2.12%         101
nodeFetch (latest)                             491     ±75.45%          49
undici                                        4377      ±4.30%         269
fetch-h2                                       901      ±2.13%          55
```
  
### GET 4K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               2157      ±1.04%         120
http.request with http 1.1                    2071      ±1.33%         114
http.request with http 1.0                    2178      ±1.06%         120
http.request with http 1.0 and nodelay        2183      ±0.94%         117
axios                                         1688      ±1.80%          97
got                                           1344      ±1.47%          78
superagent                                    1949      ±1.20%         107
isomorphicFetch                               1714      ±1.41%         100
nodeFetch (^2.6.7)                            1781      ±1.23%          98
nodeFetch (latest)                             866      ±1.14%          48
undici                                        4332      ±2.30%         255
fetch-h2                                       975      ±1.34%          58
```
  
### GET 8K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               2113      ±1.45%         119
http.request with http 1.1                    2039      ±1.32%         112
http.request with http 1.0                    2100      ±1.28%         117
http.request with http 1.0 and nodelay        2067      ±1.18%         116
axios                                         1655      ±1.68%          92
got                                           1279      ±1.88%          74
superagent                                    1905      ±1.15%         106
isomorphicFetch                               1658      ±1.39%          96
nodeFetch (^2.6.7)                            1714      ±1.23%          96
nodeFetch (latest)                             856      ±1.55%          48
undici                                        4014      ±1.98%         244
fetch-h2                                       952      ±1.72%          58
```
  
### GET 16K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               2035      ±1.54%         112
http.request with http 1.1                    1913      ±1.44%         108
http.request with http 1.0                    1914      ±1.65%         108
http.request with http 1.0 and nodelay        1974      ±1.17%         111
axios                                         1562      ±1.78%          93
got                                           1218      ±1.81%          72
superagent                                    1863      ±1.11%         103
isomorphicFetch                               1600      ±1.52%          90
nodeFetch (^2.6.7)                            1650      ±1.36%          93
nodeFetch (latest)                             813      ±1.76%          47
undici                                        3736      ±1.83%         215
fetch-h2                                       910      ±1.72%          61
```
  
### GET 32K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1734      ±1.70%         101
http.request with http 1.1                    1667      ±1.97%          98
http.request with http 1.0                    1846      ±1.11%         101
http.request with http 1.0 and nodelay        1826      ±1.74%         102
axios                                         1416      ±2.23%          83
got                                           1149      ±1.84%          69
superagent                                    1625      ±1.67%          93
isomorphicFetch                               1462      ±2.03%          84
nodeFetch (^2.6.7)                            1523      ±1.36%          85
nodeFetch (latest)                             754      ±1.81%          44
undici                                        3100      ±2.50%         192
fetch-h2                                       820      ±1.83%          51
```
  
### GET 64K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent               1464      ±1.34%          82
http.request with http 1.1                    1422      ±1.37%          79
http.request with http 1.0                    1446      ±1.37%          82
http.request with http 1.0 and nodelay        1445      ±1.42%          82
axios                                         1110      ±1.77%          67
got                                            948      ±2.23%          57
superagent                                    1443      ±2.36%          85
isomorphicFetch                               1175      ±2.22%          73
nodeFetch (^2.6.7)                            1185      ±2.20%          74
nodeFetch (latest)                             577      ±2.55%          37
undici                                        2249      ±4.50%         148
fetch-h2                                       775      ±2.14%          49
```
  
### GET 256K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                804      ±1.64%          47
http.request with http 1.1                     768      ±1.83%          45
http.request with http 1.0                     784      ±2.14%          46
http.request with http 1.0 and nodelay         784      ±1.77%          46
axios                                          582      ±2.84%          38
got                                            529      ±2.29%          32
superagent                                     680      ±4.79%          43
isomorphicFetch                                633      ±1.79%          37
nodeFetch (^2.6.7)                             633      ±2.64%          38
nodeFetch (latest)                             353      ±2.15%          22
undici                                         969      ±1.91%          57
fetch-h2                                       432      ±2.56%          27
```
  
### GET 1024K.txt
```
Module                                         OPS         RME     Samples
---------------                         ----------  ----------  ----------
http.request with default agent                305      ±1.97%          18
http.request with http 1.1                     293      ±2.50%          18
http.request with http 1.0                     295      ±2.62%          18
http.request with http 1.0 and nodelay         302      ±2.50%          18
axios                                          228      ±2.02%          14
got                                            215      ±2.71%          14
superagent                                     295      ±2.07%          17
isomorphicFetch                                234      ±2.66%          15
nodeFetch (^2.6.7)                             242      ±2.30%          15
nodeFetch (latest)                             129      ±1.98%           9
undici                                         307      ±1.82%          18
fetch-h2                                       188      ±8.83%          12
```
  

## License

MIT © [Forrest Desjardins](https://github.com/fdesjardins)

[travis-url]: https://travis-ci.org/fdesjardins/node-http-client-bench
[travis-image]: https://img.shields.io/travis/fdesjardins/node-http-client-bench.svg?style=flat

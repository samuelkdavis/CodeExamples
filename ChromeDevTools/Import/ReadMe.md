Note: Loading npm packages directly into the f12 console probably isn't possible
may need to edit the html itself - may require a reload though?

Press F12, run the following:

``` javascript
import('path/to/module.js').then(m => module = m)

// [doSomething] is an exported function from [module.js].
module.doSomething()
```

import ky from 'ky';

const json = await ky.post('https://example.com', {json: {foo: true}}).json();

console.log(json);


unpkg has all npm libraries
https://unpkg.com/

https://unpkg.com/ky@1.5.0/distribution/index.js


import('https://unpkg.com/ky@1.5.0/distribution/index.js').then(m => module = m)
module.post('https://example.com', {json: {foo: true}}).json();



import ky from 'ky';

const json = await ky.post('https://example.com', {json: {foo: true}}).json();

console.log(json);


fetch('https://jsonplaceholder.typicode.com/posts/1')
  .then(res => res.json())
  .then(console.log)

  //blocked by chrome security

// while on duckduckgo.com
await fetch('duckduckgo.com')
//Response {type: 'basic', url: 'https://duckduckgo.com/duckduckgo.com'
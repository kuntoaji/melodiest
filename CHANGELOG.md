development:

  * remove Melodiest::Auth::Http module, it's better to use sinatra-authorization extension
  * refactor Melodiest::Setting.setup so that it can be overridden via app and remove thin as dependency

0.2.x:

  * add sinatra application boilerplate generator
  * add melodiest command to run generator
 
0.1.x:

 * add http authorization module
 * set thin as server
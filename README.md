# IHaskell for Data Science  
  
Put the `data-ihaskell.*` script in your `PATH`. Use `.bat` or `.sh` depending if you are on Windows or Unix (respectively).  
  
- `data-ihaskell rebuild` Builds the image, useful for adding more dependencies  
- `data-ihaskell run` Runs an IHaskell instance in the current directory  

To **add more dependencies** add them to the `IHaskell/Dockerfile` file after line 38, following the same format as all the other added:  
  
```
...
&& stack install csv \
&& stack install vector \
&& stack install flow \
&& stack install ihaskell-charts \
&& stack install <your-dependency-here>
&& stack install random
...
```

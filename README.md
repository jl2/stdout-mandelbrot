# stdout-mandelbrot

## About

Write a Mandelbrot Set fractal to stdout.

Converted to Common Lisp from [this Go code.](https://gist.github.com/benhoyt/24b9caf9715659c76f7b652bbdc8a834)

I was curious about the efficiency of the Go version vs the Common Lisp version.

## Example

```lisp
(ql:quickload :stdout-mandelbrot)
(stdout-mandelbrot:main nil)
```

## Building
```bash
git clone https://github.com/jl2/stdout-mandelbrot.git
cd stdout-mandelbrot
make
./clmandelbrot
```

## License

ISC

Copyright (c) 2023 Jeremiah LaRocco <jeremiah_larocco@fastmail.com>



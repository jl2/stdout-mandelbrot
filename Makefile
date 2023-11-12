
clmandelbrot: manifest.txt *.lisp *.asd Makefile
	buildapp --output clmandelbrot \
             --manifest-file ~/src/lisp/stdout-mandelbrot/manifest.txt \
             --load-system asdf \
	         --load-system sb-posix \
             --load-system stdout-mandelbrot \
             --entry 'stdout-mandelbrot:main'

manifest.txt: *.asd Makefile
	sbcl --no-userinit \
         --no-sysinit \
         --non-interactive \
         --load ~/quicklisp/setup.lisp \
		 --eval '(ql:write-asdf-manifest-file "~/src/lisp/stdout-mandelbrot/manifest.txt")'

clean:
	rm -Rf manifest.txt  *.fasl

.PHONY: clean

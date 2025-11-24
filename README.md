prolog-playground
=================
From [The GNU Prolog web site](http://www.gprolog.org/) official code sample(`GNU-Prolog\examples\ExamplesC`), compilable.

### Notes
- Use [The GNU Prolog web site](http://www.gprolog.org/) instead of [SWI-Prolog](https://www.swi-prolog.org/)

### To play
- [prolog-rands/crime.pl at master · xmonader/prolog-rands](https://github.com/xmonader/prolog-rands/blob/master/crime.pl)

### Tutorials
- [**Prolog 语言入门教程 - 阮一峰的网络日志**](https://www.ruanyifeng.com/blog/2019/01/prolog.html)
- [My Journey into CLP(FD): A Constraint Logic Programming Sketch | by Kenichi Sasagawa | Medium](https://medium.com/@kenichisasagawa/my-journey-into-clp-fd-a-constraint-logic-programming-sketch-cea34f1648e4)



```
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/mingw64/bin:/c/Users/19081126D/Downloads/GNU-Prolog/bin/" && gcc -shared -fPIC -o main.dll main.o -static-libgcc -l:libbips_fd.a -llinedit -lengine_fd -lbips_pl -lengine_pl -L/c/Users/19081126D/Downloads/GNU-Prolog/lib -L/mingw64/lib -I/mingw64/include

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/mingw64/bin:/c/Users/19081126D/Downloads/GNU-Prolog/bin/" && /c/Users/19081126D/Downloads/GNU-Prolog/bin/gplc --verbose -C '-shared -fPIC  -lws2_32 -l:libbips_fd.a -l:liblinedit.a -l:libengine_fd.a -l:libbips_pl.a -l:libengine_pl.a -L/c/Users/19081126D/Downloads/GNU-Prolog/lib -L/mingw64/lib -I/mingw64/include' main.pl main.c --object
```
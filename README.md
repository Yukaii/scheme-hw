程式語言 Scheme 作業
===================

###範例輸出

![result](result.png)

```scheme
(inv_app '(1 2 3) '(4 5 6))
; (6 5 4 3 2 1)

(dbl_atm 'a '(a (b c a (a d))))
; (a a (b c a a (a a d)))
```


###說明
####安裝與使用(OSX)

```bash
brew install mit-scheme
brew install rlwrap  # Readline Wrapper

rlwrap scheme 		 # 啟動 scheme
```

####Debug 用的 print function

```scheme
(define (print . args)
  (cond ((not (null? args))
         (display (car args))
         (apply print (cdr args)))))
```


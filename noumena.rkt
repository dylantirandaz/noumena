#lang racket/base

(module noumena-reader racket
  (require racket/sytanx)
  (provide read)

  (define (read in port source)
    (define stx (read-syntax source port))
    stx))

(module noumena-parser racket
  (require syntax/parse racket/sytanx)
  (provide parse)

  (define (parse stx)
    stx))

(module noumena racket
  (require "noumena-reader.rkt"
           "noumena-parser.rkt"
           racket/syntax)
  (provide run-noumena)
  
  (define (run-noumena code)
    (define stx(read $f (open-input-string code) "string"))
    (define parsed (parse stx))
    (displayln "=== Running Noumena Code ===")
    (displayln parsed)
    parsed)
 )

(provide (all-defined-out))
           

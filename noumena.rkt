#lang racket/base

(require racket/syntax)


;;Dual Declaration
(define-syntax (declare stx)
  (syntax-parse stx
    [(_identifier ":" _type:id "=" expr:expr)
     #'(define id expr)]
    [(_ id:identifier ":" _type:id)
     #'(define id 'noumenon)]))

;;Function-like Declarations with Type Annotation
(define-syntax (intuition stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id_) ... ")" "->" _ret:expr "{" body:expr ... "}")
        #'(define (id p ...) body ...)]))

(define-syntax (category stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id) ... ")" "->" _ret:expr "{" body:expr ... "}")
     #'(define (id p ...) body ...)]))

(define-syntax (transcendental stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id) ... ")" "->" _ret:expr "{" body:expr ... "}")
     #'(define (id p ...) body ...)]))

(define-syntax (analytic stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id) ... ")" "{" body:expr ... "}" )
     #'(define (id p ...) body ...)]))

(define-syntax (synthetic stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id) ... ")" "{" body:expr ... "}" )
     #'(define (id p ...) body ...)]))

(define-syntax (imperative stx)
  (syntax-parse stx
    [(_ id:identifier "(" (p:id ":" _t:id) ... ")" "{" body:expr ... "}" )
     #'(define (id p ...) body ...)]))

;;Knowledge Qualifiers

(define-syntax (a_priori stx)
  (syntax-parse stx
    [(_ constant id:identifier "=" expr:expr)
     #'(define id expr)]
    [(_ constant id:identifier)
     #'(define id 'a-priori-constant)]))

(define-syntax (a_posteriori stx)
  (syntax-parse stx
    [(_ var id:identifier "=" expr:expr)
        #'(define id expr)]
    [(_ var id:identifier)
     #'(define id 'a-posteriori-var)]))


;;all definitions 
(provide
  declare
  intuition
  category
  transcendental
  analytic
  synthetic
  imperative
  a_priori
  a_posteriori
  MORAL_LAW
  freedom_as_appears
  freedom_in_itself
  perceive_choice
  understand_freedom
  postulate_freedom
  act_freely)  

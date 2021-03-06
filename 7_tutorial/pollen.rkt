#lang racket
(require pollen/decode pollen/misc/tutorial txexpr)
(provide root)
(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc (compose1 smart-quotes smart-dashes))))

(provide author em)
(provide author)
(define author "Trevor Goodchild")
(define (em . elements)
  (txexpr 'extra-big empty elements))

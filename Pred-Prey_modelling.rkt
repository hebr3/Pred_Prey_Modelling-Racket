#lang racket

; required to create the images and animations
(require 2htdp/image)
(require 2htdp/universe)

; numerical constants
(define HEIGHT 300) ; distances in terms of pixels
(define WIDTH 300)

; graphical constants
(define DOT (circle 10 'solid 'black))

; generates an image with a dot based on a given t value
(define (track t)
  (place-image (circle 10 'solid 'black)
               (+ 100 (* 90 (cosd t))) (- 100 (* 90 (sind t)))
               (empty-scene 200 200)))

; generates an animation of a dot
(animate track)

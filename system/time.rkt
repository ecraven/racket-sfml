#lang racket

(provide (all-defined-out))
(require
 ffi/unsafe
 "../sfml-util.rkt"
 "defsys.rkt")

(define-cstruct _sfTime ([microseconds _int64]))

(define-all-types defsys sfTime
  ([asSeconds (_fun _sfTime  -> _float)]
   [asMilliseconds (_fun _sfTime  -> _int32)]
   [asMicroseconds (_fun _sfTime  -> _int64)]))

(defsys sfSeconds (_fun _float -> _sfTime))
(defsys sfMilliseconds (_fun _int32 -> _sfTime))
(defsys sfMicroseconds (_fun _int64 -> _sfTime))
(defsys sfTime_Zero _sfTime)

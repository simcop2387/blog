---
author: simcop2387
date: '2010-07-25 17:13:42'
layout: post
slug: error-messages-and-the-values-of-functions
status: publish
title: Error messages and the values of functions.
wordpress_id: '105'
? ''
: - Farnsworth
  - General
---

I've spent a good deal of time recently getting rid of all the
calls to `die` and friends in the code and switching them to the
error reporting module i've made so that i can start adding
exceptions and a proper `return[]` to the language. I've also
finally cleaned up the massively strange looking error when you try
to convert between incompatible units,
`Conformance error, left side has different units than right side $VAR1 = bless( [ 'kg' ], 'Fetch' );`
that didn't even tell you about both sides to one that's much more
readable and understandable
`Conformance error, can't convert from length to mass`. I still
have one more error message that i know of that is incredibly
obtuse and that will come next. Now that i've switched away from
using `die` directly i can start making an error object that i pass
around instead so that i can differentiate between an error and a
return value. I needed this because i need to use `die` in perl to
smash the stack and go back to the point where the function or
lambda was called. This is all because currently I'm using a
recursive descent pattern to evaluate the AST from the parser (I'm
not doing any processing on the AST for optimization or even to
order operations directly so that i can avoid deep recursion, it is
a design flaw but it makes hacking on it SO easy.) After i finish
this error code stuff i'm going to begin working on the rest of the
stuff needed for merging the lambda code and function code which
amounts to creating an operator (currently thinking of using `~`)
to get a reference to a function and then moving to the new syntax,
`` defun foo={`bar` bar ** 2}; `` I'll keep the old style syntax
around for some time though.



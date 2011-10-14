---
author: simcop2387
date: '2010-08-07 23:59:35'
layout: post
slug: intentionally-unsupported
status: publish
title: Intentionally Unsupported
wordpress_id: '135'
? ''
: - Farnsworth
  - General
---

**The following feature is intentionally unsupported since it has come into being while being considered depreciated until a more permanent and logical system can be created.**

To go along with all the other changes I've made I have added in a
new operator that lets you get at the actual value for a function
so that you can do some rather nifty things with it

    &push

And what you'll get is something like

    {`arr byref isa [] , x isa ...` arr = arr + x; }

While this might seem a little pointless at first it'll let you do
things like alias one function to another without having to create
a new stack frame and function to accomplish it.

    defun foo={`x` x * x};
    defun bar=?

Now that too seems a little pointless since you could just define
both of them to be the same to begin with, BUT when you've got a
large function that you don't want to have to copy and paste to
multiple places it ends up very nice since you can have the
interpreter do it for you. Now the really nifty part is that you
can redefine an existing function while keeping around a copy of
the original so that you can call back to it. This lets you create
an automatically memoized version of an arbitrary function
(assuming you know the inputs) and other really nifty and nasty
things. I'm going to write a quick and dirty little memoization
system in a bit to demonstrate this.




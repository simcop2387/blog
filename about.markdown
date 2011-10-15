---
author: simcop2387
date: '2010-04-26 03:18:05'
layout: article
slug: about
status: publish
title: About
wordpress_id: '2'
---

Just a quiet place for me to post news and things related to the
slowly up and coming Farnsworth programming language, along with
some minor personal things. A bit about the language: I've been
trying to design it to be as close to an ideal language for Applied
Mathematics (I've been giving theoretical stuff some thought but
I'm not sure how to accommodate it just yet) and Physics. Because
of this it's been taking more of a functional design but not to the
point where it ends up difficult to write any kind of general
program in. It originally started as an open source clone of the
Frink language/system but I've since decided that I didn't like its
grammar (there's a few things in it that make it difficult if not
impossible to parse with a yacc like parser); So I've been starting
to take it into my own direction. There is an evaluator on the
website but please be gentle on it since it runs it all on a VM at
my house and the interpreter does have some issues with recursion
(memory profile grows very fast). On the back end it uses PARI/GP
to do the actual calculations so it can get higher precision
floating point math along with complex math, etc.



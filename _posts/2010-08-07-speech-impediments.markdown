---
author: simcop2387
date: '2010-08-07 20:00:20'
layout: post
slug: speech-impediments
status: publish
title: Speech Impediments
wordpress_id: '134'
? ''
: - Farnsworth
  - General
---

I've finally gotten all the work done on merging the lambda and
function code. This resulted in a slight API change that nobody
cared about because there isn't anyone else out there doing
anything with this. The new syntax looks like this:
    defun function=lambda

What this means is that you can define a function by creating ANY
expression that evaluates out to a lambda and assign it to the
function. So you can do something like this:
    defun count={`` var count=0; {`` ++count}} [];

Then when you use the function C<count[]\> it'll increment the
variable every single time and return the value. This makes for a
slightly nicer looking way to make static values between function
calls since before you'd have to do something like:
    {``  var count=0; count{} := {++count}} [];

Which can start getting rather nasty looking to work with and debug
when you start to have large functions or large amounts of static
variables (Though when you have multiple functions sharing the same
variables you can still use this form).



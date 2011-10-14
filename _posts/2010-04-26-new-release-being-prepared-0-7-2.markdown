---
author: simcop2387
date: '2010-04-26 20:05:58'
layout: post
slug: new-release-being-prepared-0-7-2
status: publish
title: New release being prepared, 0.7.2
wordpress_id: '15'
? ''
: - Releases
  - Releases
---

I'm getting ready to upload a new version of farnsworth, 0.7.2 to
CPAN, it contains a fix in the parser for equations like 2a\*\*2
correctly parsing as 2 \* (a \*\* 2) and more like it. This fixes
the last known issue with the parser and makes me very happy. I'll
be working on 0.7.3 after exams and it should contain mostly only
documenation updates and fixes. (there is also experimental support
for a new lambda syntax in the same vein as ruby, e.g. {|x|
x\*\*2}, i don't know if it'll stay or not but it'd be nice to get
the backticks back for other uses.) EDIT: apparently i missed
something when adding the alternate syntax lambda support, so its
not correctly in there and doesn't work, i did say it was
experimental didn't i?



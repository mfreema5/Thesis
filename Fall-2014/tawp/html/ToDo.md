#“ToDo list” for ‘tawp’

##Secondary &lt;nav&gt; for contents

It might be a good idea to add another &lt;nav&gt; element that has the over-all contents (like in `index.html:article#contents`), to appear at high screen-widths, underneath the main &lt;nav&gt; box.  Should be able to recycle a lot of the styling from the main &lt;nav&gt;.

##Better font stack

The fonts are just horrible.  I prefer *sans-serif* fonts for most things.  I'd love to find a useful and attractive narrow font for the headings, paired with a nice, boring yet oh-so-readible font for the body text.  The blockquotes could maybe get a *serif* font.

##Footer

Basic information: my name, etc.  What I envision is that it's in two places: inline with the &lt;article&gt; stuff inside &lt;main&gt;, and outside of &lt;main&gt;, to the right (under the main &lt;nav&gt; box).  The inline one is visible at small screen widths, the one to the right is visible at large screen widths.

##“About” page

An additional page for info about me, what ‘tawp’ is, etcetcetc.  I'd prefer that it recycles as much CSS as possible.

##“Top” button in inter-article &lt;nav&gt;

In `practical-impact.thesis.html` there are &lt;nav&gt; elements that appear at stupidly-small screen-widths.  Currently there's “index” and “refs”; I'm thinking it might be worthwhile to add a “top” between them, to go back to the top of the page.  The tricky bit is making sure they never wrap onto two lines at silly-narrow screen widths.

I'm also wondering if maybe the self-link &lt;nav&gt; element (the &lsquo;button&rsquo; for &ldquo;Thesis&rdquo; while on the `practical-impact-thesis.html` page) should similarly force the page to the top, when clicked.  I have no idea how to make that happen.  Javascript, maybe?  (Scripting that feature seems reasonable, since the disabled-javascript fallback is that it just would do nothing, which is indistinguishable from its current behavior.)

###Zero Javascript

“Zero” is [hyperbole](http://www.britannica.com/EBchecked/topic/279502/hyperbole).  If there's something that can't be done with anything but Javascript (such as forcing the viewport to jump back to the top of a page), then I'll use Javascript.  But, in my opinion, anything that can be done with clever CSS, should be. As far as I can tell, browsers render CSS/HTML a hell of a lot faster than they execute Javascript.  Not to mention that grumpy old men (like me) will often just disable Javascript entirely while browsing the intarwebs.




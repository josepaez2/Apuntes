You may also have noticed the code that appears just 
inside the form tag:

<input name="utf8" type="hidden" value="&#x2713;" />
<input name="authenticity_token" type="hidden"
       value="NNb6+J/j46LcrgYUC60wQ2titMuJQ5lLqyAbnbAUkdo=" />
This code, which isn’t displayed in the browser, is used
internally by Rails, so it’s not important for us to 
understand what it does. Briefly, it uses the Unicode 
character &#x2713; (a checkmark ✓) to force browsers 
to submit data using the right character encoding, and
 then it includes an authenticity token, which Rails 
 uses to thwart an attack called a cross-site request
 forgery (CSRF). Knowing when it’s OK to ignore detail
 like this is a good mark of technical sophistication
 (Box 1.1).)10
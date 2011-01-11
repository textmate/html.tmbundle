
This is a quick fork of the HTML bundle on that comes with Textmate, to allow php array structures to be folded like other container objects in Textmate. 

This brings PHP arrays inline with javascript object literals, or arrays in other languages.

These are in the html bundle, because PHP syntax is actually evaluated in this bundle, when dealing with files that use both kinds of markup

### How to install

First of all jump to your Bundles directory:

        cd ~/Library/Application Support/TextMate/Bundles/

Then remove the existing bundle

        rm -rf HTML.tmbundle

Then clone this one in:

        git clone git://github.com/chris-d-adams/html.tmbundle.git HTML.tmbundle
        
        

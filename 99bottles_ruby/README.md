## My Notes

### Ch. 8

- we go through extracting functionality into a class
  - previously, we had done this with 100% safe changes (make a change, run tests, make a change, run tests, with every time making sure that the tests pass)
    - there were some nice tricks to add/remove params with default values to let the tests pass all the way through, then remove the defaults
    - here, we extract into a new class, but also make some changes to that class
      - we have to do a bit more before we have the tests as a backstop
    - her suggestion: this technique is good for some small changes, but anything bigger, probably best to TDD by writing tests for the new class first
    - make predictions and try it out and refine predictions

# 99 Bottles

## Installing Ruby

### Windows

There's an installer, it's easy.
http://rubyinstaller.org/

### Mac

Newer macs ship with a usable version of Ruby.

Try `ruby -v` in a terminal window, and if it's 1.9.x or 2.x you're fine.

http://www.railstutorial.org/book/beginning#sec-install_ruby
http://tutorials.jumpstartlab.com/topics/environment/environment.html
http://docs.railsbridge.org/installfest/macintosh

### Linux

Ubuntu: http://docs.railsbridge.org/installfest/linux
https://www.ruby-lang.org/en/installation/

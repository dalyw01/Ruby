# Ruby
- http://www.korenlc.com/nested-arrays-hashes-loops-in-ruby/
- http://www.rubyist.net/~slagell/ruby/objinitialization.html
- https://www.foragoodstrftime.com/
- https://rubular.com/

I personally use **RVM** (Ruby Version Manager) to manage Ruby versions on my machine 

To install it simply run

```
\curl -sSL https://get.rvm.io | bash
```

Then to set RVM up run

```
source /Users/dalyw01/.rvm/scripts/rvm
```

Install the required version of Ruby e.g 2.6.2

```
rvm install 2.6.2
```

Check the current version being used by your machine is the one you downloaded

```
rvm list
=* ruby-2.5.3 [ x86_64 ]
   ruby-2.6.2 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

If for some reason it's not using that version, run

```
rvm use 2.6.2
Using /Users/dalyw01/.rvm/gems/ruby-2.6.2

```
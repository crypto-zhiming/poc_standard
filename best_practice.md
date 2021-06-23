# Ruby Best Practice

This is a part of [Ruby Style Guide](https://rubystyle.guide/).

## Double Quotes by Default

Prefer double-quotes unless your string literal contains " or escape characters you want to suppress. The [single-quotes](https://rubystyle.guide/#consistent-string-literals-single-quote) is also good, but the gem standard use double-quotes as default.

```ruby
# bad
name = 'Bozhidar'
sarcasm = "I \"like\" it."

# good
name = "Bozhidar"
str = "I'm a body"
sarcasm = 'I "like" it.'
```

## Use %w %i

```ruby
# bad
STATES = ['draft', 'open', 'closed']

# good
STATES = %w[draft open closed]

# bad
STATES = [:draft, :open, :closed]

# good
STATES = %i[draft open closed]
```

## No to_s

Don’t use Object#to_s on interpolated objects. It’s called on them automatically.

```ruby
# bad
message = "This is the #{result.to_s}."

# good
message = "This is the #{result}."
```

## String#chars

```ruby
str = 'hello world'

# bad
str.split("")

# good
str.chars
```

## gsub vs sub / gsub vs tr

- [sub](https://ruby-doc.org/core-3.0.1/String.html#method-i-sub)
- [tr](https://ruby-doc.org/core-3.0.1/String.html#method-i-tr)
- [gsub](https://ruby-doc.org/core-3.0.1/String.html#method-i-gsub)

sub just replace the first matched word.

tr will replace the characters one by one.

```ruby
url = 'http://example.com'
str = 'lisp-case-rules'

# bad
url.gsub('http://', 'https://')
str.gsub('-', '_')

# good
url.sub('http://', 'https://')
str.tr('-', '_')
```

```ruby
words = 'foo bar'
words.gsub(/\w+/, &:capitalize) # => 'Foo Bar'

words = "ffoo ffoo"
words.gsub(/ff/, 'ff' => 'F') # => 'Foo bar'
```

## Plain Text Search in String

```ruby
foo = 'I am an example string'

# bad - using a regular expression is an overkill here
foo =~ /example/

# good
foo['example']
```

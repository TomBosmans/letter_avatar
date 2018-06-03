# LetterAvatar

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'letter_avatar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install letter_avatar

## Usage

Set up the configuration (or use the default one)
```ruby
LetterAvatar.configuration do |config|
  config.size = '500x500'
  config.path = '/images'
end
```

Start creating avatars
```ruby
avatar = LetterAvatar::Avatar.new('hello world')
avatar.generate
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

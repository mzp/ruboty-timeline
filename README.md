# Ruboty::Timeline

A [Ruboty](https://github.com/r7kamura/ruboty) plugin to notify a single channel of all timeline('分報') messages.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-timeline'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-timeline

## Usage

Invite your ruboty bot to your timeline channels.

Channel naming rules:

* Timeline channels should be named `current_*`.
* The notification channel should be named `current_all`.


## Configuration

You need to set the environment variable:

* `RUBOTY_TIMELINE_TOKEN`: A Slack API token to get channel names.

## Author

@mzp

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


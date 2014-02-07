# UtcRpnCalc

[![Gem Version](https://badge.fury.io/rb/utc_rpn_calc.png)](http://badge.fury.io/rb/utc_rpn_calc)
[![Build Status](https://travis-ci.org/colinrymer/utc_rpn_calc.png?branch=master)](https://travis-ci.org/colinrymer/utc_rpn_calc)
[![Coverage Status](https://coveralls.io/repos/colinrymer/utc_rpn_calc/badge.png)](https://coveralls.io/r/colinrymer/utc_rpn_calc)
[![Code Climate](https://codeclimate.com/github/colinrymer/utc_rpn_calc.png)](https://codeclimate.com/github/colinrymer/utc_rpn_calc)
[![Dependency Status](https://gemnasium.com/colinrymer/utc_rpn_calc.png)](https://gemnasium.com/colinrymer/utc_rpn_calc)

A simple Reverse Polish Notation (RPN) hexadecimal calculator.
It was written as a demonstration of the UTC IEEE CS coding challenge
specifications for February 2014.

## Installation

Add this line to your application's Gemfile:

    gem 'utc_rpn_calc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install utc_rpn_calc

## Usage

Pass a string of digits and operators separated with spaces as command line arguments, e.g.

```
$ utc_rpn_calc 1 2 +
0003
```

## Contributing

1. Fork it ( http://github.com/colinrymer/utc_rpn_calc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

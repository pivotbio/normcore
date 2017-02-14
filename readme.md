# Normcore

[![Build Status](https://travis-ci.org/pivotbio/normcore.svg?branch=master)](https://travis-ci.org/pivotbio/normcore)

Simple library for sampling from random distributions

- `Normcore::Normal` - Gaussian/normal distribution.
- `Normcore::LogNormal` - exp(Gaussian/normal) distribution.

## Installation

RubyGems

```bash
gem install normcore
```

Bundler

```ruby
gem 'normcore'
```

## Usage

```ruby
require 'normcore'

# μ = 0, σ = 1
d = Normcore::Normal.new(0, 1)

# return an Array of 100 samples
d.sample(100)
```

## Bonus

You can use Normcore as an executable:


```bash
# produce an endless stream [defaults: μ = 0, σ = 1]
$ normcore

# μ=100, σ=50
$ normcore 100 50
```

Using [bashplotlib](https://github.com/glamp/bashplotlib):

```bash
$ normcore 1 5 | head -n 10000 | hist

 2177|        o
 2062|        oo
 1948|        oo
 1833|        oo
 1719|        oo
 1604|       ooo
 1490|       ooo
 1375|       oooo
 1261|       oooo
 1146|       oooo
 1031|       oooo
  917|       oooo
  802|      ooooo
  688|      oooooo
  573|      oooooo
  459|      oooooo
  344|     ooooooo
  230|     oooooooo
  115|     oooooooo
    1| oooooooooooooo
      --------------

-------------------------------
|           Summary           |
-------------------------------
|     observations: 10000     |
|    min value: -18.768871    |
|       mean : 0.995957       |
|     max value: 19.428214    |
-------------------------------
```

## License

MIT (see `LICENSE` for details)

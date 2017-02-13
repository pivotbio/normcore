# Normcore

Simple library for sampling from random distributions

- `Normcore::Normal` - Gaussian/normal distribution.
- `Normcore::LogNormal` - exp(Gaussian/normal) distribution.

## Usage


```ruby
require 'normcore'

# μ = 0, σ = 1
d = Normcore::Normal.new(0, 1)

# return an Array of 100 samples
d.sample(100)
```

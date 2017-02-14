module Normcore
  #
  # The normal a.k.a. Gaussian distribution
  #
  # https://en.wikipedia.org/wiki/Box–Muller_transform
  #
  # Usage:
  #
  # normal = Normal.new(0, 1)
  #
  # normal.rng # return one sample
  #
  # normal.sample(10) # return 10 samples
  #
  class Normal < Base
    attr_reader :μ, :σ

    def initialize μ, σ
      @μ = μ
      @σ = σ
    end

    #
    # yield samples from gaussian distribution using the Box-Muller transform
    #
    def rng
      box_muller
    end

    private

    #
    # Use the Box-Muller transform to generate pairs of independent, standard,
    # normally distributed random numbers.
    #
    def box_muller
      θ = 2 * Math::PI * rand
      ρ = Math.sqrt(-2 * Math.log(1 - rand))
      scale = σ * ρ
      μ + scale * Math.cos(θ)
    end
  end
end

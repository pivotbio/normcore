module Normcore
  #
  # The log-normal distribution
  #
  # https://en.wikipedia.org/wiki/Log-normal_distribution
  #
  class LogNormal < Normal
    def rng
      Math.exp(box_muller)
    end
  end
end

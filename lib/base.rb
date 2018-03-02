module Normcore
  class Base
    def sample n
      n.times.map { rng }
    end
  end
end

module Normcore
  class Base
    def sample n
      n.times.map { rng }
    end

    # to be consistent with Random#rand
    def rand
      rng
    end
  end
end

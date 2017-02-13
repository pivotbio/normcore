require 'spec_helper'

describe Normcore::Normal do
  it 'can be created' do
    normal = Normcore::Normal.new 0, 1
  end

  (-5..5).each do |μ|
    (1..10).each do |σ|
      it "#rng produces a normcore curve (μ=#{μ} σ=#{σ})" do
        normal = Normcore::Normal.new μ, σ
        sample = normal.sample(10000)
        expect(sample.mean.round(0)).to be_within(0.1).of(μ)
        expect(sample.standard_deviation.round(0)).to be_within(0.1).of(σ)
      end
    end
  end
end

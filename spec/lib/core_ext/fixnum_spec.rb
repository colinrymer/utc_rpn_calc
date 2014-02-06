require 'spec_helper'

describe Fixnum do

  let(:value) { "FF00".hex }

  describe '#to_formatted_hex' do

    subject { value.to_formatted_hex }
    it { should eq("FF00") }

  end

  describe '#negate' do

    subject { value.negate }
    it { should eq("00FF".hex) }

  end

end

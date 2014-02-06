require 'spec_helper'

require 'utc_rpn_calc'

describe UtcRpnCalc::Calculator do

  subject do
    UtcRpnCalc::Calculator.new(input).calculate
  end

  describe 'operations' do

    context 'addition' do
      let(:input) { "1 2 +" }
      it { should eq("0003") }
    end

    context 'subtraction' do
      let(:input) { "F 1 -" }
      it { should eq("000E") }
    end

    context 'multiplication' do
      let(:input) { "3 2 *" }
      it { should eq("0006") }
    end

    context 'division' do
      let(:input) { "6 2 /" }
      it { should eq("0003") }
    end

    context 'logical AND' do
      let(:input) { "FF00 0FF0 &" }
      it { should eq("0F00") }
    end

    context 'logical OR' do
      let(:input) { "FF00 0FF0 |" }
      it { should eq("FFF0") }
    end

    context 'logical XOR' do
      let(:input) { "FF00 0FF0 X" }
      it { should eq("F0F0") }
    end

    context 'logical NOT' do
      let(:input) { "00FF ~" }
      it { should eq("FF00") }
    end

    context 'multiple operations' do
      let(:input) { "2 3 * 4 +" }
      it { should eq("000A") }
    end

  end

  describe 'return value' do

    context 'when input is valid' do

      context 'result greater than FFFF' do
        let(:input) { "ABCD ABCD +" }
        it { should eq("FFFF") }
      end

      context 'result less than 0000' do
        let(:input) { "5 A -" }
        it { should eq("0000") }
      end

    end

    context 'when input is invalid' do
      let(:input) { "2 * 3" }
      it { should eq("BLARGH!") }
    end

  end

end

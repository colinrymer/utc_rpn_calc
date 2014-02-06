require 'spec_helper'

describe 'utc_rpn_calc' do

  describe 'exit codes' do

    subject { `utc_rpn_calc #{input}`; $?.to_i }

    describe 'zero exit code' do

      context 'when no calculation' do
        let(:input) { '' }
        it { should eq(0) }
      end

      context 'when valid calculation' do
        let(:input) { '1 2 +' }
        it { should eq(0) }
      end

    end

    describe 'non-zero exit code' do

      context 'when invalid calculation' do
        let(:input) { '1 + 2' }
        it { should_not eq(0) }
      end

    end

  end

  describe 'output' do

    subject { `utc_rpn_calc #{input}` }

    context 'when no calculation' do
      let(:input) { '' }
      it { should eq('0000') }
    end

    context 'when valid calculation' do
      let(:input) { '1 2 +' }
      it { should eq('0003') }
    end

    context 'when invalid calculation' do
      let(:input) { '1 + 2' }
      it { should eq(UtcRpnCalc::ERROR) }
    end

  end

end

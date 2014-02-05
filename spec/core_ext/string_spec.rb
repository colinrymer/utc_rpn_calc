require 'spec_helper'

describe String do

  describe '#valid_number?' do

    subject { value.valid_number? }

    context "valid number" do
      let(:value) { "0FF0" }
      it { should be_true }
    end

    context "invalid number" do
      let(:value) { "03X0" }
      it { should be_false }
    end

  end

  describe '#negation_operation?' do

    subject { value.negation_operation? }

    context "negation" do
      let(:value) { "~" }
      it { should be_true }
    end

    context "not negation" do
      let(:value) { "*" }
      it { should be_false }
    end

  end

end


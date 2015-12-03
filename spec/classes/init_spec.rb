require 'spec_helper'
describe 'foreman_extras' do

  context 'with defaults for all parameters' do
    it { should contain_class('foreman_extras') }
  end
end

require 'spec_helper'

describe 'my_first_cookbook::default' do
  describe command('curl http://localhost') do
    its(:stdout) { should match /Hello World/ }
    its(:exit_status) { should eq 0 }
  end
end

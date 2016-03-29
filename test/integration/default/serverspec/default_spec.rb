require 'spec_helper'

describe 'my_first_cookbook::default' do
  describe command('curl http://localhost') do
    its(:stdout) { should match /Hello World/ }
    its(:exit_status) { should eq 0 }
  end
  describe command("ntpq -c peers | grep -E '^\*'") do
    its(:exit_status) { should eq 0 }
  end
  describe command("date +%Z") do
    its(:stdout) { should match /^E[DS]T/ }
  end
end

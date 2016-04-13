require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('git') do
  it { should be_installed }
end

describe command('which git') do
  its(:exit_status) { should eq 0 }
end

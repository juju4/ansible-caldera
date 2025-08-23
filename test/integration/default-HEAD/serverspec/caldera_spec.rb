require 'serverspec'

# Required by serverspec
set :backend, :exec

describe user('_caldera') do
  it { should exist }
end

describe process("python") do
  it { should be_running }
end

describe service('caldera') do
  it { should be_enabled }
  it { should be_running }
end
describe port(8888) do
  it { should be_listening.with('tcp') }
end

describe file('/var/_caldera/caldera/server.py') do
  it { should exist }
end

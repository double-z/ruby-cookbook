require 'chefspec'

describe 'The recipe ruby::default' do
  let (:chef_run) do
    chef_run = ChefSpec::ChefRunner.new
    chef_run.node.automatic_attrs['platform'] = 'ubuntu'
    chef_run.converge 'ruby::default'
    chef_run
  end

  it 'should include the recipe ruby_build' do
    chef_run.should include_recipe 'ruby_build'
  end

  it 'should include the recipe rbenv::system' do
    chef_run.should include_recipe 'rbenv::system'
  end

  it 'should add rbenv to PATH' do
    # run actual ruby_block resource to check PATH
    chef_run.resources.find { |r| r.name == 'Add rbenv to PATH' }.old_run_action(:create)
    rbenv_root = chef_run.node['rbenv']['root_path']
    ENV['PATH'].should include "#{rbenv_root}/shims"
    ENV['PATH'].should include "#{rbenv_root}/bin"
  end
end

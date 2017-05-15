require 'spec_helper'

describe 'td-agent::default' do
  context 'Ubuntu 14.04' do
    include_context 'converged recipe'

    let(:platform) do
      { platform: 'ubuntu', version: '14.04' }
    end

    let(:node_attributes) do
      {}
    end

    it 'converges without error' do
      expect { chef_run }.not_to raise_error
    end
  end
end

# frozen_string_literal: true

require_relative '../lib/simple_assert'

RSpec.describe SimpleAssert do
  include SimpleAssert

  describe '.assert' do
    context 'success' do
      it 'displays status' do
        expect { assert('Success') { true } }.to output(/OK/).to_stdout
      end

      it 'displays message' do
        expect { assert('Success') { true } }.to output(/Success/).to_stdout
      end
    end

    context 'failure' do
      it 'displays status' do
        expect { assert('Error') { false } }.to output(/ERR/).to_stdout
      end

      it 'displays message' do
        expect { assert('Error') { false } }.to output(/Error/).to_stdout
      end
    end
  end
end

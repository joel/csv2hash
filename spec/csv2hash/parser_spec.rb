require 'spec_helper'

describe Parser do

  let(:definition) do
    Definition.new.tap do |definition|
      definition.type = Definition::MAPPING
      definition.rules = [ { position: [0,0], key: 'name' } ]
      definition.validate!
      definition.set_default!
    end
  end

  let(:data_source) { [ [ 'John Doe' ] ] }

  subject { Csv2hash.new definition, data_source }

  context 'regular way' do
    it { expect { subject.parse }.to_not raise_error }
    it {
      subject.tap do |csv2hash|
        csv2hash.parse
      end.data.should eql({ data: [ { 'name' => 'John Doe' } ] })
    }
  end

  context 'with nested' do
    let(:data_source) { [ [ 'John Doe', 22 ] ] }
    before do
      definition.rules << { position: [0,1], key: 'age', nested: 'infos' }
    end
    it {
      subject.tap { |c| c.parse }.data.should eql(
        { data: [ { 'name' => 'John Doe', 'infos' => { 'age' => 22 } } ] }
      )
    }
  end

end
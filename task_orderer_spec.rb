
require_relative 'task_orderer'

describe 'no task dependancies' do

  context "splits a string" do
    subject(:task_order) { TaskOrder.new("a") }
    it 'handles single job' do
      expect(task_order.sanitise).to eq("a")
    end
  end
end
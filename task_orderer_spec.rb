
require_relative 'task_orderer'

describe 'splitting job strings' do
  subject(:task_order) { TaskOrder.new(job) }

  context 'passing one job' do
    let(:job) {'a'}
    it 'handles a single job' do
        expect(task_order.sanitise).to eq(['a'])
    end
  end

  context 'passing two jobs' do
    let(:job) {'a,b'}
    it 'handles two independant jobs' do
        expect(task_order.sanitise).to eq(['a','b'])
    end
  end

   context 'passing a single job containing a dependancy' do
     let(:job) {'b <= a'}
     it 'handles a dependant job' do
        expect(task_order.sanitise).to eq(['b','a'])
     end
  end
end
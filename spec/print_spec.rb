require 'print'
describe Print do
  context ' #it print ' do
    it 'string and add a new line' do
      expect { subject.print('This is a string') }.to output("This is a string\n").to_stdout
    end
    it 'prints an each element of an array and add a new line' do
      array = ["this", "is", "a", "string"]
      expect { subject.print(array) }.to output("this\nis\na\nstring\n").to_stdout
    end
  end
end

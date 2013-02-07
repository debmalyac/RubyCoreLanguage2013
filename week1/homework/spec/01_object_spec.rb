describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects' do
     10.should be_a Object
  end

  it 'Hashes are objects' do
     {"I"=>1}.should be_a Object
  end

  it 'Arrays are objects' do
      arr = ['one','two','three']
      arr.should be_a Object
  end

  it 'Expressions evaluate to objects' do
    "this is a String expression".should be_a Object
  end

  it 'Symbols are objects' do
    "string".to_sym.class.should be_a Object
  end

  it 'Classes are objects' do
    (5.equal? 5).should be_a Object
  end

  it 'ADD ANY EXAMPLE THAT EVALUATES AN OBJECT'

end
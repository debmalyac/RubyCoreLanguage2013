
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "Ruby".should be_a String
    end
    
    it "can contain bare single-quote (') characters" do
      "It's a hobby".should be_a String
    end
    
    it "allow the escape of double quote (\") characters" do
      "Early morning can produce \"best\" photographs".should be_a String
    end
    
    it "allow interpolation (Ruby code within the string)" do
      s1 = "four plus three is #{4+3}"
      s1.should eq "four plus three is 7"
    end
    
    it "replace \t with a tab character" do
      str = "a\tb"
      str.length().should eq 3
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "Betty's pie shop".should eq 'Betty\'s pie shop'
    end

    it "replaceS special characters when values are specified at the end via '% [value]'"    do
      ("%05d" % 123).should eq "00123"
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String"  do
      "Ruby".class.should be_a Class
    end
    
    it "allow double-quote (\") characters" do
      str1 = "Double \"quotes\""
      str2 = %q[Double "quotes"]
      str1.should eq str2
    end

    it "allow the escape of single quote (') characters"  do
      s1 = "St. Thomas\'"
      s2 = %q(St. Thomas')
      s1.should eq s2
    end
    
    it "does not interpolate Ruby code" do
      #Line below is commented to prevent compilation error.
      #s1 = 'four plus three is #{4+3}'
      #puts s1
    end
    
    it "does not escape newline characters" do
      'Heaven is a\n bliss'.should_not eq "Heaven is a\n bliss"
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %{<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>}.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do

    end

  end

end
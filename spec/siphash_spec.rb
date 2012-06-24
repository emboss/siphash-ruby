require 'rspec'
require 'siphash'

describe SipHash do

  let(:spec_key) { "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f" }
  let(:spec_msg) { "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e" }

  specify "Test vector from spec" do
    SipHash.digest(spec_key, spec_msg).should == 0xa129ca6149be45e5
  end

  specify "empty string" do
    SipHash.digest(spec_key, "").should == 0x726fdb47dd0e0e31
  end

  specify "a" do
    SipHash.digest(spec_key, "a").should == 0x2ba3e8e9a71148ca
  end

  specify "abcdef" do
    SipHash.digest(spec_key, "abcdef").should == 0x2a6e77e733c7c05d
  end

  specify "SipHash" do
    SipHash.digest(spec_key, "SipHash").should == 0x8325093242a96f60
  end

  specify "12345678" do
    SipHash.digest(spec_key, "12345678").should == 0x2130609caea37eb
  end

  specify "one million zero bytes" do
    SipHash.digest(spec_key, "\0" * 1000000).should == 0x28205108397aa742
  end

end

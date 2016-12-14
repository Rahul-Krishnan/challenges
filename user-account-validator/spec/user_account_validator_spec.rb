require 'spec_helper'
require_relative "../user_account_validator"

describe UserAccountValidator do
  let(:all_valid) { UserAccountValidator.new({
    email: "one@two.com",
    username: "OneTwo",
    name: "NumberGuy"
    }) }
  let(:no_email) { UserAccountValidator.new({
    email: "",
    username: "SleepytheMan",
    name: "Sleepy"
    }) }

  let(:no_username) { UserAccountValidator.new({
    email: "bow@chikawowow.com",
    username: "",
    name: "Sleepy"
    }) }

  let(:no_atsymbol) { UserAccountValidator.new({
    email: "boomatgmail.com",
    username: "SleepytheMan",
    name: "Sleepy"
    }) }

  describe '#initialize' do
    it 'accepts a hash as a starting input' do
      expect(all_valid.email).to be
      expect(all_valid.username).to be
      expect(all_valid.name).to be
    end
  end

  describe '#email_missing?' do
    it "raises an email error if email is missing" do
      expect{no_email.email_missing?}.to raise_error(EmailMissingError, "You are missing an email!")
    end
  end

  describe '#username_missing?' do
    it "raises an email error if email is missing" do
      expect{no_username.username_missing?}.to raise_error(StandardError, "You are missing a username!")
    end
  end

  describe '#atsymbol_missing?' do
    it "raises an atsymbol error if email is missing" do
      expect{no_atsymbol.atsymbol_missing?}.to raise_error(StandardError, "You are missing an @ symbol!")
    end
  end

  describe '#missing_bits' do
    it "raises an error if any info is missing" do
      expect{no_atsymbol.missing_bits}.to raise_error(StandardError)
    end
    it "raises an error if any info is missing" do
      expect{no_email.missing_bits}.to raise_error(StandardError)
    end
    it "raises an error if any info is missing" do
      expect{no_username.missing_bits}.to raise_error(StandardError)
    end
  end

end

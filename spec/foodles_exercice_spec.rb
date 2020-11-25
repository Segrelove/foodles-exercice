require 'spec_helper'
require 'foodles_exercice'

describe '#word_frequency' do
  context 'it should return the right format' do 
    it 'should expect an array' do
      expect(word_frequency("test", 2)).to be_a(Array)
    end

    it 'should expect an array inside an array' do
      subject = word_frequency("test", 2)
      expect(subject.first).to be_a(Array)
    end

    it 'shouldnt be a string' do
      subject = word_frequency("test", 2)
      expect(subject.first).not_to be_a(String)
    end

    it 'should return nil if params isnt right' do
      subject = word_frequency(2.0, "Je suis un string")
      expect(subject).to be_a(NilClass)
    end

    it 'shouldnt return nil if params is right' do
      subject = word_frequency("2.0", 129)
      expect(subject).not_to be_a(NilClass)
    end
  end

  context 'it should return the right array' do
    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 3)).to eq([["zblah", 3], ["foo", 2], ["bar", 2]])
    end

    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 2)).to eq([["zblah", 3], ["foo", 2]])
    end

    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 1)).to eq([["zblah", 3]])
    end
  end

  context 'it shouldnt return the right array' do
    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 3)).not_to eq([["foo", 2], ["bar", 2]])
    end

    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 2)).not_to eq([["zblah", 3], ["foo", 2], ["bar", 2]])
    end

    it 'should return the correct number of array' do 
      sentence = "baz bar foo foo zblah zblah zblah baz toto bar"
      expect(word_frequency(sentence, 1)).not_to eq([["zblah", 3], ["foo", 2]])
    end
  end
end
require './lib/palindrome'

describe Palindrome do
  describe "palindrome?(string)" do
    it "returns true for ''" do
      expect(subject.palindrome?('')).to eq(true)
    end

    it "returns true for 'a'" do
      expect(subject.palindrome?('a')).to eq(true)
    end

    context "for two character strings" do
      it "returns true if the characters match" do
        expect(subject.palindrome?('aa')).to eq(true)
      end
      it "returns false if the characters do not match" do
        expect(subject.palindrome?('ab')).to eq(false)
      end
    end

    context "for three character strings" do
      it "returns true if the first and last characters match" do
        expect(subject.palindrome?('aba')).to eq(true)
      end
      it "returns false if the first and last characters do not match" do
        expect(subject.palindrome?('abc')).to eq(false)
      end

    end

    context "for four character strings" do
      context "when the first and last characters match" do
        it "returns true if the second and third characters match" do
          expect(subject.palindrome?('abba')).to eq(true)
        end
        it "returns false if the second and third characters do not match" do
          expect(subject.palindrome?('abca')).to eq(false)
        end
      end
      it "returns false when the first and last characters do not match" do
        expect(subject.palindrome?('abcd')).to eq(false)
      end
    end

    it "returns true for 'dad'" do
      expect(subject.palindrome?('dad')).to eq(true)
    end

    it "returns true for 'Madam, I'm Adam'" do
      expect(subject.palindrome?("Madam, I'm Adam")).to eq(true)
    end

    it "returns true for 'Never Odd Or Even'" do
      expect(subject.palindrome?("Never Odd Or Even")).to eq(true)
    end

    it "returns true for 'Was it a rat I saw?'" do
      expect(subject.palindrome?("Was it a rat I saw?")).to eq(true)
    end

    it "returns true for 'Dammit, I'm mad!" do
      expect(subject.palindrome?("Dammit, I'm mad!")).to eq(true)
    end

    it "returns true for 'A man, a plan, a canal, Panama!'" do
      expect(subject.palindrome?('A man, a plan, a canal, Panama!')).to eq(true)
    end
  end
end

require "rubygems-find/find"

def simplify(gemspecs)
  s = {}
  gemspecs.each do |file,spec|
    s[file] = spec[:name]
  end
  s
end

describe Gem do
  context "find" do
    it "finds a single gemspec" do
      gemspecs = Gem.find("spec/testdata/single")
      expect(simplify(gemspecs)).to eq({"spec/testdata/single/single.gemspec" => "single"})
    end

    it "finds nested gemspecs" do
      gemspecs = Gem.find("spec/testdata/nested")
      expect(simplify(gemspecs)).to eq({
        "spec/testdata/nested/toplevel.gemspec" => "toplevel",
        "spec/testdata/nested/a/a.gemspec" => "a",
        "spec/testdata/nested/b/b.gemspec" => "b",
      })
    end
  end
end

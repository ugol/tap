class Jr < Formula
  desc "JR is a CLI program that helps you to create quality random data for your applications."
  homepage "https://github.com/ugol/jr"
  url "https://github.com/ugol/jr/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "fa60365c0ca7b5ff70ef357ff362c7da069aa07a5daa8303f0af04ae75d04f67"
  license "MIT"
  head "https://github.com/ugol/jr.git", branch: "main"

  depends_on "go" => ["=1.20.2", :build]

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    system "make", "all"
    system "cp", "-r", "templates", "config"
    bin.install Dir["build/*"]
    prefix.install "config"
    prefix.install "templates" 
  end

  test do
    system "#{bin}/jr"
  end
end

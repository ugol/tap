# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Jr < Formula
  desc "JR is a CLI program that helps you to create quality random data for your applications."
  homepage "https://github.com/ugol/jr"
  url "https://github.com/ugol/jr/releases/download/v0.2.1/jr"
  sha256 "a4f73979d75b97d08c8f2c14554b75d04b8dfafd91a654793a8bc5a2879e0cb2"
  license "MIT"

  def install
    bin.install "jr"
  end

  test do
    system "#{bin}/jr"
  end
end

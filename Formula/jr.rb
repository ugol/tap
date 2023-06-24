class Jr < Formula
  desc "JR is a CLI program that helps you to create quality random data for your applications."
  homepage "https://github.com/ugol/jr"
  url "https://github.com/ugol/jr/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "60479a6533877dd606e182b9b48c00864bd9ac072bb8e5ae898d1652803af7bd"
  license "MIT"
  head "https://github.com/ugol/jr.git", branch: "main"

  depends_on "go" => ["=1.20.2", :build]

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    system "make", "all"
    bin.install Dir["build/*"]
    prefix.install "templates"
  end

  test do
    system "#{bin}/jr"
  end
end

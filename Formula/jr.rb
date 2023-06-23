class Jr < Formula
  desc "JR is a CLI program that helps you to create quality random data for your applications."
  homepage "https://github.com/ugol/jr"
  url "https://github.com/ugol/jr/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "df683a21f7a81084d5b0352b8e27d290289beae1ceec8b90cfe9a3852d10a20b"
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

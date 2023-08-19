class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/1.2.3.tar.gz"
  version "1.2.3"
  sha256 "7c74986c28a29a89609176a59e234ef9fd724a20d3dc904853794bd88a60112e"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end

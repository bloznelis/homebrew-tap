class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.6.tar.gz"
  version "2.0.6"
  sha256 "861ba04cf58eaef702f6ff7c499f5daea2090828a5628a148df5447b46bff888"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end

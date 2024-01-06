class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.1.0.tar.gz"
  version "2.1.0"
  sha256 "8dd3b9c129b51e902f1b0aeb5a717c716d92f81ed76c2264a9131f8def428e93"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end

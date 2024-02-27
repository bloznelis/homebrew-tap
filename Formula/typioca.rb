class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.10.0.tar.gz"
    sha256 "444dbb145a862b45a8342104d428e6d13bb7089ee5bb8531ddd87d33045079db"
    version "2.10.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.6.0.tar.gz"
    sha256 "b774e7eb6c0f366376d03c2c22e5f24066aea2ba2657025e159a880d151c8d97"
    version "2.6.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.4.0.tar.gz"
    sha256 "e86a4528b05b0e4aaf6e63ed102790c85e418195c299d0cc9f892dac8ca83f47"
    version "2.4.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

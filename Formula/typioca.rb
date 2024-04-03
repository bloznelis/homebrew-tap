class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.11.0.tar.gz"
    sha256 "61f44059e34c4fdd509566253b5f2bf45025303fdaa00fd390484da2359f2bf0"
    version "2.11.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

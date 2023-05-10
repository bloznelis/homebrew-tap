class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.3.0.tar.gz"
    sha256 "0ac6d30656ae03bb85e0ecbed4c3e445a952681b9f54d79ca0cae03ddebb41ed"
    version "2.3.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

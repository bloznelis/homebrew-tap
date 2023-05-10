class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.3.1.tar.gz"
    sha256 "19713300a9f2feb6f28c689bfd298e6b0f7fdfe05439f538d11d62701b13d304"
    version "2.3.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

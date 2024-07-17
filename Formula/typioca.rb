class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/3.0.0.tar.gz"
    sha256 "115dfe187925dd77c230668b72e45cd4e623e4819660809cba9ea196f806d1ac"
    version "3.0.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

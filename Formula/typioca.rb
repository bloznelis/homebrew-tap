class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.2.tar.gz"
    sha256 "973053501e93ab124ddf3e71555de367fa39b1185f79f7bfabfaf3f2cf581338"
    version "2.0.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

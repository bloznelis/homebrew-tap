class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.8.0.tar.gz"
    sha256 "b55213d13f6cffb913a517df3024eacb1966cc5568e57609e38bd591b64d7ad4"
    version "2.8.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

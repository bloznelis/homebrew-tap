class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.9.0.tar.gz"
    sha256 "165a617d94f1b60452fbb490a0da3617d638e5f6b7763c7204791a91cad8f8a4"
    version "2.9.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

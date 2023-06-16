class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.4.2.tar.gz"
    sha256 "57246b9f13b8f4f34a93eed7b2ac3efa871dd49714f44b9b85bbc82c4700b9a2"
    version "2.4.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

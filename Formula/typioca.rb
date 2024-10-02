class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/3.1.0.tar.gz"
    sha256 "b58dfd36e9f23054b96cbd5859d1a93bc8d3f22b4ce4fd16546c9f19fc4a003c"
    version "3.1.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

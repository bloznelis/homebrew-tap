class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.7.0.tar.gz"
    sha256 "b8981f0c1b45f05fe780f6cfcb4644796213b1c8d88c2799a96f8290d92decfa"
    version "2.7.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.1.0.tar.gz"
    sha256 "9f96b3e38486354101d3d052871a7c8c422ba9e07cc8e3407c56b55eba024238"
    version "2.1.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

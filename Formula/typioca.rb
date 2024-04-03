class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.11.1.tar.gz"
    sha256 "eec856b17b67ad93403638d7ccd016b7548cf6509f8f00ced1cb950e1bb82120"
    version "2.11.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.8.tar.gz"
    sha256 "6d40b65205af3707cf6da401fa4acee4bd86b173f82cb6ad334403e0e0117ba2"
    version "2.0.8"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/2.11.2.tar.gz"
    sha256 "993c82f70c2dd7a56c6eda7008d72569249cd377ab32d65cf08eeebf5a35293c"
    version "2.11.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

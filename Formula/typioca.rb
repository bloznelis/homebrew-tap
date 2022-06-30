class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.0.tar.gz"
    sha256 "64a295152a60dbf76db538ce73b98c39db1b1a4f9b0e9cfa68e05b3790e8b43d"
    version "2.0.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

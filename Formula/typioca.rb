class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.1.1.tar.gz"
    sha256 "766dc73424e55640bccabf56619b1d4915eb04c062d57b8b6c5f7b27aa1ca221"
    version "2.1.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end

class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/1.0.3.tar.gz"
    sha256 "9f22acb0789feea6f723f40017bed76d63900588a9664860da8b3c3beb73d635"
    version "1.0.3"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end

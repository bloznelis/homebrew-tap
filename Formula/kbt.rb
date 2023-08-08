class Typioca < Formula
    desc "Keyboard tester in terminal"
    homepage "https://github.com/bloznelis/kbt"
    url "https://github.com/bloznelis/kbt/archive/1.2.2.tar.gz"
    sha256 "d08da3d5d51378aef1cf43e0bcf545fbd1abc05ce5d705a79973cfffd3200c6d"
    version "1.2.2"
    depends_on "rust"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "target/release/kbt"
    end
end

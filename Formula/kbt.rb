class Typioca < Formula
    desc "Keyboard tester in terminal"
    homepage "https://github.com/bloznelis/kbt"
    url "https://github.com/bloznelis/kbt/archive/1.2.1.tar.gz"
    sha256 "ab5ee22ddc935ed140c74807f9ff594e99ad49f0f7cf7c5568cfde2a4983ef65"
    version "1.2.1"
    depends_on "rust"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "target/release/kbt"
    end
end

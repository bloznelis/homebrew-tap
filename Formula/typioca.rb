class Typioca < Formula
  desc "Minimal, terminal based typing speed tester"
  homepage "https://github.com/bloznelis/typioca"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bloznelis/typioca/releases/download/#{version}/typioca-mac-amd64"
      sha256 "841cb30b73511116efceeafd3c481c7377cf4bce339474db2bae372f10f5d9ae"
      def install
        bin.install "typioca-mac-amd64" => name.to_s
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bloznelis/typioca/releases/download/#{version}/typioca-mac-arm64"
      sha256 "5c3072aec21a4d63fd51335f195dd7eec44c52b02e807a88161995bfc1643657"
      def install
        bin.install "typioca-mac-arm64" => name.to_s
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bloznelis/typioca/releases/download/#{version}/typioca-linux-amd64"
      sha256 "91e61210565362ec429dc894a4f40d8b2ae5cd2c8a8338a0dddb46409b99d8c1"
      def install
        bin.install "typioca-linux-amd64" => name.to_s
      end
    end
  end

  test do
    system "#{bin}/#{name}", "-v"
  end
end

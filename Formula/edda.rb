class Edda < Formula
  desc "Decision memory for coding agents"
  homepage "https://github.com/fagemx/edda"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fagemx/edda/releases/download/v0.6.0/edda-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "75bade6f1098da3a61f30b183f5b6d77d4811da9658eedaf609de061e6631b6c"
    else
      url "https://github.com/fagemx/edda/releases/download/v0.6.0/edda-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ff9171ffe059d90dbced294f59f3fe011ea941b3ce6c80a1fc01de1d5d2dc7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fagemx/edda/releases/download/v0.6.0/edda-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1694efcf91865d6c06b604324d3de33fc8d676a0d3b60ad35a69305c322ac7d1"
    else
      url "https://github.com/fagemx/edda/releases/download/v0.6.0/edda-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3607eed7d635d0850058de8425e4e94fbd2028a57d37144734d06e5711f3c2bf"
    end
  end

  def install
    bin.install "edda"
  end

  test do
    assert_match "edda #{version}", shell_output("#{bin}/edda --version")
  end
end

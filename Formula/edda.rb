class Edda < Formula
  desc "Decision memory for coding agents"
  homepage "https://github.com/fagemx/edda"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fagemx/edda/releases/download/v#{version}/edda-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "68a0753f694596a636b62e4f5284cf19fdf1ccf6741c79ea617ba76d4c32da61"
    else
      url "https://github.com/fagemx/edda/releases/download/v#{version}/edda-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d207bbb143f413e1f0a9f6dca699bc45b1b1d65a2d485f3533489a417ccce434"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fagemx/edda/releases/download/v#{version}/edda-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "898f58a29a7ae37ea0e00083b3691901f1596f1b85926873a95e6c75dabb63f2"
    else
      url "https://github.com/fagemx/edda/releases/download/v#{version}/edda-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5485cf7e4a02a10eb0de609425a93083f5fd77cd6a138243aa88b74f392caa64"
    end
  end

  def install
    bin.install "edda"
  end

  test do
    assert_match "edda #{version}", shell_output("#{bin}/edda --version")
  end
end

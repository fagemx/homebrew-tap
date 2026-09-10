class Edda < Formula
  desc "Decision memory for coding agents"
  homepage "https://github.com/fagemx/edda"
  url "https://static.crates.io/crates/edda/edda-0.6.1.crate"
  sha256 "110682247358c5459ac41522f3f7fc58e8dbf237ef1b4abb1991df8ed7e78e70"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "edda #{version}", shell_output("#{bin}/edda --version")
  end
end

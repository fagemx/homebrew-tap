class Edda < Formula
  desc "Decision memory for coding agents"
  homepage "https://github.com/fagemx/edda"
  url "https://static.crates.io/crates/edda/edda-0.6.0.crate"
  sha256 "c38adcadddc25f5468631f82a10f83290a1683ad898cb02d5758d087432b4f5d"
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

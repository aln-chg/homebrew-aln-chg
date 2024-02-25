class StorageCli < Formula
  desc "A CLI tool that lets you see the storage info of your computer"
  homepage "https://github.com/aln-chg/storage-cli/tree/main"
  url "https://github.com/aln-chg/storage-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cc4e6d16dfc8c0af913ce9618a42807123e547958e92e1a5cdbcce2ffedabc96"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-s -w", "-o", "#{bin}/storage", "."
  end

  test do
    system "#{bin}/storage", "--version"
  end
end

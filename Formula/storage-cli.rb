class StorageCli < Formula
  desc "A CLI tool that lets you see the storage info of your computer"
  homepage "https://github.com/aln-chg/storage-cli/tree/main"
  url "https://github.com/aln-chg/storage-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d2f726a064600608a8abdd0a5a8f7d1eccd9138d2d2d89e47a6879adb807cbb5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "#{bin}/storage-cli", "."
  end

  test do
    system "#{bin}/storage-cli", "--version"
  end
end

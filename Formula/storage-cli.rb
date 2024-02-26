class StorageCli < Formula
  desc "A CLI tool that lets you see the storage info of your computer"
  homepage "https://github.com/aln-chg/storage-cli/tree/main"
  url "https://github.com/aln-chg/storage-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "329ad6b80bdce65f72ec0c209bcc6000b9596d20f18ab39b5268229a100ea23b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version} -s -w", "-o", "#{bin}/storage", "."
  end

  test do
    system "#{bin}/storage", "--version"
  end
end

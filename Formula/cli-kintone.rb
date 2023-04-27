class CliKintone < Formula
  desc "CLI tool to import/export records to/from Kintone"
  homepage "https://github.com/ahandsel/cli-kintone/blob/main/README.md"
  url "https://github.com/ahandsel/cli-kintone/releases/download/v1.4.0/cli-kintone_v1.4.0_macos.zip"
  sha256 "3b7e5c2fa7d22dffc758524e22439bbbcfc3ff8875940762f52b1071eb996c5a"
  license "MIT"

  def install
    bin.install 'cli-kintone'
  end

  test do
    system "cli-kintone", "--version"
  end
end

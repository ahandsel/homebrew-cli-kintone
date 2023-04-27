class CliKintone < Formula
  desc "CLI tool to import/export records to/from Kintone"
  homepage "https://github.com/kintone/cli-kintone/blob/main/README.md"
  url "https://github.com/kintone/cli-kintone/releases/download/v1.3.3/cli-kintone_v1.3.3_macos.zip"
  sha256 "ef7d4cbb52cd6a4167507de3bbbb3962b79347c78816f7ef70f17bb712559964"
  license "MIT License"

  depends_on "@kintone/rest-api-client"
  depends_on "chalk"
  depends_on "csv-parse"
  depends_on "csv-stringify"
  depends_on "https-proxy-agent"
  depends_on "iconv-lite"
  depends_on "inquirer"
  depends_on "yargs"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
  end

  test do
  end
end

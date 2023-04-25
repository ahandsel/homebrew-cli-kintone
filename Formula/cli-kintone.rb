class CliKintone < Formula
  desc "CLI tool to import/export records to/from Kintone"
  homepage "https://github.com/kintone/cli-kintone/blob/main/README.md"
  url "https://github.com/kintone/cli-kintone/releases/download/v1.3.3/cli-kintone_v1.3.3_macos.zip"
  sha256 "ef7d4cbb52cd6a4167507de3bbbb3962b79347c78816f7ef70f17bb712559964"
  license "MIT License"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
  end
end

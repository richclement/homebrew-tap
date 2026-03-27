class Tu < Formula
  desc "CLI for measuring token usage across files and directories"
  homepage "https://github.com/richclement/tu"
  version "0.1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_arm64.tar.gz"
      sha256 "091ac4b56ac3a0cd30c57ff35ca32bc1265b45ead1a86c18bd41188a5a39164d"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_amd64.tar.gz"
      sha256 "a5616cfcff8298e6fbe7d29dd63a7150b63186a3279c6fd4cffcb8c3ef962ae6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_arm64.tar.gz"
      sha256 "6cb3c4381b132de08a2b9f76aea7ae4bef4343596e4751d71f477ac19bfbb00a"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_amd64.tar.gz"
      sha256 "3c534b870c47772de64045871717f3ea7798a6a8466c16698f75f31265b2aa8d"
    end
  end

  def install
    bin.install "tu"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tu --version")
  end
end

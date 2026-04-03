class Tu < Formula
  desc "CLI for measuring token usage across files and directories"
  homepage "https://github.com/richclement/tu"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_arm64.tar.gz"
      sha256 "9ede64ebde384863c3ff529c1a693bbb6acbf3da5bb7c344cdf242bad3cc6c57"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_amd64.tar.gz"
      sha256 "9bd7f4fdcf305c239b280278a403fa2c43827b1b2f1f273d4135d54a3f4dcdf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_arm64.tar.gz"
      sha256 "cbbfdf7a5dae4550f7a897d7d9428e369643682350f24f1fb4344071c27e49b6"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_amd64.tar.gz"
      sha256 "7b03bdea8d05e86e7af4d770278aebac864a0c5d0a20cb8be25d973a183b06c9"
    end
  end

  def install
    bin.install "tu"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tu --version")
  end
end

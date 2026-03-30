class Tu < Formula
  desc "CLI for measuring token usage across files and directories"
  homepage "https://github.com/richclement/tu"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_arm64.tar.gz"
      sha256 "3218e278af9e9381626918c553ecce9944a1b6075477dbbce5455c05fc25af8e"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_darwin_amd64.tar.gz"
      sha256 "8d23f3cd6f19271ab3df5f85f4ee138d94e84f1c47113aa2837f28b2fdc451b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_arm64.tar.gz"
      sha256 "19667d603d24a272ba1be531589737130c2e456f8a178ce83a027fb22f818b61"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_#{version}_linux_amd64.tar.gz"
      sha256 "5ad8eb69c7c8d810bc709775a4761f7f067a869faf600ef64633c0b4b8f7014d"
    end
  end

  def install
    bin.install "tu"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tu --version")
  end
end

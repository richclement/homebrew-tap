class Tu < Formula
  desc "CLI for measuring token usage across files and directories"
  homepage "https://github.com/richclement/tu"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_0.1.1_darwin_arm64.tar.gz"
      sha256 "bf96eef7886da4e38ae857d9d73cc5d585430842b601eedde3d6be516369da20"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_0.1.1_darwin_amd64.tar.gz"
      sha256 "840cacd6ce0ac584bd6660f3571de8c8603eaac8b8532b361c6caf424dd23f9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_0.1.1_linux_arm64.tar.gz"
      sha256 "e20b09c3157c9af6eb5e71d77cf8f04d273819783100ea0cbc075f1fbe568ec5"
    else
      url "https://github.com/richclement/tu/releases/download/v#{version}/tu_0.1.1_linux_amd64.tar.gz"
      sha256 "7ef17017418ef35ae496801d7f192388986beaf0f89a6f4a66ea5db51ccbbe74"
    end
  end

  def install
    bin.install "tu"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tu --version")
  end
end

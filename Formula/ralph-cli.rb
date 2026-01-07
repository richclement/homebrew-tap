class RalphCli < Formula
  desc "Ralph Wiggum CLI tool"
  homepage "https://github.com/richclement/ralph-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_arm64.tar.gz"
      sha256 "03dcea6f09775312b5a36b07a8ac5df35e3a02eb68389b2285bda857701b8560"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_amd64.tar.gz"
      sha256 "b83426ea20a912b4329fe135e6bda2f04b69c3fa7e05bc475e61af2f6a010798"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_arm64.tar.gz"
      sha256 "1d920bcdb6b6bb0402ae0144cc9283dadce03ef6dae4ebc6a6a6aa3bda05a7d7"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_amd64.tar.gz"
      sha256 "957eb0d9427e73211de1c359927b48dd5422a7e1e76d73e05375843b32b941e5"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

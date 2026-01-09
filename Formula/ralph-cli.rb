class RalphCli < Formula
  desc "Ralph Wiggum CLI tool"
  homepage "https://github.com/richclement/ralph-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_arm64.tar.gz"
      sha256 "9466bed9e514081497db8ee6454744a19f30a44b9918f7d3eb3eed5cf9e326e8"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_amd64.tar.gz"
      sha256 "cd7bbf99e55dec6051aeb673bf80fb2cf5c677b138e5d293a2b9b0faff293b81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_arm64.tar.gz"
      sha256 "ea4fb7078fceaad1591f5d6ad0f62dc0b7f6495107732a7d162de2d6e5300edf"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_amd64.tar.gz"
      sha256 "b58875e4fa5348e68c20826ed142b940607a99100a120b58141aebf1a6c13e20"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

class RalphCli < Formula
  desc "Ralph Wiggum CLI tool"
  homepage "https://github.com/richclement/ralph-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_arm64.tar.gz"
      sha256 "6d2192511a3ea4d4e54e9d796f11d8771f3673cbac306f0d4e1362bfee624fef"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_amd64.tar.gz"
      sha256 "c5c256b78c0cea9f06555a33461945948dcb42f4f58afa9c4145043588754a43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_arm64.tar.gz"
      sha256 "71f97144882a1e74b023d1d7335976693b5c0f41dd994cf97f0d16f17d683afa"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_amd64.tar.gz"
      sha256 "3fd0eb55e5b3284265e55707c13e295f256dbb73cc3424917f588a192633c146"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

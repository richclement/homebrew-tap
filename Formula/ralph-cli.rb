class RalphCli < Formula
  desc "Ralph Wiggum CLI tool"
  homepage "https://github.com/richclement/ralph-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_arm64.tar.gz"
      sha256 "aa31e27262aea439c1e1d8f5a49a12596aa5a77bd998273bfbd31900b0c72b3e"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_amd64.tar.gz"
      sha256 "62f21ca3d8dad4920484e31d8a8c00ce2839ef32976167a015408960af1a4242"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_arm64.tar.gz"
      sha256 "fdd9ec68e36522ed74aa57c65ac084adf02fbc3a74614034c68cbfb28165c78d"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_amd64.tar.gz"
      sha256 "8530edabf4cccf4c396373d2edde7a42921dfcebcaf8b1aff61504bde2108e8c"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

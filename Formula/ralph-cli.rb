class RalphCli < Formula
  desc "Ralph Wiggum CLI tool"
  homepage "https://github.com/richclement/ralph-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_arm64.tar.gz"
      sha256 "4e2ddff331a82e11d11d5a0664df21272ba470821f6e9863458281f4d95781df"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_darwin_amd64.tar.gz"
      sha256 "2b5262d2863d97536432c3bcbd1f04a67b21900d41823c5b569048a1d4c87e2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_arm64.tar.gz"
      sha256 "f15d8692d8148788d75f772122d876d2dd7f0bae873098636f3855fbdec8e5cc"
    else
      url "https://github.com/richclement/ralph-cli/releases/download/v#{version}/ralph_#{version}_linux_amd64.tar.gz"
      sha256 "4b24b6f77d6b62c3c4807036e0158d6dd4de23624e69fed1fd356984ceb743da"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

class TfcCLI < Formula
  desc "Terraform Cloud CLI tool"
  homepage "https://github.com/richclement/tfccli"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tfccli/releases/download/v#{version}/tfccli_#{version}_darwin_arm64.tar.gz"
      sha256 "eef5817cb2d2ce5b93ce66479ed0199385b4b2b287e1f7e42d0d9e9fada639a3"
    else
      url "https://github.com/richclement/tfccli/releases/download/v#{version}/tfccli_#{version}_darwin_amd64.tar.gz"
      sha256 "8c7694a28f6317b95836234513add87e18039887aca6c4f511e085f6b6751ec2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/richclement/tfccli/releases/download/v#{version}/tfccli_#{version}_linux_arm64.tar.gz"
      sha256 "a37a5e6e24ca1186f5038c43c15c7b71e92e7d3d11a3a0a682d02c5fbe9feb5a"
    else
      url "https://github.com/richclement/tfccli/releases/download/v#{version}/tfccli_#{version}_linux_amd64.tar.gz"
      sha256 "4048e240c275ccafa83da29eaa84c3b916d181a2baf09e69b5299c75c50c0f31"
    end
  end

  def install
    bin.install "tfccli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tfccli --version")
  end
end

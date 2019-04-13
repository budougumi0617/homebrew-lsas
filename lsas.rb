require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="0.1.9".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '1275ac8e31192cb5fe3ceea35b3b0cfdbb8a7434db15e0e47b567afccab125d1'
    else
      url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 '2a91f8b70aa80cc11297c027b4eabeb5ff11170e618bf56ceca791f7fbef19d3'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 'ae5f1a24618594915261247cfe55fc31857b632abee5f9fdd545ba27ec22f420'
    else
      url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 '1aecd26858716b67dcc0d1f3e111472e772f70299913f5f95d9d22d9d43890e6'
    end
  end

  def install
    bin.install "lsas"
  end
end

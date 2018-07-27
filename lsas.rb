require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="v0.0.1".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '0706f2ce8b94907f4200a7f29010c11c25aaec216491d058d491f27f47456697'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 'fa986b51e65843561d3cb740384e4ed6c13c0a156179098d93d5e6517f8c66d3'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 '509423b063837c0249717f7e2bf0629c7fe3be2211ad696cc32cea9b43f61399'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 '271924763255edb86bb4f1458317d93f81173ee5ca838f88dc61c6c4c9033c38'
    end
  end

  def install
 
  if Hardware::CPU.is_32_bit?
    if OS.linux?
      dir = 'lsas_linux_386'
    else
      dir = 'lsas_darwin_386'
    end
  else
    if OS.linux?
      dir = 'lsas_linux_amd64'
    else
      dir = 'lsas_darwin_amd64'
    end
  end
  bin.install "lsas"
  end
end

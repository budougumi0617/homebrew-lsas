require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="v0.1.7".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '1857943a7a983e759862e55b1e7bdec69810aaec03bf18ce1bf62685e42d0db7'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 'b41927a25aeba5031e4e6c03248512b0f0b8d0343b655bee33dbd301f468a40e'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 '4014db1bcd5732069b687b4dbba1de5fa31d77cd302578e6cf9ea065bbbde491'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 '206416771c447d0812d2d1100fe44283198c5fe8e941fd12db27bd8069f2ae0f'
    end
  end

  def install
    bin.install "lsas"
  end
end

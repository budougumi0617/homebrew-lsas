require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="v0.0.2".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '5eae939fe9aab874daf08fe957ea7f938b3ee25f0a1709ce7e7459522f714d5f'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 '12798926a3f3a721c2419a54fb96cc0e91244c98ed24b2c97e883c2b625b920'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 '44f0e4dcfaa212ddf2ca7178e5339c3712a12fa05a05775eae976295a926bf7b'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 'c5493f2427da6dbf29a1b249916cbe3cccf953e1f725484c9009d611a596124a'
    end
  end

  def install
    bin.install "lsas"
  end
end

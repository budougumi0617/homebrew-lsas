require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="0.0.1".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      sha256 
    else
      url "#{REPOSITORY_URL}releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 
    else
      url "#{REPOSITORY_URL}releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 
    end
  end

  def install
    bin.install 'lsas'
  end
end

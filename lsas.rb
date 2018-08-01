require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="v0.0.4".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '2eb5ebadb0a20a308e2c7afdbe76416e4da6d57c89bd7c4ed3e7807d76740bf8'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 'eb252936195148d81876227a7ebcdfd6b6f2ad7a9656a35635ae73d6e8199613'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 'f5f57baa5d0e509bf0edb4a63ccce1bc1f2461c9a30285955c9fe8713962ab88'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 'f4cada9af07a649a90db88e328fa7e5546ec39dd0182a346b493c63a27c57a20'
    end
  end

  def install
    bin.install "lsas"
  end
end

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
      sha256 '3c047d70f37ff9b815b6d0c0268c8a42e6fdde9616e7f3885d9a4829c6c89688'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 'aece51c380b8d82a0a02ee8e193dd2248357a2f42adfe81c25c9c76191a46af1'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 '60a1b373d6dd98c1b56b89203bbca064d060185652dc172051595a85e6fd4490'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 'bd3c9b3ee4b8ef67e4a9b94e980014788aed5f186a888f10dd603d7d9a17510d'
    end
  end

  def install
    bin.install "lsas"
  end
end

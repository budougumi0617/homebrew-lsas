require "formula"

REPOSITORY_URL="https://github.com/budougumi0617/lsas".freeze
HOMEBREW_LSAS_VERSION="0.1.8".freeze

class Lsas < Formula
  homepage REPOSITORY_URL
  version HOMEBREW_LSAS_VERSION

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_386.zip"
      # openssl dgst -sha256 dist/snapshot/lsas_linux_386.zip
      sha256 '97f28c2edc2d617338617d8706906fb154f5c1fb0e37ce378b005a3252a94ef3'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_386.zip"
      sha256 'd3d43c78928180b311d2fd7c1901548291183704a68adb96f33cbdc1fd390721'
    end
  else
    if OS.linux?
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_linux_amd64.zip"
      sha256 '8aacfe61e8c73852850180511d3994796a2293bcdc350011f2186a767d776396'
    else
      url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_LSAS_VERSION}/lsas_darwin_amd64.zip"
      sha256 'd21fc26efe944d932a366bff43f6d6d7767e3355bd9e4c5ba3a0e065d86e7fc1'
    end
  end

  def install
    bin.install "lsas"
  end
end

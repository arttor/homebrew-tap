# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmify < Formula
  desc "Creates Helm chart from Kubernetes yaml."
  homepage "https://github.com/arttor/helmify"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arttor/helmify/releases/download/v0.4.5/helmify_Darwin_arm64.tar.gz"
      sha256 "2743e8c6c60446a9ebed52df3b029d36db9625aba3dbbad5b6f7cf1b5b63d104"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.4.5/helmify_Darwin_x86_64.tar.gz"
      sha256 "b2169ff03e456446b629136bd3168790552aa2128f1c9e1b7ec8f5a0dc382806"

      def install
        bin.install "helmify"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arttor/helmify/releases/download/v0.4.5/helmify_Linux_arm64.tar.gz"
      sha256 "85bcd13f7a4c4c67f5566282c0f77d430ca8315c745dbbb47cb86a43ceef0892"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.4.5/helmify_Linux_x86_64.tar.gz"
      sha256 "80f26dc9c792a9437afb1a1532ceb458f5f60474243fec212c34c669429cd0d5"

      def install
        bin.install "helmify"
      end
    end
  end

  test do
    system "#{bin}/helmify --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmify < Formula
  desc "Creates Helm chart from Kubernetes yaml."
  homepage "https://github.com/arttor/helmify"
  version "0.3.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arttor/helmify/releases/download/v0.3.22/helmify_0.3.22_macOS_arm64.tar.gz"
      sha256 "fa8b7aa5c32585feece79ae47ec70803bff865630b47c6e0e1d461ed9cc51483"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.3.22/helmify_0.3.22_macOS_64-bit.tar.gz"
      sha256 "1d5f141208b2576f6f78d4bfcfef7b17b5247a9e942c11a457f1819a9db541d0"

      def install
        bin.install "helmify"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.3.22/helmify_0.3.22_Linux_64-bit.tar.gz"
      sha256 "6ae7fa6726fd09a39d1b60c4ce7df7edc3fb4fbee2fc99211c217870cf8d226b"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arttor/helmify/releases/download/v0.3.22/helmify_0.3.22_Linux_arm64.tar.gz"
      sha256 "918176c20a0db94566b93705c65f9d1c5562c87993f7e5b81eba2e2d7fa8a381"

      def install
        bin.install "helmify"
      end
    end
  end

  test do
    system "#{bin}/helmify --version"
  end
end

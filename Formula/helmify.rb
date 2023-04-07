# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmify < Formula
  desc "Creates Helm chart from Kubernetes yaml."
  homepage "https://github.com/arttor/helmify"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.4.0/helmify_0.4.0_macOS_64-bit.tar.gz"
      sha256 "ea97f2e6e06377c183ec0e809c9439b89c2875e4f88184223d6fe0e81432ce7d"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arttor/helmify/releases/download/v0.4.0/helmify_0.4.0_macOS_arm64.tar.gz"
      sha256 "1be8c350bc3ee0d5887d0da5f242f17af1ad0f155346e7162db3f4e96f072a91"

      def install
        bin.install "helmify"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arttor/helmify/releases/download/v0.4.0/helmify_0.4.0_Linux_arm64.tar.gz"
      sha256 "c7105583ad9b156f1621e85e4e54b70d8fe4a7bfe2ff612a84f9ca0250b6be18"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.4.0/helmify_0.4.0_Linux_64-bit.tar.gz"
      sha256 "f3b4d45b85d0fee4f2a2aa68c7342884ed9bbc9fbe3786a367894559a6ada6b2"

      def install
        bin.install "helmify"
      end
    end
  end

  test do
    system "#{bin}/helmify --version"
  end
end

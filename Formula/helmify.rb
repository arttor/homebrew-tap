# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmify < Formula
  desc "Creates Helm chart from Kubernetes yaml."
  homepage "https://github.com/arttor/helmify"
  version "0.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arttor/helmify/releases/download/v0.3.16/helmify_0.3.16_macOS_arm64.tar.gz"
      sha256 "9cec2b998a0ba3b59612356ba462b69d8933de43a5067d1244c9777b41ea871a"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.3.16/helmify_0.3.16_macOS_64-bit.tar.gz"
      sha256 "b902229f0ffcc647a67014952bf9956969c715aa523f321e522826b44a51b311"

      def install
        bin.install "helmify"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arttor/helmify/releases/download/v0.3.16/helmify_0.3.16_Linux_arm64.tar.gz"
      sha256 "58494ef31762cbb74d68a4ed589baa480ce606e231a1b82a24d4390ac5466678"

      def install
        bin.install "helmify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arttor/helmify/releases/download/v0.3.16/helmify_0.3.16_Linux_64-bit.tar.gz"
      sha256 "cc86152632ce305d7ccf0d490997524a0dd8cd4225231c306f2047f085975111"

      def install
        bin.install "helmify"
      end
    end
  end

  test do
    system "#{bin}/helmify --version"
  end
end

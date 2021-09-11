class Helmify < Formula
  desc "Creates Helm chart from Kubernetes yaml"
  homepage "https://github.com/arttor/helmify"
  version "v0.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arttor/helmify/releases/download/v0.3.0/helmify-v0.3.0-darwin-amd64.tar.gz"
    sha256 "7c7651d8a47dcc0ba50d9b870f107cbd0988c5f6b259c3958194df03ee9c7f07"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arttor/helmify/releases/download/v0.3.0/helmify-v0.3.0-darwin-arm64.tar.gz"
    sha256 "2393f1e2c3789eee66ad0b3ce08a81dbb7338d6303de91261a22ed31839d381f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arttor/helmify/releases/download/v0.3.0/helmify-v0.3.0-linux-amd64.tar.gz"
    sha256 "021f04e0cb70ed25ab0d23c9817235e10646dde64ad0a6c639a5c55f5834f965"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arttor/helmify/releases/download/v0.3.0/helmify-v0.3.0-linux-arm64.tar.gz"
    sha256 "d986beb49194544fb1a98012f73601bf08c336c94e0b9259d30d8ce361c5bea1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/arttor/helmify/releases/download/v0.3.0/helmify-v0.3.0-linux-arm.tar.gz"
    sha256 "a5378639dbe645c6a3723cf668c7dcd57d96854f50633151a6bd7a037b076487"
  end

  def install
      bin.install "helmify"
  end

  test do
    system "#{bin}/helmify --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.7.2-rc"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.7.2-rc/shield_Darwin_x86_64.tar.gz"
      sha256 "16d903f73ca838c4d499e9f84d4d1334aba5a29755b787f72b5cd4326570e47d"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.7.2-rc/shield_Darwin_arm64.tar.gz"
      sha256 "2a988fac3c4e230f49fdb945426ebab014bb4d5ed66ae2bb9bec339b18f2cb31"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.2-rc/shield_Linux_x86_64.tar.gz"
        sha256 "fabf9db0c85ad19051b9eaa2d84d2b45eaac4e70630db2dfbeeb69729d07126f"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.2-rc/shield_Linux_arm.tar.gz"
        sha256 "ba683d36d2164d5b1709190823036c5d23d592e6504bf8276be1d3272fd58c25"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.2-rc/shield_Linux_arm64.tar.gz"
        sha256 "dd3c4cd42cb35305287f6a3434cd32912543db1e03317c8f0600f23e139fbbcd"

        def install
          bin.install "shield"
        end
      end
    end
  end
end

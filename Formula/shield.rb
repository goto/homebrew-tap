# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.25"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.25/shield_Darwin_x86_64.tar.gz"
      sha256 "2ab957e844bda6cdea63be83bafd374801bef63c6d0f91aa30ea1967edd70b57"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.25/shield_Darwin_arm64.tar.gz"
      sha256 "a2dc4c11abc96cba3d3a3b7df8f4aad94c92ee57c6380b9ac2790d5f107acab3"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.25/shield_Linux_x86_64.tar.gz"
        sha256 "302d284f4a2d13314d66a613869f5c678be494731f537653250e0fbc572c7bbb"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.25/shield_Linux_arm.tar.gz"
        sha256 "a1fb83370250902f29a0c02cbca6392d4d21ea2ceffc5ba356ca2b4f0376c64e"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.25/shield_Linux_arm64.tar.gz"
        sha256 "f3ddb1bc976610fbc90aefca087cd475f1f07b6bf487440e38d036aa5a3a583d"

        def install
          bin.install "shield"
        end
      end
    end
  end
end

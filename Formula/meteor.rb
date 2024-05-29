# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meteor < Formula
  desc "Metadata collection tool."
  homepage "https://github.com/goto/meteor"
  version "0.10.5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/meteor/releases/download/v0.10.5/meteor_Darwin_x86_64.tar.gz"
      sha256 "c2f4e589161dd00666f583c6ad1b437b3c9fe526d762e1adf3727f993da4eb88"

      def install
        bin.install "meteor"
      end
    end
    on_arm do
      url "https://github.com/goto/meteor/releases/download/v0.10.5/meteor_Darwin_arm64.tar.gz"
      sha256 "21a339349f923732e2a98eee406c7c5aba7c887a0b6dccc37db845798dc05e2f"

      def install
        bin.install "meteor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/meteor/releases/download/v0.10.5/meteor_Linux_x86_64.tar.gz"
        sha256 "3b20f49d43acbf1b2726ce4d3cac713e0b0b09337348ecbd0c962dbd7c2b72b5"

        def install
          bin.install "meteor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/meteor/releases/download/v0.10.5/meteor_Linux_arm64.tar.gz"
        sha256 "d885eef1d5d032d45c8a4cacd420ba9813e2330ba396d952c412612b67fa8fe1"

        def install
          bin.install "meteor"
        end
      end
    end
  end
end

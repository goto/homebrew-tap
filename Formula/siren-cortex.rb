# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SirenCortex < Formula
  desc "Cortex plugin for siren."
  homepage "https://github.com/goto/siren/plugins/providers/cortex"
  version "0.6.9-cortex"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.9-cortex/siren-cortex_Darwin_x86_64.tar.gz"
    sha256 "31216a465cbfa5d7f874bf9c7219f5e2a6a854d0366ff14873d7d5fbcbaf9b6d"

    def install
      bin.install "siren-cortex"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the SirenCortex
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/siren/releases/download/v0.6.9-cortex/siren-cortex_Linux_x86_64.tar.gz"
      sha256 "ca8a8ff032bea5ab57e90ad203d4095ed611210f53f7a63746064d2e77a4be45"

      def install
        bin.install "siren-cortex"
      end
    end
  end
end

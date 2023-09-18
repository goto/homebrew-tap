# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SirenCortex < Formula
  desc "Cortex plugin for siren."
  homepage "https://github.com/goto/siren/plugins/providers/cortex"
  version "0.6.7"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.7/siren-cortex_Darwin_x86_64.tar.gz"
    sha256 "33cbf1b9b916c803aff98d48c65b5ad7859f99506f559df8fa27ba829b1afbad"

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
      url "https://github.com/goto/siren/releases/download/v0.6.7/siren-cortex_Linux_x86_64.tar.gz"
      sha256 "a5324043ffc6f56e12195f632b21251847565bc0d94eacf65934677620cbed1f"

      def install
        bin.install "siren-cortex"
      end
    end
  end
end

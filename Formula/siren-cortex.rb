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
    sha256 "231ee4b0cbf90bce7f11667705f364367dfeb2baa12e48135ff8eb3f8bd95e36"

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
      sha256 "61d83c4d2f92a3f635fc376037e01876436f74f1c0a64400845c74d4b33d85b3"

      def install
        bin.install "siren-cortex"
      end
    end
  end
end
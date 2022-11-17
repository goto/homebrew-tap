# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/odpf/siren"
  version "0.5.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/odpf/siren/releases/download/v0.5.1/siren_0.5.1_macos_x86_64.tar.gz"
    sha256 "ed89be4f84ffdc633342bcbfb74e5dfd6295878e0c98a976eeb9702db86465fe"

    def install
      bin.install "siren"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Siren
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/siren/releases/download/v0.5.1/siren_0.5.1_linux_x86_64.tar.gz"
      sha256 "74833630f52b6336e682fc55cd355927f1400a77ef65182cc43c3313979175d0"

      def install
        bin.install "siren"
      end
    end
  end
end

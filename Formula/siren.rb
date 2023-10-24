# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.6.9-dev"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.9-dev/siren_Darwin_x86_64.tar.gz"
    sha256 "0b19b882c11e83b9f23c0e768dd274eb07e7f4ec44119d1565427c4d433bab70"

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
      url "https://github.com/goto/siren/releases/download/v0.6.9-dev/siren_Linux_x86_64.tar.gz"
      sha256 "d4cc530c50c39246a04093bd848b26987f2f7c4ea9a48d636df1984770146b21"

      def install
        bin.install "siren"
      end
    end
  end
end

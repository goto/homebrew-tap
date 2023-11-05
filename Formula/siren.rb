# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.6.10"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.10/siren_Darwin_x86_64.tar.gz"
    sha256 "1561fcab9d44bfdd79e8c0e2c77081cf92a2ed70975756c6736bfe8095954e07"

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
      url "https://github.com/goto/siren/releases/download/v0.6.10/siren_Linux_x86_64.tar.gz"
      sha256 "d76a7978b6f576d512b2fc3001c7e54ab4735667473d8891746a3fac5c8af69f"

      def install
        bin.install "siren"
      end
    end
  end
end

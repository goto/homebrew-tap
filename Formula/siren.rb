# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.7.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.7.1/siren_Darwin_x86_64.tar.gz"
    sha256 "86eed22ede4ec02b8ff61700e730a959cb66814aa55757ae1626a483ea7493ef"

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
      url "https://github.com/goto/siren/releases/download/v0.7.1/siren_Linux_x86_64.tar.gz"
      sha256 "f643375ecacfc7ac171b9c6d35d3790c89dd2bf8e447de43723e9cedd87ac84c"

      def install
        bin.install "siren"
      end
    end
  end
end

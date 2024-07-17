# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.7.8-rc"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.7.8-rc/siren_Darwin_x86_64.tar.gz"
    sha256 "1ec13818e77c229d554891746fdab496a0ae36f43b6d0a52d7086635a306addb"

    def install
      bin.install "siren"
    end

    on_arm do
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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/siren/releases/download/v0.7.8-rc/siren_Linux_x86_64.tar.gz"
        sha256 "d4b25f1ad9534f01ce7ac28f710c17f6bab5d6f5fa29c93aacdc106b7a73399d"

        def install
          bin.install "siren"
        end
      end
    end
  end
end

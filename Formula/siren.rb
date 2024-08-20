# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.8.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.8.0/siren_Darwin_x86_64.tar.gz"
    sha256 "5897bf89deefd79d4a5b937f7e25527fcb471506202ea9a883cb2f2b516e584b"

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
        url "https://github.com/goto/siren/releases/download/v0.8.0/siren_Linux_x86_64.tar.gz"
        sha256 "1d2a071f644300ba220500b5ee73bfd4c4410c3a805627781804e1783d08b683"

        def install
          bin.install "siren"
        end
      end
    end
  end
end

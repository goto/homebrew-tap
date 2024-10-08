# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meteor < Formula
  desc "Metadata collection tool."
  homepage "https://github.com/goto/meteor"
  version "0.10.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/meteor/releases/download/v0.10.6/meteor_Darwin_x86_64.tar.gz"
      sha256 "2b7c83fd34bacfdcae3ed57b207c6266368fa72228187efbc6568a2e80a4d071"

      def install
        bin.install "meteor"
      end
    end
    on_arm do
      url "https://github.com/goto/meteor/releases/download/v0.10.6/meteor_Darwin_arm64.tar.gz"
      sha256 "ee4381ebc97d2b5fab0a48ddd72a6993d9de9f6a5d82246d73063ad088ebf7b4"

      def install
        bin.install "meteor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/meteor/releases/download/v0.10.6/meteor_Linux_x86_64.tar.gz"
        sha256 "88690c5d4821a3254a765eca2ce95924a6875820cc1b9645374e9032c9a4addf"

        def install
          bin.install "meteor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/meteor/releases/download/v0.10.6/meteor_Linux_arm64.tar.gz"
        sha256 "238544976511635524d6029969ad67ad0b1eea1aeb6c484f7e794d3780362b96"

        def install
          bin.install "meteor"
        end
      end
    end
  end
end

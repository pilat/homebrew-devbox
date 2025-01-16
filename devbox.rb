# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devbox < Formula
  desc ""
  homepage ""
  version "0.1.12"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pilat/devbox/releases/download/v0.1.12/devbox_0.1.12_Darwin_x86_64.tar.gz"
      sha256 "31cb2fea2f44eae0086a8a29a7026ceb918e3589633bf34a9514736ab65aa367"

      def install
        bin.install "devbox"
        bash_completion.install "completions/devbox.bash" => "devbox"
        zsh_completion.install "completions/devbox.zsh" => "_devbox"
        fish_completion.install "completions/devbox.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pilat/devbox/releases/download/v0.1.12/devbox_0.1.12_Darwin_arm64.tar.gz"
      sha256 "294ca3a87217eb34a3ec6cb75e1e1e8dd786911a5c1ae7eeb896bdb104e9c103"

      def install
        bin.install "devbox"
        bash_completion.install "completions/devbox.bash" => "devbox"
        zsh_completion.install "completions/devbox.zsh" => "_devbox"
        fish_completion.install "completions/devbox.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pilat/devbox/releases/download/v0.1.12/devbox_0.1.12_Linux_x86_64.tar.gz"
        sha256 "4ffe71acfab5e0f0c58dde03d598f213672db9314a3c4cb805faf2124e5f66ff"

        def install
          bin.install "devbox"
          bash_completion.install "completions/devbox.bash" => "devbox"
          zsh_completion.install "completions/devbox.zsh" => "_devbox"
          fish_completion.install "completions/devbox.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pilat/devbox/releases/download/v0.1.12/devbox_0.1.12_Linux_arm64.tar.gz"
        sha256 "d0bb1cf659628e88ee0c7be60361f81657039d98064e30c417636dbdfc97d88e"

        def install
          bin.install "devbox"
          bash_completion.install "completions/devbox.bash" => "devbox"
          zsh_completion.install "completions/devbox.zsh" => "_devbox"
          fish_completion.install "completions/devbox.fish"
        end
      end
    end
  end
end

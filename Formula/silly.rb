# frozen_string_literal: true

# Just a silly little Formula
class Silly < Formula
  desc 'Just a silly little Formula'
  homepage 'https://github.com/koddsson/homebrew-tap-test'
  url "file://#{Pathname(__FILE__).dirname.parent}/script/tap-test"
  version '1'
  sha256 '05c6ae5ef8dd50baaad0b1907e35c8267b4dbcd2539f4ec32da999b8507988cd'
  license 'BSD-3-Clause'

  def install
    bin.install 'tap-test'
  end

  test do
    assert_equal 'Hello!', shell_output("#{bin}/tap-test").strip
  end
end

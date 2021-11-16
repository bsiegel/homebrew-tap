class MdnsRepeater < Formula
  desc "Multicast DNS repeater"
  homepage "https://github.com/bsiegel/mdns-repeater"
  url "https://github.com/bsiegel/mdns-repeater/archive/refs/tags/1.12.tar.gz"
  sha256 "0cfec5cb8c34ffaf853521c490bae0aef606800b3ca44db79f1f1803e64593a8"
  license "GPL-2.0-only"
  head "https://github.com/bsiegel/mdns-repeater.git", branch: "master"

  def install
    system "make"
    sbin.install "mdns-repeater"
    doc.install "README.txt", "LICENSE.txt"
  end

  plist_options startup: true, manual: "mdns-repeater"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>KeepAlive</key>
          <true/>
          <key>RunAtLoad</key>
          <true/>
          <key>ProgramArguments</key>
          <array>
              <string>#{sbin}/mdns-repeater</string>
              <string>-f</string>
              <string>en0</string>
              <string>en1</string>
          </array>
      </dict>
      </plist>
    EOS
  end

  test do
    system sbin/"mdns-repeater", "-h"
  end
end

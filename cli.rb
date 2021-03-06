require 'terminal-notifier'
require './lib/pdf_generation'

class CLI < Thor
  desc "notification", "prints a notification on mac os"
  def notification(
      title = "Testing notifications! And their lengths!",
      message = "This is an amazing test notification! Guess i have a lot more space to write text End!"
    )
    TerminalNotifier.notify(
      message,
      title: title,
      open: 'https://news.ycombinator.com',
      contentImage: 'https://img.icons8.com/color/1600/hacker-news.png'
    )
  end

  desc "pdf", "generates a simple hello.pdf in the local directory"
  def pdf
    generate_pdf
  end
end

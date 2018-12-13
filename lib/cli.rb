require 'terminal-notifier'
require 'prawn'

class CLI < Thor
  desc "notification", "prints a notification on mac os"
  def notification(title = "Testing notifications! And their lengths!", message = "This is an amazing test notification! Guess i have a lot more space to write text End!")
    TerminalNotifier.notify(message, :title => title, :open => 'https://news.ycombinator.com', :contentImage => 'https://img.icons8.com/color/1600/hacker-news.png')
  end

  desc "generate_pdf", "generates a simple hello.pdf in the local directory"
  def generate_pdf
    Prawn::Document.generate("hello.pdf") do
      stroke_axis

      text "the cursor is here: #{cursor}"
      text "now its here: #{cursor}"

      move_down 200
      text "on the first move the counter went down to: #{cursor}"

      move_up 100
      text "on the second move the cursor went up to: #{cursor}"

      move_cursor_to 50
      text "on the last move the cursor went directly to: #{cursor}"
    end
  end
end

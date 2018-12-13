require 'terminal-notifier'
require 'prawn'

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

  desc "generate_pdf", "generates a simple hello.pdf in the local directory"
  def generate_pdf
    Prawn::Document.generate("function_results/hello.pdf") do

      pad_top(150) {
        font("Courier", size: 38) do
          text "Dynamic PDF Creation", align: :center
        end
      }

      move_down(20)
      stroke_horizontal_rule

      pad_top(30) {
        font("Courier", size: 18) do
          text "A simple test case by Lenny", align: :center
        end
      }

      start_new_page

      pad_top(20) {
        font("Courier", size: 20) do
          text "Test PDF: Covering the basics", align: :center
        end
      }
      move_down 10
      stroke_horizontal_rule
      move_down 30

      column_box([0, cursor], columns: 2, width: bounds.width) do
        text((<<-END.gsub(/\s+/, ' ')) * 3)
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
          Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
          consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
          sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
          takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
          sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
          Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
          consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
          sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
          takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
          sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
          Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
          consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
          sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
          takimata sanctus est Lorem ipsum dolor sit amet. At vero eos et accusam et justo duo dolores et ea rebum.
          Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
          consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
          sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
          takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
          sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.
          Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,
          consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
          sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
          takimata sanctus est Lorem ipsum dolor sit amet.
        END
      end

      start_new_page

      stroke_axis(color: 'FF0000')

      move_down 10

      text "the cursor is here: #{cursor}"
      text "now its here: #{cursor}"

      move_down 200
      text "on the first move the counter went down to: #{cursor}"

      move_up 100
      text "on the second move the cursor went up to: #{cursor}"

      move_cursor_to 50
      text "on the last move the cursor went directly to: #{cursor}"

      start_new_page
    end
  end
end

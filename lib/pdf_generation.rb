require 'prawn'

def generate_pdf
  Prawn::Document.generate("function_results/hello.pdf", background: "#{Dir.pwd}/assets/background.png") do

    image "#{Dir.pwd}/assets/vehiculum_logo.png", scale: 0.4, position: :center, vposition: 30

    pad_top(120) {
      font("Courier", size: 38) do
        text "Dynamic PDF Creation", align: :center, mode: :stroke
      end
    }

    move_down(20)
    stroke_horizontal_rule

    pad_top(30) {
      font("Times-Roman", size: 22, style: :italic) do
        text "A simple test case by <color rgb='ff0000'><link href='https://github.com/lpk1/'>Lenny</link></color>", align: :center,
        inline_format: true
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
      text((<<-END.gsub(/\s+/, ' ')) * 3, align: :justify, character_spacing: 0.5)
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
        dolore magna aliquyam erat, sed diam voluptua.
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

    define_grid(columns: 2, rows: 7, gutter: 10)


    grid(0, 0).show
    grid(1, 0).show
    grid(2, 0).show
    grid(2, 1).show

    grid([4, 0], [4, 1]).show

    grid([5, 0], [5, 1]).bounding_box do
      text "Adding some content to this multi_box.\n" + " _ " * 200
    end
  end
end

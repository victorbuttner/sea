class ReportOrdersByUsers < Prawn::Document

	def initialize(report,view)
		super(top_margin: 70)
		@report = report
		@view = view
		report_header
		line_items
		report_footer
	end

	def report_header
		bounding_box [bounds.left, bounds.top], :width  => bounds.width do
            font "Helvetica"
            text "Relatório de vendas por usuário", :left => :right, :size => 20
            stroke_horizontal_rule
        end
	end

	def line_items
		move_down 20
		table item_table_data, :position => :center do
			row(0).find_style = :bold
			columns(1..2).align = :right
			self.row_colors = ["DDDDDD", "FFFFFF"]
			self.header = true
		end
	end
	
	def line_header
		["Data", "Usuário", "Venda"]
	end
  	def line_rows
    	@report.map do |item|
      		[ item["data"], item["usuario"], price(item["total"]) ]
    	end
  	end	

  	def item_table_data
  		[line_header, *line_rows] 
  	end

  	def price(num)
    	@view.number_to_currency(num)
  	end

  	def report_footer
  		bounding_box [bounds.left, bounds.bottom + 25], :width  => bounds.width do
            font "Helvetica"
            stroke_horizontal_rule
            move_down(5)
        end

  	end

  


end
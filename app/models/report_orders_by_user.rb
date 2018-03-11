class ReportOrdersByUser < ApplicationRecord

	#before_create :gen_report



   def gen_report
   	base_path = File.dirname(File.expand_path(__FILE__))+"/../../public" 

   	sql = "SELECT Date(o.created_at) data, 
       		u.username         usuario, 
       		Sum(o.sub_total) total
		FROM   users u 
       		INNER JOIN orders o 
               	ON u.id = o.user_id 
       		INNER JOIN payments p 
               ON p.order_id = o.id 
		WHERE  o.created_at >= '#{self.date_start} 00:00:00'
			AND o.created_at <= '#{self.date_end} 23:59:59'
       		AND o.order_status_id IN ( 3 ) 
		GROUP  BY 1, 
          		2; "

    execute_statement(sql)
          			

   end

   def execute_statement(sql)
        results = ActiveRecord::Base.connection.execute(sql)
        if results.present?
            return results
        else
            return nil
        end
    end


end

class Product
	def initialize name, category, tags = []
		@name = name 
		@category = category
		@tags = tags
	end

	def as_html_row
		 <<EOF
		<tr> 
			<th>Tomato</th>
			<td>fruit </td>
			<td>
				<ul>
					<li>red</li>
					<li>salad</li>
					<li>sour</li>
					<li></li>
				</ul>
			</td>
		</tr>
EOF
	end
end
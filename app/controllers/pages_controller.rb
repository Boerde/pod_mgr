def rss
	@items = Item.all
	respond_to do |format|
		format.atom
	end
end

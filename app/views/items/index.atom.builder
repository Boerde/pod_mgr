atom_feed({'xmlns:content' => 'http://purl.org/rss/1.0/modules/content/', 'xmlns:dc' => 'http://purl.org/dc/elements/1.1/', 'xmlns:itunes' => 'http://www.itunes.com/dtds/podcast-1.0.dtd'}) do |rss|
	srcFeed = FeedSetting.first
	rss.channel do |channel|
		channel.title(srcFeed.title)
		channel.link(srcFeed.link)
		channel.language(srcFeed.language)
		channel.copyright(srcFeed.copyright)
		channel.tag!('itunes:subtitle', srcFeed.subtitle); 
		channel.tag!('itunes:author', srcFeed.author);
		channel.tag!('itunes:summary', srcFeed.subtitle);
		channel.description(srcFeed.description);

		@items.each do |i|
			rss.entry(i) do |entry|
				entry.title(i.title)
				entry.author(i.author)
			end
		end	
	end
end

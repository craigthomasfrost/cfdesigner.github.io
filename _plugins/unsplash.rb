module Jekyll
    class UnsplashPhotoTag < Liquid::Tag

        def initialize(tag_name, size, tokens)
            super
            @size = size
        end

        def render(context)
            "<img src='https://source.unsplash.com/random/#{@size.delete(' ')}'>"
        end
    end
end

Liquid::Template.register_tag('unsplash', Jekyll::UnsplashPhotoTag)
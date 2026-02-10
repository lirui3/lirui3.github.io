# Overrides the `jekyll-socials` gem tag `{% social_links %}`.
#
# The upstream gem version has a bug when custom social entries have local file paths
# for logos: it tries to use Liquid filters (e.g. `relative_url`) inside Ruby code,
# which crashes the build.
#
# This implementation fixes that by properly handling relative URLs.

require "jekyll"

module Jekyll
  class SocialLinksOverrideTag < Liquid::Tag
    include Jekyll::Filters

    def render(context)
      @context = context
      site = context.registers[:site]
      socials = site.data["socials"]
      return "" unless socials.is_a?(Hash)

      parts = []

      socials.each do |key, value|
        case key.to_s
        when "scholar_userid"
          next if value.to_s.strip.empty?
          parts << link(icon("ai ai-google-scholar"), "https://scholar.google.com/citations?user=#{value}", "Google Scholar")

        when "linkedin_username"
          next if value.to_s.strip.empty?
          parts << link(icon("ti ti-brand-linkedin"), "https://www.linkedin.com/in/#{value}", "LinkedIn")

        else
          # Handle custom social entries (cv_custom, orcid_custom, researchgate_custom, etc.)
          if value.is_a?(Hash)
            url = value["url"].to_s.strip
            title = value["title"].to_s.strip
            logo = value["logo"].to_s.strip
            next if url.empty?

            if logo.empty?
              parts << link(title.empty? ? "Link" : title, url, title.empty? ? "Custom" : title)
            else
              # Check if logo is a URL or local path
              src = logo.include?("://") ? logo : relative_url(logo)
              alt = title.empty? ? "Custom" : title
              
              # Check file extension to determine if SVG or regular image
              if logo.end_with?(".svg")
                img = %(<svg class="svg-inline--fa"><image href="#
{src}" /></svg>)
              else
                img = %(<img src="#
{src}" alt="#
{escape_html(alt)}" style="width: 1em; height: 1em; vertical-align: -0.125em;">)
              end
              
              parts << link(img, url, alt)
            end
          end
        end
      end

      parts.join("\n")
    end

    private

    def icon(classes)
      %(<i class="#
{classes}"></i>)
    end

    def link(inner_html, href, title)
      %(<a href="#
{href}" title="#
{escape_html(title)}" target="_blank" rel="noopener noreferrer">#{inner_html}</a>)
    end

    def escape_html(str)
      str.to_s.gsub("&", "&amp;").gsub("<", "&lt;").gsub(">", "&gt;").gsub('"', "&quot;").gsub("'", "&#39;")
    end
  end
end

Liquid::Template.register_tag('social_links', Jekyll::SocialLinksOverrideTag)
module ApplicationHelper

  def title(title)
    content_for(:page_title) { title.to_s }
  end

  def portfolio_item(item_index)
    content_tag(:div, class: 'col-lg-4 col-sm-6') do

      link_to(image_path("content/portfolio/fullsize/#{item_index}.jpg"), class: 'portfolio-box') do
        image_tag("content/portfolio/thumbnails/#{item_index}.jpg", class: 'img-responsive') <<

        content_tag(:div, class: 'portfolio-box-caption') do
          content_tag(:div, class: 'portfolio-box-caption-content') do

            content_tag(:div, class: 'project-category text-faded') { 'Category' } <<
              content_tag(:div, class: 'project-name') { 'Project Name' }
          end

        end
      end

    end
  end

end

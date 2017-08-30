module ProductsHelper

  def status
    if @product && @product.active?
      raw content_tag(:i, '',  class: 'fa fa-2x fa-check')
    else
      raw content_tag(:i, '', class: 'fa fa-2x fa-close')
    end
  end
end

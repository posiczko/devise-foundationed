# frozen_string_literal: true

module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg|
      content_tag(:li, "#{msg}.")
    }.join
    sentence = I18n.t("errors.messages.not_saved",
                      count: resource.errors.count,
                      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
      <strong>#{sentence}</strong>
      <ul>
        #{messages}
      </ul>
    </div>
    HTML

    html.html_safe
  end

  def devise_simple_error_messages!
    return "" if resource.errors.empty?

    sentence = "Ooops!"
    if resource.errors.count == 1
      message = resource.errors.full_messages[0]
      html = <<-HTML
         <p>#{ sentence } #{ message }.</p>
      HTML
    else
      messages = resource.errors.full_messages.map { |msg|
        content_tag(:li, "#{msg}.")
      }.join
      html = <<-HTML
          <p>#{sentence}</p>
          <ul>
            #{messages}
          </ul>
      HTML
    end

    html.html_safe
  end
end

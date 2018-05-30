<ul class="post-copyright">
  <li class="post-copyright-category">
    <span>{{ __('post.copyright.category') + __('symbol.colon') }}</span>

    {% if post.categories and post.categories.length and theme.post_meta.categories %}
      <span>
        {% for cat in post.categories %}
          <span itemprop="about" itemscope itemtype="http://schema.org/Thing">{#
          #}<a href="{{ url_for(cat.path) }}" itemprop="url" rel="index">{#
            #}<span itemprop="name">{{ cat.name }}</span>{#
          #}</a>{#
        #}</span>

          {% set cat_length = post.categories.length %}
          {% if cat_length > 1 and loop.index !== cat_length %}
            {{ __('symbol.comma') }}
          {% endif %}
        {% endfor %}
      </span>
    {% endif %}

  </li>
  <li class="post-copyright-author">
    <span>{{ __('post.copyright.author') + __('symbol.colon') }} </span>{#
  #}{{ post.author | default(author) }}{#
#}</li>
  <li class="post-copyright-link">
    <span>{{ __('post.copyright.link') + __('symbol.colon') }}</span>
    <a href="{{ post.url | default(post.permalink) }}" title="{{ post.title }}">{{ post.url | default(post.permalink) }}</a>
  </li>
  <li class="post-copyright-license">
    <span>{{ __('post.copyright.license_title') + __('symbol.colon') }} </span>{#
  #}{{ post.copyright | default(__('post.copyright.license_content', theme.post_copyright.license)) }}{#
#}</li>
</ul>

{% if not is_post() %}
    <nav class="pg clearfix">
        {% if page.prev %}
            <a class="pg-link fll" href="{{ url_for(page.prev_link) }}">
                <i class="iconfont icon-back"></i>
                <span>{{ __('posts.prev') }}</span>
            </a>
        {% endif %}
        {% if page.next %}
            <a class="pg-link flr" href="{{ url_for(page.next_link) }}">
                <span>{{ __('posts.next') }}</span>
                <i class="iconfont icon-more"></i>
            </a>
        {% endif %}
    </nav>
{% else %}
    <nav class="pg clearfix">
        {% if page.prev.path %}
            <a class="pg-link fll" href="{{ url_for(page.prev.path) }}">
                <i class="iconfont icon-back"></i>
                <span class="nav-default">{{ page.prev.title }}</span>
                <span class="nav-mobile">{{ __('posts.prev_post') }}</span>
            </a>
        {% endif %}
        {% if page.next.path %}
            <a class="pg-link flr" href="{{ url_for(page.next.path) }}">
                <span class="nav-default">{{ page.next.title }}</span>
                <span class="nav-mobile">{{ __('posts.next_post') }}</span>
                <i class="iconfont icon-more"></i>
            </a>
        {% endif %}
    </nav>
{% endif %}
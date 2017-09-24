{% macro render(post) %}
    <article class="post">
        <header class="post-header">
            <h1 class="post-title">
                {% if is_home() %}
                    <a class="post-link" href="{{ url_for(post.path) }}"
                       data-hover="{{ post.title }}">{{ post.title }}</a>
                {% else %}
                    {{ post.title }}
                {% endif %}
            </h1>

            <div class="post-meta">
                {% set category = '' %}
                {% set url = '' %}
                {% if post.categories and post.categories.length %}
                    {% for c in post.categories %}
                        {% set category = category + __('categories.' + c.name.toLowerCase()) + '/' %}
                        {% set url = url_for(c.path) %}
                    {% endfor %}
                    {% set category = category.slice(0, -1) %}
                {% endif %}
                <i class="iconfont icon-calendar"></i>
                <span>{{ full_date(post.date, 'MMM DD, YYYY') }}</span>
                <span class="mh2">|</span>
                <i class="iconfont icon-folder"></i>
                <a href="{{ url }}">{{ category }}</a>
            </div>
        </header>

        {# Post TOC #}
        {#{% include "../_partial/_post/toc.swig" %}#}

        <div class="post-content clearfix">
            {% if is_home() %}
                {% set excerpt = "" %}
                {% if post.description %}
                    {% set excerpt = '<p>' + post.description + '</p>' %}
                    {% elif post.excerpt %}
                    {% set excerpt = post.excerpt %}
                {% endif %}
                {% if excerpt %}
                    {{ excerpt }}
                {% else %}
                    {{ post.content }}
                {% endif %}
            {% else %}
                {{ post.content }}
            {% endif %}
        </div>

        {#{% if not is_home() %}#}
        {# Post Copyright #}
        {#{% include "../_partial/_post/copyright.swig" %}#}

        {# Reward #}
        {#{% include "../_partial/_post/reward.swig" %}#}
        {#{% endif %}#}
        {% if is_home() %}
            <footer class="post-footer">
                {% if post.tags and post.tags.length %}
                    <div class="post-tags">
                        {% for tag in post.tags %}
                            <a class="post-tag mr2" href="{{ url_for(tag.path) }}">
                                <i class="iconfont icon-attachment"></i>
                                <span>{{ __('tags.' + tag.name.toLowerCase()) }}</span>
                            </a>
                        {% endfor %}
                    </div>
                {% endif %}
                <div class="read-more mt1">
                    <a href="{{ url_for(post.path) }}" class="read-more_link">{{ __('posts.read_more') }}</a>
                </div>
            </footer>
        {% else %}
            <footer class="post-footer">
                {% if post.tags and post.tags.length %}
                    <div class="post-tags">
                        {% for tag in post.tags %}
                            <a class="post-tag mr2" href="{{ url_for(tag.path) }}">
                                <i class="iconfont icon-attachment"></i>
                                <span>{{ __('tags.' + tag.name.toLowerCase()) }}</span>
                            </a>
                        {% endfor %}
                    </div>
                {% endif %}
            </footer>
        {% endif %}

    </article>
    {% if not is_home() %}
        {% include "../pagination.swig" %}
    {% endif %}
{% endmacro %}
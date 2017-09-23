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
                        {% set category = category + __('categories.' + c.name) + '/' %}
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

        <div class="post-content">
            {% if is_home() %}
                {% set excerpt = "" %}
                {% if post.description %}
                    {% set excerpt = '<p>' + post.description + '</p>' %}
                    {% elif post.excerpt %}
                    {% set excerpt = post.excerpt %}
                {% endif %}

                {% if excerpt %}
                    {{ excerpt }}
                    <div class="read-more">
                        <a href="{{ url_for(post.path) }}" class="read-more-link">{{ __('posts.read_more') }}</a>
                    </div>
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

        {% if not is_home() %}
            <footer class="post-footer">
                {% if post.tags and post.tags.length %}
                    <div class="post-tags">
                        {% for tag in post.tags %}
                            <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
                        {% endfor %}
                    </div>
                {% endif %}
                {# Post Pagination #}
                {% include "../pagination.swig" %}
            </footer>
        {% endif %}

    </article>
{% endmacro %}
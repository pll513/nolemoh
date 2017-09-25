{% macro render(current_page) %}
    <header class="header">
        <div class="logo">
            <a class="logo_link" href="/">NOLEMOH</a>
        </div>
        <nav class="nav">
            <a class="nav_link" href="#">搜索</a>
            {% for name, path in theme.nav %}
                {% if name === current_page %}
                    {% set link_class = 'nav_link active' %}
                {% else %}
                    {% set link_class = 'nav_link' %}
                {% endif %}
                <a class="{{ link_class }}" href="{{ url_for(path) }}">
                    {% set itemName = __('nav.' + name.toLowerCase()) %}
                    {% if itemName.startsWith('nav') %}
                        {{ name }}
                    {% else %}
                        {{ itemName }}
                    {% endif %}
                </a>
            {% endfor %}
        </nav>
    </header>
    <header class="header-mobile">
        <button class="navbar-toggle" id="navbar-toggle">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="logo">
            <a class="logo_link" href="/">NOLEMOH</a>
        </div>
        <nav class="nav none" id="mobile-nav">
            {% for name, path in theme.nav %}
                <a class="nav_link" href="{{ url_for(path) }}">
                    {% set itemName = __('nav.' + name.toLowerCase()) %}
                    {% if itemName.startsWith('nav') %}
                        {{ name }}
                    {% else %}
                        {{ itemName }}
                    {% endif %}
                </a>
            {% endfor %}
        </nav>
    </header>
{% endmacro %}
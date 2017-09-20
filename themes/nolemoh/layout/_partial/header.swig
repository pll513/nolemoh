{% macro render(current_page) %}
<header class="header">
    <div class="logo-wrap">
        <a class="logo">NOLEMOH</a>
    </div>
    <button class="navbar-toggle">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <nav class="nav">
        <a class="nav-link" href="#">搜索</a>
        {% for name, path in theme.nav %}
            {% if name === current_page %}
                {% set link_class = 'nav-link active' %}
            {% else %}
                {% set link_class = 'nav-link' %}
            {% endif %}
            <div style="display: none;">{{ name }}</div>
            <div style="display: none;">{{ current_page }}</div>
            <a class="{{ link_class }}" href="{{ url_for(path) }}" data-name="{{ name }}">
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
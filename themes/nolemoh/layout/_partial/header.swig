<header>
    <a>NOLEMOH</a>
    <button class="navbar-toggle">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <nav>
        <a href="javascript:void(0)">搜索</a>
        {% for name, path in theme.menu %}
            <a class="menu-item-link" href="{{ url_for(path) }}">
                {% set itemName = __('menu.' + name.toLowerCase()) %}
                {% if itemName.startsWith('menu') %}
                    {{ name }}
                {% else %}
                    {{ itemName }}
                {% endif %}
            </a>
        {% endfor %}
        {#<a href="/">文章</a>      #}
        {#<a href="/archive">归档</a>#}
        {#<a href="/about">关于</a>#}
    </nav>
</header>
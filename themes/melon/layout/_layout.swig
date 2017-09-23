{% import '_partial/header.swig' as header_template %}
<!DOCTYPE html>
<html lang={{ config.language }}>
<head>
    {% include '_partial/_head/meta.swig' %}
    <title>{% block title %}{% endblock %}</title>
</head>
<body>

<div class="container">
    {% if is_home() %}
        {% set current_page = 'home' %}
    {% elif is_archive() %}
        {% set current_page = 'archives' %}
    {% elif is_current('about') %}
        {% set current_page = 'about' %}
    {% endif %}
    {{ header_template.render(current_page) }}
    {#{% include '_partial/header.swig' %}#}
    <main>
        <div class="content-wrapper">
            <div id="content" class="content">
                {% block content %}{% endblock %}
            </div>
            {#{% include '_partial/comments.swig' %}#}
        </div>
    </main>

    {% include '_partial/footer.swig' %}
</div>

</body>
</html>
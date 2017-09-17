<!DOCTYPE html>
<html lang={{ config.language }}>
<head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
</head>
<body>
{% include '_partial/header.swig' %}

<main>
    <div class="content-wrapper">
        <div id="content" class="content">
            {% block content %}{% endblock %}
        </div>
        {#{% include '_partial/comments.swig' %}#}
    </div>
</main>

{% include '_partial/footer.swig' %}
</body>
</html>
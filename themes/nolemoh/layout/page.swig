{% extends "_layout.swig" %}
{% import '_partial/_post/post.swig' as post_template %}
{% import '_partial/_post/about.swig' as about_template %}

{% block title %} {{ page.title }} - {{ config.title }} {% endblock %}

{% block content %}
    {% if page.title === 'about' %}
        {{ about_template.render(page) }}
        {#{% include "_partial/_post/comments.swig" %}#}
    {% endif %}
{% endblock %}
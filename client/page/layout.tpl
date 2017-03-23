<!doctype html>
{% html lang="en" framework="spa:static/js/mod.js" %}
    {% head %}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/static/favicon.ico">
        <title>{{ title }}</title>

        {% require "spa:static/css/bootstrap.css" %}
        {% require "spa:static/css/bootstrap-theme.css" %}
        {% require "spa:static/css/style.css" %}
        {% require "spa:static/js/bigpipe.js" %}
        {% require "spa:static/js/page.js" %}
        {% require "spa:static/js/jquery-1.10.2.js" %}
        {% require "spa:static/js/bootstrap.js" %}
    {% endhead %}

    {% body %}
        <div id="wrapper">
            {% widget "spa:widget/header/header.tpl" %}

            {% block beforecontent %}
            {% endblock %}

            <div id="middle" class="container">
                <p>Page render: {{startTime}}</p>
                <p>Content below will be loaded by pagelet after 500ms</p>
                {% block content %}
                {% endblock %}
                <p>Content below will be loaded by bigpipe after 2s</p>
                <div id="bigpipe">
                    <p>Pagelet is loading in 2s</p>
                </div>
                {% spage "spa:widget/bigpipe/bigpipe.tpl" id="bigpipe" for="bigpipe" mode="async" %}
            </div>

            {% block aftercontent %}
            {% endblock %}

            {% widget "spa:widget/footer/footer.tpl" %}
        </div>

    {% endbody %}

    {% require "spa:page/layout.tpl" %}
{% endhtml %}

<!-- Fixed navbar -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <ul class="nav navbar-nav">
            {% for nav in navs %}
             <li{% if nav.active %} class="active"{% endif %}>
                <a href="{{ nav.url }}">{{ nav.name }}</a>
              </li>
            {% endfor %}
        </ul>
    </div>
</div>
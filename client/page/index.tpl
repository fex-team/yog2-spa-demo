{% extends 'spa:page/layout.tpl' %}

{% block content %}
     <div id="pages-container">
        {% spage "spa:widget/pagelets/home/home.tpl" for="pages-container" %}
     </div>

     {% script %}
        require('spa:widget/js/index/index.js').init();
     {% endscript %}

     {% require "spa:page/index.tpl" %}
{% endblock %}
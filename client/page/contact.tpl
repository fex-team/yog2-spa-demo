{% extends 'spa:page/layout.tpl' %}

{% block content %}
     <div id="pages-container">
        <p>Pagelet is loading in 500ms</p>
        {% widget "spa:widget/pagelets/contact/contact.tpl" for="pages-container" id="spage" mode="async"%}
     </div>
     
     {% script %}
        require('spa:widget/js/index/index.js').init();
     {% endscript %}

     {% require "spa:page/contact.tpl" %}
{% endblock %}
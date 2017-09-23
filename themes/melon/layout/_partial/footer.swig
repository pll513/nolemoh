<footer class="footer">
    <div class="social tc mb2">
        <a href="#"><i class="iconfont icon-email f28"></i></a>
        <a href="#"><i class="iconfont icon-github f28 mh2"></i></a>
        <a href="#"><i class="iconfont icon-rss f28"></i></a>
    </div>
    <div class="copyright tc">
        <span>
            ©
            {% set current = date(Date.now(), "YYYY") %}
            {% if theme.since and theme.since != current %}
                {{ theme.since }} -
            {% endif %}
            {{ current }}
            {{ config.title }}
        </span>
        <br>
        <span>
            Theme
            <a class="link" href="#">melon</a>, Powered by
            <a class="link" href="https://hexo.io/">Hexo</a>
        </span>

    </div>
</footer>
import os
from flask import Blueprint, render_template
from flask_login import login_required

core_bp = Blueprint("core", __name__)


@core_bp.route("/")
@login_required
def home():
    entries = []
    # I should probably add some checks. I could also just let caddy serve static files.
    for file in os.listdir("content"):
        with open(f"content/{file}") as fin:
            entries.append(fin.read())
    rendered = render_template("core/index.html", entries=entries)
    print(rendered)
    return rendered

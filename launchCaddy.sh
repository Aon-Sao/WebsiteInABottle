#!/bin/bash

caddy stop
caddy reverse-proxy --from lars.bar --to :8000

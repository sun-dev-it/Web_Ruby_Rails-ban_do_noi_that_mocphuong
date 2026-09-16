#!/usr/bin/env bash
set -o errexit

bundle install
bin/rails assets:precompile --trace
bin/rails db:migrate
bin/rails db:seed
#!/bin/sh

pkg=$(go list -m)
for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  go vet $pkg/$dir
done

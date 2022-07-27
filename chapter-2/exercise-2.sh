marco () {
    # shellcheck disable=SC2209
    # shellcheck disable=SC2034
    # shellcheck disable=SC2006
    marco_path=`pwd`
}
marco

# shellcheck disable=SC1009
polo () {
  echo "$marco_path"
}

polo

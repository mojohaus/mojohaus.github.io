#!/bin/sh


function makeRedirect() {

  echo "Redirects file: $1"
  while IFS= read -r line; do

    if [[ $line = \#* ]]; then
      continue
    fi

    if [[ -z $line ]]; then
      continue
    fi

    if [[ -z $from_url ]]; then
      from_url=$line
      continue
    fi

    if [[ -z $to_url_prefix ]]; then
      to_url_prefix=$line
      continue
    fi

    line=${line#./}

    from_file=src/site/xdoc/$from_url/${line/.html/.xml}
    to_url="${to_url_prefix}/${line}"

    echo "process from=$from_file to=$to_url"

    if [[ -f $from_file ]]; then
      echo "!!! File exist - $from_file not touch"
      continue
    fi

    mkdir -p `dirname $from_file`
    cat << EOF > $from_file
<?xml version="1.0"?>
<document xmlns="http://maven.apache.org/XDOC/2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/XDOC/2.0 https://maven.apache.org/xsd/xdoc-2.0.xsd">

  <head>
    <title/>
    <meta http-equiv="refresh" content="0; URL=https://www.mojohaus.org/$to_url"/>
  </head>

  <body>
    <section name="Site - redirect">
      <p>Please go to a new site address
        <a href="https://www.mojohaus.org/$to_url">https://www.mojohaus.org/$to_url</a>
      </p>
    </section>
  </body>
</document>
EOF

  done < $1
}

cd `dirname $0`

for R in `ls redirects/*.txt`; do

  makeRedirect $R

done

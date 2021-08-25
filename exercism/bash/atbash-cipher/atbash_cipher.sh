#!/usr/bin/env bash


main() {
  declare -A enc
  enc=([a]=z [b]=y [c]=x [d]=w [e]=v [f]=u
    [g]=t [h]=s [i]=r [j]=q [k]=p [l]=o [m]=n
    [n]=m [o]=l [p]=k [q]=j [r]=i [s]=h [t]=g
    [u]=f [v]=e [w]=d [x]=c [y]=b [z]=a)

  declare -A dec
  dec=([z]=a [y]=b [x]=c [w]=d [v]=e [u]=f
    [t]=g [s]=h [r]=i [q]=j [p]=k [o]=l [n]=m
    [m]=n [l]=o [k]=p [j]=q [i]=r [h]=s [g]=t
    [f]=u [e]=v [d]=w [c]=x [b]=y [a]=z)
  
  declare -l input=${2//[^[:alnum:]]/}
  st=""
  for (( i=0; i!="${#input}"; i+=1 )); do
    [[ ${input:$i:1} =~ [0-9] ]] && st+=${input:$i:1} && continue
    [[ ${1} == "encode" ]] && (( ${i} % 5 == 0 )) && st+=" "
    [[ ${1} == "encode" ]] && st+=${enc[${input:$i:1}]} || st+=${dec[${input:$i:1}]}
  done 
  echo $st
}

main "$@"

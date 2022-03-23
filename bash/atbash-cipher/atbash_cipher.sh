#!/usr/bin/env bash


main() {
  declare -A code
  code=([a]=z [b]=y [c]=x [d]=w [e]=v [f]=u
    [g]=t [h]=s [i]=r [j]=q [k]=p [l]=o [m]=n
    [n]=m [o]=l [p]=k [q]=j [r]=i [s]=h [t]=g
    [u]=f [v]=e [w]=d [x]=c [y]=b [z]=a)

  declare -l input=${2//[^[:alnum:]]/}
  st=""
  for (( i=0; i!="${#input}"; i+=1 )); do
    [[ ${input:$i:1} =~ [0-9] ]] && st+=${input:$i:1} && continue
    [[ ${1} == "encode" ]] && (( ${i} % 5 == 0 )) && st+=" "
    st+=${code[${input:$i:1}]}
  done 
  echo $st
}

main "$@"

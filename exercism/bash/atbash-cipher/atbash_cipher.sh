#!/usr/bin/env bash


main() {
  declare -A enc
  declare -A dec
  enc=([a]=z [b]=y [c]=x [d]=w [e]=v [f]=u
    [g]=t [h]=s [i]=r [j]=q [k]=p [l]=o [m]=n
    [n]=m [o]=l [p]=k [q]=j [r]=i [s]=h [t]=g
    [u]=f [v]=e [w]=d [x]=c [y]=b [z]=a)
  
  dec=([z]=a [y]=b [x]=c [w]=d [v]=e [u]=f
    [t]=g [s]=h [r]=i [q]=j [p]=k [o]=l [n]=m
    [m]=n [l]=o [k]=p [j]=q [i]=r [h]=s [g]=t
    [f]=u [e]=v [d]=w [c]=x [b]=y [a]=z)
 
    input=${2//[[:blank:]]/}
    input=${input,,}
    input=${input//[^[:alnum:]]/}
    st=""
    for (( i=0; i!="${#input}"; i+=1 )); do
#need to fix decode to not add spaces, only remove them.
      if [[ ${input:$i:1} =~ [0-9] ]]; then
        st+=${input:$i:1}
        continue
      fi
      if (( ${i} % 5 == 0 )); then
        st+=" "
      fi
      if [[ ${1} -eq "encode" ]]; then
        st+=${enc[${input:$i:1}]}
      else
        st+=${dec[${input:$i:1}]}
      fi
    done 
    echo $st
}

main "$@"

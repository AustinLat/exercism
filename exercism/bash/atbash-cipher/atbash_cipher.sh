#!/usr/bin/env bash


main() {
  declare -A alphabet
  alphabet=([a]=z [b]=y [c]=x [d]=w [e]=v [f]=u
    [g]=t [h]=s [i]=r [j]=q [k]=p [l]=o [m]=n
    [n]=m [o]=l [p]=k [q]=j [r]=i [s]=h [t]=g
    [u]=f [v]=e [w]=d [x]=c [y]=b [z]=a)

    #echo ${alphabet[G]}
    input=${2//[[:blank:]]/}
    input=${input,,}
    input=${input//[^[:alnum:]]/}
    st=""
    for (( i=0; i!="${#input}"; i+=1 )); do
      if [[ ${input:$i:1} =~ [0-9] ]]; then
        #need to figure out why this if statement isnt working and breaking all
        #tests
        st+=${input:$i:1}
        continue
      fi
      if (( ${i} % 5 == 0 )); then
        st+=" "
      fi
      if [[ ${1} -eq "encode" ]]; then
        st+=${alphabet[${input:$i:1}]}
      fi
    done 
    echo $st
}

main "$@"

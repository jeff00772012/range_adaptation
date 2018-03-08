

path=/data2/model_7/fsf
path2=/data2/block
temp_id=TMC

for subj in YHC YLG YNH YTH ;do
#CC CCK CCY CHH CHY CWL CXY  CYM CYY FYH HHY HYC JJW JZC KCL LTY LYH LYJ NYC PLL PST PTH PYL SLY SYC SYK TMC WPY WTC YCL YHC YLG YNH YTH; do

 for num in `seq 1 3`;do
   if (test "$num" = "1") then
     b1=`awk '{ print $1 }' ${path2}/${subj}.txt`
     b2=`awk '{ print $2 }' ${path2}/${subj}.txt`
    elif (test "$num" = "2") then
     b1=`awk '{ print $3 }' ${path2}/${subj}.txt`
     b2=`awk '{ print $4 }' ${path2}/${subj}.txt`
    else (test "$num" = "3") 
     b1=`awk '{ print $5 }' ${path2}/${subj}.txt`
     b2=`awk '{ print $6 }' ${path2}/${subj}.txt`
    fi
     
     sed s/run_1/run_${b1}/g ${path}/template_context.fsf > ${path}/temp1.fsf
     sed s/run_2/run_${b2}/g ${path}/temp1.fsf > ${path}/temp2.fsf
     sed s/context1/context${num}/g ${path}/temp2.fsf > ${path}/temp3.fsf
     sed s/${temp_id}/${subj}/g ${path}/temp3.fsf > ${path}/temp_real.fsf

     feat ${path}/temp_real.fsf
     rm ${path}/temp1.fsf ${path}/temp2.fsf ${path}/temp3.fsf ${path}/temp_real.fsf

 done

done

! Praat version. 5.0.0.1
# Calculating rhythmic metrics
# The calculation is based on 
#     White & Mattys (2007) Calibrating rhythm: First language and second language studies. 
#            Journal of Phonetics.  
# Out: Oct 2017 

form Calculate rhythmic metric (White & Mattys 2007)
    comment don't forget to put \ at the end of directory
    word inputdir C:\
    word filename 
    word outdir C:\

    comment Interval Metric (IM) Output:
    word im-out im.txt
    comment CV sequence for PVI calculation
    word cv-out cv.txt
    comment If you run the script over the same file
    comment try to delete the existing output file first.
    boolean delete-outputfile 0
    comment Exclude syllabic consonants?
    boolean Exclude 0
endform

if 'delete-outputfile' = 1
   filedelete 'outdir$''im-out$'
   filedelete 'outdir$''filename$'-'cv-out$'
endif 

Read from file... 'inputdir$''filename$'.TextGrid
;Read from file... 'inputdir$''filename$'.wav

soundname$=selected$("TextGrid")
;soundname$=selected$("Sound")

select TextGrid 'soundname$'
nLabel$ = Get number of intervals... 1
printline There are 'nLabel$' intervals in file: 'soundname$'



# Change interval labels into C's and V's

Replace interval text... 1 0 0 <cl>,b C Literals
Replace interval text... 1 0 0 <cl>,cj,I C Literals
Replace interval text... 1 0 0 <cl>,cj C Literals
Replace interval text... 1 0 0 <cl>,c C Literals
Replace interval text... 1 0 0 <cl>,d,e C Literals
Replace interval text... 1 0 0 <cl>,d C Literals
Replace interval text... 1 0 0 <cl>,g,uH C Literals
Replace interval text... 1 0 0 <cl>,g,o C Literals
Replace interval text... 1 0 0 <cl>,g,a C Literals
Replace interval text... 1 0 0 <cl>,gj C Literals
Replace interval text... 1 0 0 <cl>,g C Literals
Replace interval text... 1 0 0 <cl>,zy C Literals
Replace interval text... 1 0 0 <cl>,zj,i C Literals
Replace interval text... 1 0 0 <cl>,zj C Literals
Replace interval text... 1 0 0 <cl>,z C Literals
Replace interval text... 1 0 0 <cl>,t,a C Literals
Replace interval text... 1 0 0 <cl>,t C Literals
Replace interval text... 1 0 0 <cl>,kj,I C Literals
Replace interval text... 1 0 0 <cl>,kj C Literals
Replace interval text... 1 0 0 <cl>,k,o C Literals
Replace interval text... 1 0 0 <cl>,k C Literals

Replace interval text... 1 0 0 F,U C Literals
Replace interval text... 1 0 0 N,m C Literals
Replace interval text... 1 0 0 N,nj C Literals
Replace interval text... 1 0 0 N,n C Literals

Replace interval text... 1 0 0 a,<fr> V Literals
Replace interval text... 1 0 0 a,N V Literals
Replace interval text... 1 0 0 a,a V Literals
Replace interval text... 1 0 0 a,i V Literals
Replace interval text... 1 0 0 zj,i C Literals


Replace interval text... 1 0 0 e,<fr> V Literals
Replace interval text... 1 0 0 e,N V Literals
Replace interval text... 1 0 0 e,i V Literals


Replace interval text... 1 0 0 i,<fr> V Literals
Replace interval text... 1 0 0 i,N V Literals
Replace interval text... 1 0 0 i,i V Literals
Replace interval text... 1 0 0 i,y V Literals
Replace interval text... 1 0 0 oH,o V Literals

Replace interval text... 1 0 0 o,<fr> V Literals
Replace interval text... 1 0 0 o,N V Literals
Replace interval text... 1 0 0 o,a V Literals
Replace interval text... 1 0 0 o,i V Literals
Replace interval text... 1 0 0 o,o V Literals
Replace interval text... 1 0 0 o,u V Literals

Replace interval text... 1 0 0 r,e C Literals
Replace interval text... 1 0 0 p,U C Literals
Replace interval text... 1 0 0 nj,i C Literals
Replace interval text... 1 0 0 k,U C Literals
Replace interval text... 1 0 0 k,O C Literals

Replace interval text... 1 0 0 k,A C Literals
Replace interval text... 1 0 0 h,o C Literals
Replace interval text... 1 0 0 h,a C Literals
Replace interval text... 1 0 0 c,U C Literals
Replace interval text... 1 0 0 s,U C Literals
Replace interval text... 1 0 0 s,O C Literals
Replace interval text... 1 0 0 z,U C Literals

Replace interval text... 1 0 0 u,<fr> V Literals
Replace interval text... 1 0 0 u,N V Literals

Replace interval text... 1 0 0 h,a C Literals
Replace interval text... 1 0 0 n,a C Literals
Replace interval text... 1 0 0 n,o C Literals
Replace interval text... 1 0 0 m,o C Literals
Replace interval text... 1 0 0 k,o C Literals

Replace interval text... 1 0 0 w,a C Literals
Replace interval text... 1 0 0 y,a C Literals
Replace interval text... 1 0 0 t,a C Literals
Replace interval text... 1 0 0 t,O C Literals
Replace interval text... 1 0 0 u,N C Literals
Replace interval text... 1 0 0 y,uH C Literals
Replace interval text... 1 0 0 y,u C Literals
Replace interval text... 1 0 0 y,oH C Literals
Replace interval text... 1 0 0 y,a C Literals

Replace interval text... 1 0 0 Q,t,E C Literals

Replace interval text... 1 0 0 t,u C Literals
Replace interval text... 1 0 0 t,E C Literals
Replace interval text... 1 0 0 cj,I C Literals
Replace interval text... 1 0 0 kj,I C Literals
Replace interval text... 1 0 0 hj,I C Literals
Replace interval text... 1 0 0 sj,I C Literals



Replace interval text... 1 0 0 Q,t C Literals
Replace interval text... 1 0 0 Q,sy C Literals
Replace interval text... 1 0 0 Q,s C Literals

Replace interval text... 1 0 0 Q,cj C Literals
Replace interval text... 1 0 0 Q,g C Literals
Replace interval text... 1 0 0 Q,k,U C Literals
Replace interval text... 1 0 0 Q,kj C Literals
Replace interval text... 1 0 0 Q,k C Literals
Replace interval text... 1 0 0 Q,p C Literals

Replace interval text... 1 0 0 oH V Literals
Replace interval text... 1 0 0 uH V Literals
Replace interval text... 1 0 0 aH V Literals
Replace interval text... 1 0 0 iH V Literals
Replace interval text... 1 0 0 eH V Literals


# Morae


Replace interval text... 1 0 0 kj C Literals

Replace interval text... 1 0 0 gj C Literals
Replace interval text... 1 0 0 Gj C Literals
Replace interval text... 1 0 0 sj C Literals
Replace interval text... 1 0 0 cj C Literals
Replace interval text... 1 0 0 nj C Literals
Replace interval text... 1 0 0 hj C Literals
Replace interval text... 1 0 0 zj C Literals

# PAUSE
# CONSONANTS
Replace interval text... 1 0 0 A V Literals
Replace interval text... 1 0 0 E V Literals
Replace interval text... 1 0 0 I V Literals
Replace interval text... 1 0 0 O V Literals
Replace interval text... 1 0 0 U V Literals

Replace interval text... 1 0 0 #,<cl> EMPTY Literals
Replace interval text... 1 0 0 <sv>,<cl> EMPTY Literals
Replace interval text... 1 0 0 <pz>,<cl> EMPTY Literals

Replace interval text... 1 0 0 <cl> C Literals
Replace interval text... 1 0 0 "" EMPTY Literals
Replace interval text... 1 0 0 # EMPTY Literals
Replace interval text... 1 0 0 <pz> EMPTY Literals
Replace interval text... 1 0 0 <?> EMPTY Literals
Replace interval text... 1 0 0 <uv> EMPTY Literals
Replace interval text... 1 0 0 <sv> EMPTY Literals
Replace interval text... 1 0 0 <b> EMPTY Literals
Replace interval text... 1 0 0 <N> EMPTY Literals
Replace interval text... 1 0 0 <fr> EMPTY Literals
Replace interval text... 1 0 0 <fv> EMPTY Literals

Replace interval text... 1 0 0 e V Literals
Replace interval text... 1 0 0 i V Literals
Replace interval text... 1 0 0 a V Literals
Replace interval text... 1 0 0 o V Literals
Replace interval text... 1 0 0 u V Literals



Replace interval text... 1 0 0 ky C Literals
Replace interval text... 1 0 0 gy C Literals
Replace interval text... 1 0 0 Gy C Literals
Replace interval text... 1 0 0 sy C Literals
Replace interval text... 1 0 0 cy C Literals
Replace interval text... 1 0 0 ny C Literals
Replace interval text... 1 0 0 hy C Literals
Replace interval text... 1 0 0 by C Literals
Replace interval text... 1 0 0 py C Literals
Replace interval text... 1 0 0 my C Literals
Replace interval text... 1 0 0 ry C Literals
Replace interval text... 1 0 0 ty C Literals

Replace interval text... 1 0 0 k C Literals
Replace interval text... 1 0 0 g C Literals
Replace interval text... 1 0 0 G C Literals
Replace interval text... 1 0 0 Q C Literals
Replace interval text... 1 0 0 s C Literals
Replace interval text... 1 0 0 t C Literals

Replace interval text... 1 0 0 c C Literals
Replace interval text... 1 0 0 d C Literals
Replace interval text... 1 0 0 NH C Literals
Replace interval text... 1 0 0 n C Literals
Replace interval text... 1 0 0 h C Literals
Replace interval text... 1 0 0 F C Literals
Replace interval text... 1 0 0 k C Literals

Replace interval text... 1 0 0 b C Literals
Replace interval text... 1 0 0 p C Literals
Replace interval text... 1 0 0 m C Literals
Replace interval text... 1 0 0 r C Literals
Replace interval text... 1 0 0 w C Literals

Replace interval text... 1 0 0 zy C Literals
Replace interval text... 1 0 0 y C Literals
Replace interval text... 1 0 0 z C Literals
Replace interval text... 1 0 0 N C Literals



# Calculate the number of vowels
printline Total number of vowels is counted to estimate average speech rate (i.e. number of syllables per second)
num_nucleus = 0
num_consonants = 0
for i from 1 to 'nLabel$'
    label$ = Get label of interval... 1 i
    if label$ == "V"
        num_nucleus = 1 + num_nucleus
    elif label$ == "C"
        num_consonants = 1 + num_consonants
    endif
endfor

v_to_c_ratio = num_nucleus/num_consonants
printline Number of vocalic nucleus is 'num_nucleus'
printline Number of intervocalic consonants is 'num_consonants'
printline The ratio of vocalic nucleus to intervocalic consonants is: 'v_to_c_ratio:2'


# Make CV sequence only (4 iterations)
for j from 1 to 4
    for i from 1 to 'nLabel$'-1
        label$ = Get label of interval... 1 i
        nextlabel$ = Get label of interval... 1 i+1

        if label$ == "C" and nextlabel$ == "C"
             Remove right boundary... 1 i
             Replace interval text... 1 i i+1 CC C Literals
             mLabel$ = Get number of intervals... 1
             nLabel$ = mLabel$
        endif

        if label$ == "V" and nextlabel$ == "V"
             Remove right boundary... 1 i
             Replace interval text... 1 i i+1 VV V Literals
             mLabel$ = Get number of intervals... 1
             nLabel$ = mLabel$
        endif
        # for debug
        ;if j == 4
        ;    printline 'label$' 'nextlabel$'
	;endif
    endfor 
endfor

# Initialization of variables
sum_dur = 0
p_num = 0
v_sum_dur = 0
v_num = 0
c_sum_dur = 0
c_num = 0

printline 
printline The consonants and vowels are collapsed to make CV sequence only

select TextGrid 'soundname$'
newLabel$ = Get number of intervals... 1
printline After making CV sequence, 'soundname$' has 'newLabel$'

for i from 1 to 'newLabel$'

    label$ = Get label of interval... 1 i

	# This portion is to check whether there are some labels that I missed to change into C's or V's
        # If there are missing labels, those missing labels will be appear not indented (or tabbed)

     if label$ == "" or label$ == "pau" or label$ == "ERROR"
          print ?? 'label$'EMPTY'tab$'
     else
	if label$ == "V" or label$ == "C"
	    print 'tab$''label$''tab$'
	else
	    print #### 'label$''tab$'
	endif
    endif

    if label$ == "C" or label$ == "V"

	# Basic duration information of each phone
        pbeg = Get starting point... 1 i
        pend = Get end point... 1 i
        pdur = (pend - pbeg)*1000

	sum_dur = sum_dur + pdur
	p_num = p_num + 1
	printline 'pdur:3' 
   else
        printline
   endif


    if label$ == "V"
	vbeg = Get starting point... 1 i
        vend = Get end point... 1 i
        vdur = (vend-vbeg)*1000

        v_sum_dur = vdur + v_sum_dur
	v_num = v_num + 1
	fileappend 'outdir$''filename$'-'cv-out$' 'label$''tab$''vdur:3''newline$'
    endif

    if label$ == "C"
	cbeg = Get starting point... 1 i
        cend = Get end point... 1 i
        cdur = (cend-cbeg)*1000
        c_sum_dur = cdur + c_sum_dur
	c_num = c_num + 1
	fileappend 'outdir$''filename$'-'cv-out$' 'label$''tab$''cdur:3''newline$'
    endif
endfor

mean_p_dur = 'sum_dur'/('p_num'-1)
mean_v_dur = 'v_sum_dur'/('v_num'-1)
mean_c_dur = 'c_sum_dur'/('c_num'-1)

sum_dur_sec = sum_dur/1000
v_sum_dur_sec = v_sum_dur/1000
c_sum_dur_sec = c_sum_dur/1000
printline
printline Total duration of non-silent portion of the speech file is: 'sum_dur_sec:3' seconds
printline Number of phones are: 'p_num' phones
printline Total duration of vocalic intervals is: 'v_sum_dur_sec:3' seconds
printline Total number of vocalic intervals is: 'v_num' 
printline Total duration of intervocalic consonants is: 'c_sum_dur_sec:3' seconds
printline Total number of consonants is: 'c_num'
printline


printline
printline Mean duration of vocalic intervals, intervocalic consonantal intervals
printline 'tab$'Vocalic intervals: 'mean_v_dur:3' milliseconds
printline 'tab$'Intervocalic consonantal intervals: 'mean_c_dur:3' milliseconds
printline 'tab$'Mean (C & V) intervals: 'mean_p_dur:3' milliseconds


printline
printline Now we are ready to calculate standard devations

# initialization II for standard deviation
p_sum_variance = 0
v_sum_variance = 0
c_sum_variance = 0

;select TextGrid 'soundname$'
;nLabel$ = Get number of intervals... 1

for i from 1 to 'newLabel$'
    label$ = Get label of interval... 1 i

     if label$ == "V"
	vbeg = Get starting point... 1 i
        vend = Get end point... 1 i
        vdur = (vend-vbeg)*1000

        p_variance = (vdur - mean_p_dur)^2
        v_variance = (vdur - mean_v_dur)^2

	p_sum_variance = p_sum_variance + p_variance
	v_sum_variance = v_sum_variance + v_variance
 
	;printline 'label$' 'p_variance:3' 'v_variance:3' 'p_sum_variance:3' 'v_sum_variance:3'
    endif

    if label$ == "C"
	cbeg = Get starting point... 1 i
        cend = Get end point... 1 i
        cdur = (cend-cbeg)*1000

        p_variance = (cdur - mean_p_dur)^2
        c_variance = (cdur - mean_c_dur)^2

	p_sum_variance = p_sum_variance + p_variance
	c_sum_variance = c_sum_variance + c_variance


	;printline 'label$' 'p_variance:3' 'c_variance:3' 'p_sum_variance:3' 'v_sum_variance:3'
    endif
endfor

printline
printline standard deviation = square root(variance)
;printline Total sum needed to calculate phone variance: 'p_sum_variance:3''tab$'number of phones: 'p_num'
;printline Total sum needed to calculate vowel variance: 'v_sum_variance:3''tab$'number of vowels: 'v_num'
;printline Total sum needed to calculate consonant variance: 'c_sum_variance:3''tab$'number of consonants: 'c_num'
;printline

# THIS SEEMS TO BE THE CORRECT WAY OF CALCULATING STD DEV. BUT...
;p_variance = p_sum_variance/(p_num)
;v_variance = v_sum_variance/(v_num)
;c_variance = c_sum_variance/(c_num)

# Calculate standard deviation
;p_std_dev = sqrt(p_variance)
;v_std_dev = sqrt(v_variance)
;c_std_dev = sqrt(c_variance)

# THIS FORMULA GIVES ME SIMILAR RESULTS TO THE PAPER... HMMM...
p_std_dev = sqrt(p_sum_variance/(p_num-1))
v_std_dev = sqrt(v_sum_variance/(v_num-1))
c_std_dev = sqrt(c_sum_variance/(c_num-1))

varco_P = (p_std_dev/mean_p_dur)*100
varco_V = (v_std_dev/mean_v_dur)*100
varco_C = (c_std_dev/mean_c_dur)*100

printline Standard deivations for phones, vowels, and consonants
printline 'tab$'Vocalic intervals: 'v_std_dev:2'
printline 'tab$'Intervocalic consonantal intervals: 'c_std_dev:2'
printline 'tab$'Both intervals: 'p_std_dev:2'
printline ...


printline NOW THE RESULTS... %v, delta-V, delta-C, varcoV, varcoC, speech rate
percent_v = (v_sum_dur/sum_dur)*100
speech_rate = num_nucleus/(sum_dur/1000)

printline %v is 'percent_v:2'% 
printline delta-V is: 'v_std_dev:2' 
printline delta-C is: 'c_std_dev:2'
printline varcoP is: 'varco_P:2'
printline varcoV is: 'varco_V:2'
printline varcoC is: 'varco_C:2'
printline speech rate: 'speech_rate:2'
printline ...

# PUT THE RESULTS IN THE IM output

        printline Write filename, %v, delta V, delta C, Varco V, Varco C, speech rate to a log file
	fileappend 'outdir$''im-out$' 'filename$''tab$'
		...'num_nucleus''tab$''num_consonants''tab$''v_to_c_ratio:2''tab$'
		...'v_num''tab$''v_sum_dur_sec:3''tab$''c_num''tab$''c_sum_dur_sec:3''tab$'
		...'mean_v_dur:3''tab$''mean_c_dur:3''tab$'
		...'percent_v:3''tab$''v_std_dev:3''tab$''c_std_dev:3''tab$'
                ...'varco_V:3''tab$''varco_C:3''tab$''speech_rate:2''newline$'

printline
printline cv-output.txt is independently saved to be used to calculate PVI (pairwise variability index)
printline 'tab$''tab$'Use python pvi.py cv-output.txt
printline Then, you will get ...
printline 'tab$'nPVI
printline 'tab$'Normalized vocalic scores (nPVI-V)
printline 'tab$'Normalized consonantal scores (nPVI-C)
printline 'tab$'raw vocalic scores (rPVI-V)
printline 'tab$'raw consonantal scores (rPVI-C)
printline Done with 'soundname$'
printline Reday to process next file.... 

select TextGrid 'soundname$'
;Remove
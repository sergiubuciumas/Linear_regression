/*
 *
 * Task code generated by SAS Studio 3.3 
 *
 * Generated on '3/16/16, 12:55 AM' 
 * Generated by 'Sergiu Buciumas' 
 * Generated on server 'SASCOMPUTE3.KENNESAW.EDU' 
 * Generated on SAS platform 'AIX AIX 64 7.1' 
 * Generated on SAS version '9.04.01M2P07232014' 
 * Generated on browser 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36' 
 * Generated on web client 'https://phdsas.kennesaw.edu/SASStudio/main?locale=en_US&zone=GMT-04%253A00' 
 *
 */

ods noproctitle;
ods graphics / imagemap=on;

proc reg data=HW2REG.B4 alpha=0.05 plots(only)=(diagnostics residuals 
        partial(unpack) observedbypredicted);
    model y=x1 x2 x3 x4 x5 x6 x7 x8 x9 / noint collinoint vif partial;
    output out=WORK.Reg_stats p=p_ lcl=lcl_ ucl=ucl_ lclm=lclm_ uclm=uclm_ r=r_ 
        student=student_;
    run;
quit;
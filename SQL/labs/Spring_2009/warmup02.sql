# Lab 2: Warm-up Questions
# Insert into webct table
# id | qtype | title | image | question | answers | category
INSERT INTO webct VALUES(2012,'P','Vectorization', '','Use the vectorization idea to write two or three lines of code that will perform the same task as the following MATLAB script without using a <tt>for</tt> loop.<pre><span class="ML_comment">%--- make a plot of a weird signal</span><p>N = 200;<p>for k=1:N<p>   xk(k) = k/60;<p>   rk(k) = sqrt( xk(k)*xk(k) - 1 );<p>   sig(k) = exp(j*2*pi*rk(k));<p>end<p>plot( xk, real(sig), \'mo-\', xk, imag(sig), \'go-\' )</pre><i>Note:</i> there is a difference between the two multiply operations <tt>rr*rr</tt> and <tt>rr.*rr</tt> when <tt>rr</tt> is a vector.', 1, 'Warm-up02');
INSERT INTO webct VALUES(2013,'P','M-file to Generate One Sinusoid', '','Write a function that will generate a <b>single</b> sinusoid, <tt>x(t)= Acos(2&pi;&fnof;t+&phi;)</tt>. The function should have four input arguments: frequency (<tt>&fnof;</tt>), complex amplitude (<tt>X=Ae<sup>j&phi;</sup></tt>), duration (<tt>dur</tt>) and starting time (<tt>tstart</tt>). The function should return two output vectors: the values of the sinusoidal signal (<tt>x</tt>) and corresponding times (<tt>t</tt>) at which the sinusoid values are known. Make sure that the function generates exactly 25 values of the sinusoid per period. Call this function <tt>onecos()</tt>. <i>Hint: use goodcos() from the Pre-Lab part as a starting point.</i> Plot the result from the following call to test your function.<pre>[xx0,tt0] = onecos([2], [5*exp(j*pi/4)], 2, -1); <span class="ML_comment">% (freq in Hz)</span></pre>Use the <tt>notebook</tt> feature to make this plot within a MS-Word document.',1, 'Warm-up02');
INSERT INTO webct VALUES(2014,'P','Write the Sum of Sinusoids M-file', '','Write an M-file called <tt>add_sines.m</tt> that will synthesize a waveform in the form of (7) using <tt>X<sub>k</sub></tt> defined in (3).  Although <tt>for</tt> loops are rather inefficient in MATLAB, <i>you must write the function with one outer loop in this lab</i>. The inner loop should be vectorized. The first few statements of the M-file are the comment lines - they should look like:<p><pre>function [xx,tt] = add_sines(freqs, Camps, dur, tstart)<p><span class="ML_comment">%ADD_SINES Synthesize a signal from sum of complex exponentials<p>% usage:<p>%  [xx,tt] = add_sines(freqs, Camps, dur, tstart)<p>%    freqs = vector of frequencies (usually none are negative)<p>%    Camps = vector of COMPLEX amplitudes<p>%      dur = total time duration of the signal<p>%   tstart = starting time<p>%       xx = vector of sinusoidal values<p>%       tt = vector of times, for the time axis<p>%<p>% Note: freqs and Camps must be the same length.<p>%       Camps(1) corresponds to frequency freqs(1),<p>%       Camps(2) corresponds to frequency freqs(2), etc.<p>% The tt vector should be generated with a small time increment that<p>%       creates 25 samples for the shortest period, i.e., use the period<p>%       corresponding to the highest frequency in the freqs vector.</span></pre>The MATLAB syntax <tt>length(freqs)</tt> returns the number of elements in the vector <tt>freqs</tt>, so we do not need a separate input argument for the number of frequencies. On the other hand, the programmer (that is you) should provide error checking to make sure that the lengths of <tt>freqs</tt> and <tt>Camps</tt> are all the same. See <tt>help error</tt>.', 1, 'Warm-up02');
INSERT INTO webct VALUES(2015,'P','', '', 'In order to verify that this M-file can synthesize <b>harmonic</b> sinusoids, try the following test:<p><pre>[xx0,tt0] = add_sines([12,9,0], [exp(j*pi/4),2i,-4], 1, -0.5); <span class="ML_comment">%-Period = ?</span></pre><p>Use the <tt>notebook</tt> feature to make a plot of <tt>xx0</tt> within a MS-Word document. Notice that the waveform is periodic. Measure its period and state how the period is related to the fundamental frequency which is 3 Hz in this case.',1,'Warm-up02');
INSERT INTO webct VALUES(2016,'P','Adding Sinusoids (Optional)', '','Show how to use the <tt>add_sines.m</tt> M-file to plot a waveform that is the sum of several sinusoids, e.g.,<p><center><img src="/ece2025/cgi-bin/mimetex.exe?x(t)=\\Re\\{2e^{j80\\pi t} - 3e^{j80\\pi (t+0.02)} + (-\\sqrt{3} - j3)e^{j80\\pi t}\\}" alt="o"></center><p>Make a plot of <tt>x(t)</tt> versus <tt>t</tt>. Use the <tt>add_sines</tt> function and take a range for the time axis <tt>(t)</tt> that will cover 3 periods.<p>From the plot of <tt>x(t)</tt> versus <tt>t</tt> , measure the frequency, phase and amplitude of the sinusoidal signal by hand. Then use the phasor addition theorem along with MATLAB to calculate the magnitude and phase of <tt>x(t)</tt> from the complex amplitudes of the three terms.', 1, 'Warm-up02');
INSERT INTO webct VALUES(2017,'P','Generate a Harmonic Signal (Optional)', '', 'In order to verify that the <tt>add_sines.m</tt> M-file can synthesize harmonic sinusoids, try the following test and plot the result in MS-Word via the <tt>notebook</tt> capability.<pre>[xx0,tt0] = add_sines([12,9,0], [exp(j*pi/4),2i,-4], 1, -0.5); <span class="ML_comment">%-Period = ?</span></pre><p>Measure the DC value (which is also the average value) and also the period of <tt>xx0</tt> on the plot. Then write an explanation on the verification sheet of why the measured values are correct. Notice that when this M-file is used to synthesize harmonic waveforms, you must choose the entries in the frequency vector to be integer multiples of the fundamental frequency.', 1, 'Warm-up02');
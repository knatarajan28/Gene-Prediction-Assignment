# Gene-Prediction-Assignment
- Document all of shell commands in a plain text ".sh" file
- Fetch genome of fosfomycin resistant bacterium
- Choose 1 of 3 packages ( GeneMark src manuscript, GLIMMER src manuscript, Prodigal src manuscript )
- Predict all coding sequences in the bacterial isolate genome, and store stderr and stdout logfile as a single plaintext ".log" file
- Choose 1 of 2 packages ( RNAmmer src manuscript, barrnap src no-manuscript-exists )
- Extract all 16S rRNA gene sequences from the assembly file, stored as gunzip compressed FastA format
- Use extracted 16S FastA extracted sequence(s) to identify the top 5 hits. Include all pertinent alignment information, which would guide a final decision in identifying the isolate to species-level, and sort your best match to the top. Here is the main webGUI page, but this is a lesson on database importance and alignment results interpretation. The appropriate database must be selected (hint, it's not the default) or results will be unhelpful. Submit as ".top_ssu_alignments.xlsx" and remember to include a header row.

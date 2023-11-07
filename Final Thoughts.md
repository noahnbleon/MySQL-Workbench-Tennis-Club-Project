### Experience:
We had a goal to optimize the experience for both management and customers; throughout the creation of our database, we made the following decisions at our own discretion:

- We implemented a dual identification system for courts, comprising a user-friendly courtName and a systematic auto-incrementing courtID. The courtName serves as an easy reference for customers, while the courtID maintains consistent data referencing for management. This approach provides flexibility— for instance, if a court is temporarily removed and later reinstated, it may retain its courtName but would be assigned a new courtID to preserve database integrity.

- We chose to use ENUM for attributes like courtType in the Court table to ensure input consistency. For instance, we recognized from our research of tennis court types that since our client's tennis club does not have, and likely will never have, carpet courts— given their exclusion from tournament play— we utilized ENUM to limit the options available, thereby ensuring more consistently reliable data entries.

- In our TournPlayer table, we ensured uniqueness through a composite index, allowing each memberID to be associated with a single tournamentID. The index of type unique dubbed ‘idx_member_tournament’ encompasses both Member_memberID and Tournament_tournamentID columns. Similarly, we added two unique indexes to the TrainingSession table to prevent the double-booking of coaches or members.

### What We Learned:
As our project deadline approaches and we wrap up our development, we took some time to recognize areas where future improvements could be made. Structurally, we believe the database meets the needs of our client, though we acknowledge it has room for both expansion and refinement.

- While we have largely satisfied the requirements of our client (ChatGPT), we ponder whether we could have aligned more closely with the client's vision or extended the database's functionality beyond the client's original specifications.

    - An aspect that could have been more attuned to the client's needs was a dedicated Match table, detailing individual matches within tournaments, instead of the general matchesDesc in the Tournament table. Incorporating this would have necessitated an additional table linking TournPlayer entries to each Match. A match within the Match table would have the following attributes: a matchID, a tournamentID, playerIDs, and the winner(s).
    - We attempted this approach, but quickly found it had much more nuance than we anticipated. We considered separating Match into SinglesMatch and DoublesMatch in an effort to make it work, but realized this endeavor would be quite sloppy, and might have complicated our schema beyond our 15-table limit, so we chose not to include it.

- Our research journey led us to discoveries beyond the material within our coursework, like to the strategic use of indices. As it was a new concept, we referred to the MySQL Reference Manual to integrate this feature into our database properly.

- Lastly, we explored "triggers," a complex but intriguing aspect of MySQL. Had we been introduced to them in our course or with more time to spend researching them independently, we likely would have incorporated them into our model. However, we did not feel we sufficiently understood them at this time to be able to utilize them. We believe they could enhance the database's integrity, so we leave this note for future consideration.

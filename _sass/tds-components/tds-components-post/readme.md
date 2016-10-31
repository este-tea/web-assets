Code freeze styles
===============================

This is the folder where additions to the current styles will be added.
If changes need to be made to existing component style-sheets they will be
placed here until the next release.

Mimic the names of the parent folder so they can be migrated into the original
files later.

**For example:** If a change is needed to a card component, create a file here also
called `_tds-cards.scss` so later we know what they are for and can migrate them
accordingly.

If there is an existing style that needs to be changed. Copy that section from
the original file and paste it in this new folder in the new file.

**For example:** If the padding in the `_tds-cards.scss` file is wrong copy the
section that needs to be changed and paste it in the like-named file.

```
// Original section
.tds-card {
  position: relative;
  min-height: 1px;
  float: left;
  width: 100%;
  // margin-bottom: 20px; // Changed in _tds-cards /post
  padding: 24px;
  background-color: $tds-white;
  border: 3px solid $tds-lt-gray;
}

// New section in the new file
.tds-card {
  position: relative;
  min-height: 1px;
  float: left;
  width: 100%;
  margin-bottom: 30px; // New section updated
  padding: 24px;
  background-color: $tds-white;
  border: 3px solid $tds-lt-gray;
}

// Or at least make some sort of comment note for migration later.

```

And **leave a comment next to the section in the old file** indicating what
needs to be updated later.

Add new file import to css folder
---------------------------------

If you create a new file it will need to be added to the `~/css/styles-post.scss`
file so it can be compiled.

New css file
------------

Now the new file is called styles-post.css in the same compiled folder we used
before. This method will keep us from creating a large file overwriting what
already exists on the site.

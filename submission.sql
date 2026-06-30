-- Looking at the forum posts
SELECT * FROM forum_posts LIMIT 10;

-- Checking posts from April 2048 based on the clue
SELECT * FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-05-01';

-- Found a post mentioning the author's dad
SELECT * FROM forum_accounts WHERE username IN ('corny-disclosure-70','well-off-opera-35','definite-ecliptic-82','somber-cook-47','steep-mechanic-65','whispered-brochure-38','smart-money-44','white-finer-47','uncommon-legging-89','self-assured-awareness-84','prestigious-punctuation-86','flustered-lady-16','blue-fat-70','quick-witted-porter-16','submissive-cauliflower-18','strict-swordfish-98');

-- Found Brad Steele. Now checking for other Steeles
SELECT * FROM forum_accounts WHERE last_name = 'Steele';

-- Looking at posts from the Steele accounts
SELECT * FROM forum_posts WHERE author IN ('sharp-engine-57','stinky-tofu-98','smart-money-44');

-- Found Andrew Steele's EmptyStack account
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

-- Checking project messages after logging in
SELECT * FROM emptystack_messages WHERE subject ILIKE '%project%' OR body ILIKE '%project%';

-- Found Project TAXI and Looking up its ID
SELECT * FROM emptystack_projects WHERE code ILIKE '%TAXI%';

-- Checking the boss account
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
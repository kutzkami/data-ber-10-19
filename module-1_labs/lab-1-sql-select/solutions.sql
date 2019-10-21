<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>database</key>
			<string>bank</string>
			<key>host</key>
			<string>127.0.0.1</string>
			<key>kcid</key>
			<string>599947233107613308</string>
			<key>name</key>
			<string>localhost</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>root</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8</string>
			<key>contentFilterV2</key>
			<dict>
				<key>children</key>
				<array/>
				<key>filterClass</key>
				<string>groupNode</string>
				<key>isConjunction</key>
				<true/>
			</dict>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGJCVYJHZlcnNpb25YJG9iamVjdHNZJGFy
			Y2hpdmVyVCR0b3ASAAGGoKgHCBMUFRYaIVUkbnVsbNMJCgsMDxJX
			TlMua2V5c1pOUy5vYmplY3RzViRjbGFzc6INDoACgAOiEBGABIAF
			gAdUdHlwZVRyb3dzXxAdU2VsZWN0aW9uRGV0YWlsVHlwZU5TSW5k
			ZXhTZXTSFwsYGVxOU1JhbmdlQ291bnQQAIAG0hscHR5aJGNsYXNz
			bmFtZVgkY2xhc3Nlc1pOU0luZGV4U2V0oh8gWk5TSW5kZXhTZXRY
			TlNPYmplY3TSGxwiI1xOU0RpY3Rpb25hcnmiIiBfEA9OU0tleWVk
			QXJjaGl2ZXLRJidUZGF0YYABAAgAEQAaACMALQAyADcAQABGAE0A
			VQBgAGcAagBsAG4AcQBzAHUAdwB8AIEAoQCmALMAtQC3ALwAxwDQ
			ANsA3gDpAPIA9wEEAQcBGQEcASEAAAAAAAACAQAAAAAAAAAoAAAA
			AAAAAAAAAAAAAAABIw==
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {695, 483}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string>-- 1
SELECT client_id
FROM bank.client
WHERE district_id = 1
ORDER BY district_id ASC
LIMIT 5;

-- 2
SELECT client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- 3
SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

-- 4
SELECT DISTINCT `status`
FROM bank.loan
ORDER BY `status` ASC;

-- 5
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

-- 6
SELECT 
	account_id,
	amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

-- 7
SELECT 
	account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- 8
SELECT DISTINCT k_symbol
FROM bank.`order`
ORDER BY k_symbol

-- 9
SELECT order_id
FROM bank.`order`
WHERE account_id = 34;

-- 10
SELECT DISTINCT account_id
FROM bank.`order`
WHERE
	order_id &gt;= 29540
	AND order_id &lt;= 29560;
	
-- 11
SELECT amount
FROM bank.`order`
WHERE account_to = 30067122;

-- 12
SELECT 
	trans_id,
	`date`,
	`type`,
	amount	
FROM bank.trans
WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10;
</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>214</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>queryHistory</key>
	<array>
		<string>-- 12
SELECT 
	trans_id,
	`date`,
	`type`,
	amount	
FROM bank.trans
WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10</string>
		<string>-- 5
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1</string>
		<string>-- 12
SELECT 
	trans_id,
	`date`,
	`type`,
	amount	
FROM bank.trans
WHERE account_id = 793
ORDER BY `date`
LIMIT 10</string>
		<string>-- 12
SELECT 
	trans_id,
	`date`,
	`type`,
	amount	
FROM bank.trans
WHERE account_id = 793
LIMIT 10</string>
		<string>-- 11
SELECT amount
FROM bank.`order`
WHERE account_to = 30067122</string>
		<string>-- 11
SELECT amounts
FROM bank.`order`
WHERE account_to = 30067122</string>
		<string>-- 10
SELECT DISTINCT account_id
FROM bank.`order`
WHERE
	order_id &gt;= 29540
	AND order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE
	order_id &gt;= 29540
	AND order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE 
	order_id &gt;= 29540,
	order_id &lt;= 29560</string>
		<string>SELECT account_id
FROM bank.`order`
WHERE order_id &gt;= 29540,
	  order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE order_id &gt;= 29540,
	  order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE order_id &gt;= 29540,
	AND order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE TRUE,
	AND order_id &gt;= 29540,
	AND order_id &lt;= 29560</string>
		<string>-- 10
SELECT account_id
FROM bank.`order`
WHERE TRUE,
	AND order_id &gt;= 29540
	AND order_id &lt;= 29560</string>
		<string>-- 9
SELECT order_id
FROM bank.`order`
WHERE account_id = 34</string>
		<string>-- 8
SELECT DISTINCT k_symbol
FROM bank.`order`
ORDER BY k_symbol</string>
		<string>-- 8
SELECT DISTINCT k_symbol
FROM bank.`order`</string>
		<string>-- 8
SELECT DISTINCT k_symbol
FROM bank.order</string>
		<string>-- 7
SELECT 
	account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5</string>
		<string>-- 7
SELECT 
	account_id
FROM bank.loan
WHERE duration = 60
ORDER BY account_id ASC
LIMIT 5</string>
	</array>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>8.0.17</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>

# Regenerates index.html and services/*.html from the content below.
# Run from anywhere:  powershell -ExecutionPolicy Bypass -File D:\Website\_build\build.ps1
# NOTE: keep this file ASCII only (use HTML entities such as &amp; &#8377; &bull;).
$ErrorActionPreference = 'Stop'
$site = Split-Path -Parent $PSScriptRoot
$utf8 = New-Object System.Text.UTF8Encoding($false)
New-Item -ItemType Directory -Force "$site\services" | Out-Null

$siteName = 'Shreenath Finserve Private Limited'

# ---------------------------------------------------------------- DATA
$depts = @(
 [ordered]@{
  slug='government-subsidies-grants'; no='01'; name='Government Subsidies &amp; Grants'; menu='Government Subsidies &amp; Grants'
  short='Identify and pursue eligible government incentives and funding support.'
  tag='Government incentives &bull; Subsidies &bull; Grants'
  h1='Make the Most of the Incentives Available to Your Business.'
  intro='Government policies can create meaningful opportunities for eligible businesses. Shreenath Finserve helps businesses identify relevant central and state incentive schemes, understand eligibility, prepare applications and coordinate the documentation and follow-up process.'
  helps=@('Central and state government subsidy identification','Capital investment and interest subsidy support','Manufacturing and industrial policy incentives','MSME and startup incentive schemes','Food processing, renewable energy and sector-specific incentives','Power tariff, electricity duty and eligible reimbursement schemes','Export-related incentives and support programmes','Application documentation, submission coordination and claim follow-up')
  alsoLabel='Schemes and incentives we work with'
  also=@('MOFPI &amp; Ministry subsidies','GST refund','PMFME','GEB duty','Power tariff','EPCG','APEDA','AIF')
  who='New projects, expansion plans, manufacturing units, MSMEs, eligible startups and businesses investing in priority sectors.'
  how=@('Understand the project and location','Map potentially relevant schemes','Review eligibility and conditions','Prepare documentation and application support','Coordinate submissions and follow-up')
  cta='Check Incentive Eligibility'
  related=@('project-business-finance','virtual-cfo-services','audit-taxation-certifications')
  note='Scheme availability, eligibility, benefit amounts and approval are governed by the applicable policy and authority. Identification or application support does not guarantee sanction or disbursement.'
  img='s1.jpg'; alt='Solar energy installation representing eligible business investment and government incentive opportunities.'
 },
 [ordered]@{
  slug='project-business-finance'; no='02'; name='Project Finance, Business Finance &amp; Loans'; menu='Project Finance, Business Finance &amp; Loans'
  short='Structure debt and working-capital solutions around business requirements.'
  tag='Project finance &bull; Working capital &bull; Structured debt'
  h1='The Right Funding Structure for Your Next Business Milestone.'
  intro='Whether you are setting up a new project, expanding capacity or managing day-to-day working capital, the right funding structure matters. Shreenath Finserve supports businesses in assessing funding needs, preparing financial information and engaging with suitable banks and financial institutions.'
  helps=@('Greenfield and brownfield project finance','Term loans for expansion, machinery and infrastructure','Working capital limits including cash credit and overdraft','Bank guarantees and letters of credit','Equipment and machinery finance','MSME and business loan advisory','Structured debt and lender syndication support','CMA data, project reports and financial projections','Debt restructuring and refinancing advisory')
  alsoLabel='Loan products we assist with'
  also=@('Working capital','Term loans','MSME loans','Loan against property','Machinery loans','Home loan','Car loan','Education loan')
  who='Startups with viable projects, MSMEs, manufacturers, infrastructure businesses, renewable energy companies and established corporates.'
  how=@('Assess funding purpose and repayment capacity','Evaluate debt options','Prepare CMA, project reports and supporting information','Coordinate lender discussions','Support appraisal and documentation')
  cta='Discuss Your Funding Requirement'
  related=@('government-subsidies-grants','virtual-cfo-services','private-equity-fundraising')
  note='Financing is subject to lender appraisal, due diligence, credit policy, security requirements and final sanction. Shreenath Finserve does not represent that any loan or facility is guaranteed.'
  img='s2.jpg'; alt='Aerial view of an industrial estate representing an industrial project funding plan.'
 },
 [ordered]@{
  slug='private-equity-fundraising'; no='03'; name='Private Equity &amp; Fundraising'; menu='Private Equity &amp; Fundraising'
  short='Prepare for and pursue equity capital and strategic investment.'
  tag='Private equity &bull; Strategic investment &bull; Capital raising'
  h1='Bring the Right Capital and Strategic Partners Into Your Growth Story.'
  intro='Growth may require more than debt. Shreenath Finserve supports businesses in preparing for equity fundraising, developing a clear investment proposition and engaging with potential financial or strategic investors where there is a suitable mandate and fit.'
  helps=@('Private equity and growth capital advisory','Venture capital and startup fundraising support','Strategic investor identification and engagement','Investment readiness and business positioning','Business valuation and financial modelling','Investor presentations and information memoranda','Due diligence coordination and transaction support','Mergers, acquisitions and strategic transaction advisory','Pre-IPO and IPO-readiness support')
  alsoLabel=''
  also=@()
  who='Growth-stage companies, scalable startups, family businesses planning institutional capital and established companies evaluating strategic investment.'
  how=@('Understand business ambition','Assess investment readiness','Organise financial and business information and develop investor materials','Identify and approach relevant capital providers','Coordinate discussions and due diligence')
  cta='Explore Fundraising Options'
  related=@('project-business-finance','virtual-cfo-services','audit-taxation-certifications')
  note='Fundraising outcomes depend on business quality, investor appetite, valuation, due diligence and transaction terms. Any securities-related activity must be undertaken in compliance with applicable laws and through appropriately authorised professionals where required.'
  img='s3.jpg'; alt='Business founders presenting a growth investment opportunity to a group in a modern office.'
 },
 [ordered]@{
  slug='virtual-cfo-services'; no='04'; name='Virtual CFO Services'; menu='Virtual CFO Services'
  short='Bring financial discipline, reporting and decision support into everyday management.'
  tag='Virtual CFO &bull; MIS &bull; Financial control'
  h1='Financial Clarity. Better Decisions. Stronger Business Control.'
  intro='Business owners need timely financial information to make confident decisions. Virtual CFO services bring structured financial planning, reporting, cash-flow visibility and management support to businesses that need experienced financial leadership without appointing a full-time CFO.'
  helps=@('Monthly MIS and management reporting','Annual budgets and rolling forecasts','Cash-flow planning and working-capital monitoring','Profitability and business performance analysis','Financial policies, SOPs and internal controls','Cost optimisation and financial discipline','Lender, investor and board reporting support','Strategic financial planning and decision support')
  alsoLabel=''
  also=@()
  who='Owner-managed businesses, SMEs, growing companies, multi-location businesses and organisations preparing for institutional funding or expansion.'
  how=@('Understand business model and reporting needs','Review current finance processes','Define MIS and control framework','Establish reporting cadence','Review performance and recommend actions')
  cta='Speak to a Virtual CFO'
  related=@('project-business-finance','private-equity-fundraising','audit-taxation-certifications')
  note='The scope, frequency and deliverables of Virtual CFO services are agreed through a defined engagement. Statutory audit, attest and regulated professional functions are performed only by appropriately qualified and authorised professionals.'
  img='s4.jpg'; alt='Laptop displaying business performance dashboards used for financial review.'
 },
 [ordered]@{
  slug='audit-taxation-certifications'; no='05'; name='Audit, Taxation &amp; Certifications'; menu='Audit, Taxation &amp; Certifications'
  short='Coordinate essential compliance, tax and certification requirements.'
  tag='Audit support &bull; Taxation &bull; Regulatory compliance'
  h1='Stay Compliant. Stay Prepared. Build Business Confidence.'
  intro='A sound compliance framework protects business continuity and strengthens credibility with lenders, investors, customers and regulators. Shreenath Finserve helps businesses coordinate audit, taxation, statutory and certification requirements through an organised professional network.'
  helps=@('Statutory and internal audit coordination','Income-tax planning, return and compliance support','GST registration, returns and advisory','TDS/TCS compliance and related filings','Financial statements and certification coordination','ISO certification facilitation','FSSAI and sector-specific licence support','IEC, LEI, RCMC and other business registrations','Due-diligence and lender/investor compliance support')
  alsoLabel='Filings and certifications we handle'
  also=@('Income Tax Return','Compliances','Audit','TDS','TCS','GST return','ISO','FSSAI','IEC','LEI','ROF','RCMC','Halal')
  who='Startups, MSMEs, manufacturers, exporters, service companies and established businesses seeking organised compliance support.'
  how=@('Understand entity and compliance profile','Prepare a compliance calendar','Identify documentation and professional requirements','Coordinate filings, audits or certification processes','Track pending actions')
  cta='Discuss Your Compliance Needs'
  related=@('company-registrations','virtual-cfo-services','government-subsidies-grants')
  note='The applicable professional, statutory and certification requirements vary by entity and activity. Audit opinions, attestations and regulated certifications are issued only by appropriately qualified, independent and authorised professionals or bodies.'
  img='s5.jpg'; alt='Tax and compliance documents with a calculator and notes on a desk.'
 },
 [ordered]@{
  slug='company-registrations'; no='06'; name='Company Registrations'; menu='Company Registrations'
  short='Establish the right legal and regulatory foundation for your business.'
  tag='Incorporation &bull; Business setup &bull; Registrations'
  h1='Start Right. Build on the Right Foundation.'
  intro='Choosing the right business structure and completing the required registrations can make the next stages of growth easier. Shreenath Finserve helps entrepreneurs and businesses understand their options and coordinate incorporation and related registrations.'
  helps=@('Private Limited Company incorporation','Limited Liability Partnership (LLP)','One Person Company (OPC)','Partnership firm and proprietorship setup','Section 8 company incorporation support','PAN, TAN and GST registration coordination','MSME/Udyam registration','Startup India recognition application support','Basic post-incorporation compliance coordination')
  alsoLabel=''
  also=@()
  who='First-time entrepreneurs, professionals, family businesses, startups, non-profit initiatives and businesses entering a new venture.'
  how=@('Understand business activity and ownership','Discuss suitable structures','Coordinate name and incorporation documentation','Facilitate registrations','Outline immediate post-incorporation actions')
  cta='Start Your Business Setup'
  related=@('audit-taxation-certifications','virtual-cfo-services','government-subsidies-grants')
  note='The appropriate entity structure depends on business objectives, ownership, tax, regulatory and compliance considerations. Incorporation and registration are subject to approval by the relevant authorities.'
  img='s6.jpg'; alt='Entrepreneur signing incorporation documents to set up a new business.'
 }
)
$bySlug = @{}
foreach ($d in $depts) { $bySlug[$d.slug] = $d }

# ---------------------------------------------------------------- SHARED PARTS
function Head($title, $desc, $r) {
@"
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$title</title>
<meta name="description" content="$desc">
<link rel="icon" href="${r}img/logo.svg" type="image/svg+xml">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${r}css/style.css">
</head>
<body>
"@
}

function Header($r, $s, $active) {
  $items = ''
  foreach ($d in $depts) { $items += "          <li><a href=""$s$($d.slug).html""><b>$($d.no)</b>$($d.menu)</a></li>`n" }
  $mallOn = ''
@"
<div class="topbar">
  <div class="wrap">
    <span>Ahmedabad &middot; Mahuva (Bhavnagar)</span>
    <span class="topbar-links">
      <a href="tel:+919824886280">+91 98248 86280</a>
      <a href="mailto:md@shreenathfinserve.com">md@shreenathfinserve.com</a>
    </span>
  </div>
</div>

<header class="header" id="top">
  <div class="wrap header-in">
    <a href="${r}index.html" class="brand" aria-label="$siteName - home">
      <img src="${r}img/logo.svg" alt="" width="44" height="44">
      <span class="brand-name">Shreenath Finserve<small>Private Limited</small></span>
    </a>
    <nav class="nav" id="nav" aria-label="Main">
      <ul>
        <li><a href="${r}index.html">Home</a></li>
        <li><a href="${r}index.html#about">About Us</a></li>
        <li class="has-sub">
          <button class="sub-btn" type="button" aria-expanded="false">Our Financial Mall</button>
          <ul class="sub">
$items          </ul>
        </li>
        <li><a href="${r}index.html#lifecycle">Business Lifecycle</a></li>
        <li><a href="${r}index.html#industries">Industries We Serve</a></li>
        <li><a href="${r}index.html#corporate">Corporate Advisory</a></li>
        <li><a href="${r}index.html#contact" class="btn btn-gold nav-cta">Contact Us</a></li>
      </ul>
    </nav>
    <button class="burger" id="burger" aria-label="Open menu" aria-expanded="false" aria-controls="nav"><span></span><span></span><span></span></button>
  </div>
</header>
"@
}

function EnquiryForm($selectedSlug) {
  $opts = ''
  foreach ($d in $depts) {
    $sel = ''
    if ($d.slug -eq $selectedSlug) { $sel = ' selected' }
    $opts += "          <option$sel>$($d.name)</option>`n"
  }
@"
    <form class="form reveal" id="enquiry" novalidate>
      <div class="row2">
        <div class="field"><label for="name">Name</label><input id="name" name="name" type="text" required autocomplete="name"></div>
        <div class="field"><label for="company">Company name</label><input id="company" name="company" type="text" autocomplete="organization"></div>
      </div>
      <div class="row2">
        <div class="field"><label for="phone">Mobile</label><input id="phone" name="phone" type="tel" required autocomplete="tel" inputmode="tel"></div>
        <div class="field"><label for="email">Email</label><input id="email" name="email" type="email" autocomplete="email"></div>
      </div>
      <div class="field">
        <label for="service">Service required</label>
        <select id="service" name="service">
$opts        </select>
      </div>
      <div class="field"><label for="msg">Brief requirement <small>(optional)</small></label><textarea id="msg" name="msg" rows="3"></textarea></div>
      <div class="form-actions">
        <button type="submit" class="btn btn-gold">Submit Enquiry on WhatsApp</button>
        <button type="button" class="btn btn-line" id="mailBtn">Send by Email</button>
      </div>
      <p class="form-note" id="formNote" role="status">By submitting, you agree that our team may contact you about your enquiry. We do not share your details for marketing by third parties.</p>
    </form>
"@
}

function Footer($r) {
@"
<footer class="footer">
  <div class="wrap footer-in">
    <div class="footer-brand">
      <img src="${r}img/logo.svg" alt="" width="40" height="40">
      <div><strong>$siteName</strong><span>The Financial Mall &middot; Ahmedabad &amp; Mahuva</span></div>
    </div>
    <nav class="footer-nav" aria-label="Footer">
      <a href="${r}index.html#about">About Us</a><a href="${r}index.html#mall">Our Financial Mall</a><a href="${r}index.html#lifecycle">Business Lifecycle</a><a href="${r}index.html#industries">Industries</a><a href="${r}index.html#contact">Contact</a>
    </nav>
  </div>
  <div class="wrap">
    <p class="disclaimer">The information on this website is general in nature and is not an offer, guarantee or professional opinion. Loan sanction, subsidy approval, investor funding, tax outcomes and certifications depend on the decisions of lenders, authorities, investors and certification bodies. Audit, attest and other regulated services are provided only by appropriately qualified and authorised professionals.</p>
  </div>
  <div class="wrap footer-bottom">
    <span>&copy; <span id="year">2026</span> $siteName. All rights reserved.</span>
    <span>Photos: Unsplash &amp; Pexels</span>
  </div>
</footer>

<a class="wa-float" href="https://wa.me/919824886280?text=Hello%20Shreenath%20Finserve%2C%20I%20would%20like%20to%20know%20more%20about%20your%20services." target="_blank" rel="noopener" aria-label="Chat on WhatsApp">
  <svg viewBox="0 0 24 24" width="26" height="26" fill="currentColor" aria-hidden="true"><path d="M12.04 2a9.9 9.9 0 0 0-8.5 14.9L2 22l5.25-1.5A9.9 9.9 0 1 0 12.04 2Zm0 1.8a8.1 8.1 0 1 1-4.1 15.1l-.3-.17-3.1.89.9-3-.2-.32A8.1 8.1 0 0 1 12.04 3.8Zm-3.2 4.2c-.17 0-.45.06-.69.32-.24.26-.9.88-.9 2.15s.92 2.5 1.05 2.67c.13.17 1.8 2.88 4.45 3.92 2.2.87 2.65.7 3.13.65.48-.04 1.55-.63 1.77-1.24.22-.6.22-1.13.15-1.24-.06-.11-.24-.17-.5-.3-.26-.13-1.55-.77-1.79-.86-.24-.09-.41-.13-.59.13-.17.26-.68.86-.83 1.04-.15.17-.3.2-.57.07-.26-.13-1.1-.4-2.1-1.3-.78-.69-1.3-1.55-1.45-1.8-.15-.27-.02-.4.11-.53.12-.12.26-.3.4-.46.13-.15.17-.26.26-.44.09-.17.04-.33-.02-.46-.07-.13-.59-1.43-.81-1.95-.2-.5-.43-.43-.59-.44h-.5Z"/></svg>
</a>

<script src="${r}js/main.js"></script>
</body>
</html>
"@
}

function ContactSection($heading, $copy, $selected) {
  $form = EnquiryForm $selected
@"
<section class="section contact" id="contact">
  <div class="wrap contact-grid">
    <div class="contact-copy reveal">
      <p class="eyebrow" id="enquire">Contact us</p>
      <h2>$heading</h2>
      <p>$copy</p>
      <div class="person">
        <strong>Kaushik Mehta</strong>
        <span>Managing Director</span>
      </div>
      <ul class="contact-list">
        <li><a href="tel:+919824886280">+91 98248 86280</a></li>
        <li><a href="mailto:md@shreenathfinserve.com">md@shreenathfinserve.com</a></li>
        <li><a href="https://wa.me/919824886280" target="_blank" rel="noopener">WhatsApp our team</a></li>
      </ul>
    </div>
$form
  </div>
</section>
"@
}

# ---------------------------------------------------------------- HOME PAGE
$mall = ''
foreach ($d in $depts) {
  $mall += @"
      <a class="mall-card reveal" href="services/$($d.slug).html">
        <div class="ph"><img src="img/$($d.img)" alt="$($d.alt)" loading="lazy"></div>
        <div class="body">
          <span class="mall-no">$($d.no)</span>
          <h3>$($d.name)</h3>
          <p>$($d.short)</p>
          <span class="more">Explore service</span>
        </div>
      </a>

"@
}

$industries = @('Manufacturing &amp; Engineering','Renewable Energy &amp; Infrastructure','Food Processing &amp; Agriculture','Healthcare &amp; Hospitals','Trading, Distribution &amp; Exports','Technology &amp; Startups','Professional &amp; Business Services','Education &amp; Social Sector','Corporate &amp; Institutional Advisory')
$ind = ''
$i = 1
foreach ($x in $industries) { $ind += "      <li class=""reveal""><span>0$i</span>$x</li>`n"; $i++ }

$homePage = (Head "$siteName | The Financial Mall - Subsidies, Finance, Fundraising, Virtual CFO, Tax &amp; Registrations" "Shreenath Finserve is a financial advisory, fundraising and business consulting firm in Ahmedabad and Mahuva. Government subsidies, project finance, private equity, Virtual CFO, audit and taxation, and company registrations under one roof." "")
$homePage += Header "" "services/" ""
$homePage += @"

<main>

<section class="hero">
  <div class="hero-bg" style="background-image:url('img/hero.jpg')"></div>
  <div class="wrap hero-in">
    <p class="eyebrow">Your complete business financial mall</p>
    <h1>Everything Your Business Needs. All Under One Roof.</h1>
    <p class="lead">From starting your business to scaling it, raising capital and preparing for an IPO, Shreenath Finserve brings financial advisory, fundraising and business consulting solutions together under one roof.</p>
    <div class="hero-cta">
      <a href="#mall" class="btn btn-gold">Explore Our Services</a>
      <a href="#contact" class="btn btn-ghost">Book a Business Consultation</a>
    </div>
  </div>
</section>

<!-- Figures: confirm the basis and period of each before publishing -->
<section class="numbers" aria-label="Our track record">
  <div class="wrap">
    <ul class="numbers-grid">
      <li class="reveal"><strong><span data-count="2000" data-prefix="&#8377;" data-suffix=" Cr+">&#8377;2,000 Cr+</span></strong><span>Funds raised for businesses</span></li>
      <li class="reveal"><strong><span data-count="250" data-prefix="&#8377;" data-suffix=" Cr+">&#8377;250 Cr+</span></strong><span>Subsidies facilitated</span></li>
      <li class="reveal"><strong><span data-count="6" data-suffix="">6</span></strong><span>Specialist service departments</span></li>
      <li class="reveal"><strong><span data-count="2" data-suffix="">2</span></strong><span>Branches in Gujarat</span></li>
    </ul>
  </div>
</section>

<section class="section" id="about">
  <div class="wrap split">
    <div class="media reveal">
      <img src="img/about.jpg" alt="Financial advisory team supporting businesses with integrated financial solutions." loading="lazy">
      <img class="media-small" src="img/team.jpg" alt="Team working together over documents and devices" loading="lazy">
    </div>
    <div class="reveal">
      <p class="eyebrow dark">About Shreenath Finserve</p>
      <h2>One Partner for Every Stage of Your Business.</h2>
      <p>Shreenath Finserve is a financial advisory, fundraising and business consulting firm focused on helping businesses make informed financial decisions and access the support they need at every stage of growth. By bringing together services across government incentives, debt finance, equity fundraising, financial management, taxation, compliance and business setup, the firm aims to provide a coordinated advisory experience through one relationship.</p>
      <p>Our approach is built around understanding the business first, identifying the requirement, evaluating practical options and coordinating the right expertise for execution.</p>
      <ul class="ticks">
        <li>Multiple requirements coordinated through one relationship</li>
        <li>Debt, equity, incentives, compliance and financial management considered together</li>
        <li>Support from new ventures to established enterprises</li>
        <li>A practical, relationship-led approach</li>
      </ul>
    </div>
  </div>
</section>

<section class="section ivory" id="mall">
  <div class="wrap">
    <div class="section-head reveal">
      <p class="eyebrow dark">Our Financial Mall</p>
      <h2>Six departments. One connected ecosystem.</h2>
      <p>Explore six specialist service departments designed to support your business from its first registration to expansion, fundraising and IPO readiness. Running a business means making important decisions at every stage, and we help bring those requirements together through a coordinated range of professional services.</p>
    </div>
    <div class="mall-grid">
$mall    </div>
  </div>
</section>

<section class="section lifecycle" id="lifecycle">
  <div class="wrap">
    <div class="section-head light reveal">
      <p class="eyebrow">Business Lifecycle</p>
      <h2>With You at Every Stage of Growth.</h2>
      <p>Start with the right structure. Build strong financial systems. Access the right capital. Expand with confidence. Prepare for your next milestone. Shreenath Finserve aims to be a continuing advisory partner as your business evolves.</p>
    </div>
    <ol class="life">
      <li class="reveal"><span class="n">1</span><h4>START</h4><p>Incorporation, registrations and business structuring.</p></li>
      <li class="reveal"><span class="n">2</span><h4>ESTABLISH</h4><p>Tax, compliance, certifications and financial processes.</p></li>
      <li class="reveal"><span class="n">3</span><h4>GROW</h4><p>Government incentives, working capital and project finance.</p></li>
      <li class="reveal"><span class="n">4</span><h4>SCALE</h4><p>Virtual CFO, structured debt and equity fundraising.</p></li>
      <li class="reveal"><span class="n">5</span><h4>EXPAND</h4><p>Strategic investment, valuations and transaction support.</p></li>
      <li class="reveal"><span class="n">6</span><h4>PREPARE</h4><p>IPO readiness and capital-market advisory, subject to mandate and eligibility.</p></li>
    </ol>
  </div>
</section>

<section class="section" id="industries">
  <div class="wrap">
    <div class="section-head reveal">
      <p class="eyebrow dark">Industries We Serve</p>
      <h2>Advisory shaped around your sector.</h2>
      <p>Financial and business advisory support across a range of sectors, shaped around each organisation&rsquo;s operating model and funding needs.</p>
    </div>
    <ul class="ind">
$ind    </ul>

    <div class="corp reveal" id="corporate">
      <div class="corp-img"><img src="img/corp.jpg" alt="Corporate boardroom presentation during an advisory discussion." loading="lazy"></div>
      <div class="corp-body">
        <p class="eyebrow">Corporate &amp; Institutional Advisory</p>
        <h3>Bespoke mandates for complex financial requirements.</h3>
        <p>For established businesses and institutions with complex financial requirements, Shreenath Finserve can coordinate bespoke advisory mandates spanning debt and equity fundraising, financial restructuring, CFO support, transaction readiness, government incentives and compliance coordination.</p>
        <a href="#contact" class="btn btn-gold">Request a Consultation</a>
      </div>
    </div>
  </div>
</section>

<section class="section ivory" id="branches">
  <div class="wrap">
    <div class="section-head reveal">
      <p class="eyebrow dark">Our branches</p>
      <h2>Visit us in Ahmedabad or Mahuva</h2>
    </div>
    <div class="branch-grid">
      <article class="branch reveal">
        <h3>Ahmedabad</h3>
        <address>619, Shilp Epitome,<br>Opp. Nayara Petrol Pump,<br>B/h Rajpath Rangoli Road,<br>Ahmedabad - 380054</address>
        <a class="link-arrow" target="_blank" rel="noopener" href="https://www.google.com/maps/search/?api=1&amp;query=Shilp+Epitome+Rajpath+Rangoli+Road+Ahmedabad+380054">Open in Google Maps</a>
      </article>
      <article class="branch reveal">
        <h3>Mahuva</h3>
        <address>1 to 5, Shanti Flat, 1st Floor,<br>Near J. P. Parekh High School,<br>Mahuva, Bhavnagar - 364290</address>
        <a class="link-arrow" target="_blank" rel="noopener" href="https://www.google.com/maps/search/?api=1&amp;query=J.+P.+Parekh+High+School+Mahuva+Bhavnagar+364290">Open in Google Maps</a>
      </article>
    </div>
  </div>
</section>

$(ContactSection 'Tell Us What Your Business Needs.' 'Whether you are starting a new venture, planning an expansion, exploring funding or strengthening your financial systems, connect with our team. We will understand your requirement and help identify the appropriate next step.' '')

</main>

$(Footer '')
"@
[System.IO.File]::WriteAllText("$site\index.html", $homePage, $utf8)

# ---------------------------------------------------------------- SERVICE PAGES
foreach ($d in $depts) {
  $helps = ''
  foreach ($h in $d.helps) { $helps += "          <li>$h</li>`n" }
  $also = ''
  if ($d.also.Count -gt 0) {
    $chips = ''
    foreach ($c in $d.also) { $chips += "        <li>$c</li>`n" }
    $also = @"

    <div class="reveal" style="margin-top:56px">
      <h3 style="font-size:22px">$($d.alsoLabel)</h3>
      <ul class="chips">
$chips      </ul>
    </div>
"@
  }
  $steps = ''
  foreach ($s in $d.how) { $steps += "      <li class=""reveal"">$s</li>`n" }
  $rel = ''
  foreach ($rs in $d.related) { $rd = $bySlug[$rs]; $rel += "      <a href=""$($rd.slug).html""><b>$($rd.no)</b><span>$($rd.name)</span></a>`n" }

  $title = "$($d.name) | $siteName"
  $page = (Head $title $d.short "../")
  $page += Header "../" "" $d.slug
  $page += @"

<main>

<section class="page-hero">
  <div class="hero-bg" style="background-image:url('../img/$($d.img)')" role="img" aria-label="$($d.alt)"></div>
  <div class="wrap">
    <p class="crumbs"><a href="../index.html">Home</a><i>/</i><a href="../index.html#mall">Our Financial Mall</a><i>/</i>$($d.name)</p>
    <p class="eyebrow">Department $($d.no) &middot; $($d.tag)</p>
    <h1>$($d.h1)</h1>
    <p class="lead">$($d.intro)</p>
    <a href="#contact" class="btn btn-gold">$($d.cta)</a>
  </div>
</section>

<section class="section">
  <div class="wrap split top">
    <div class="reveal">
      <p class="eyebrow dark">What we help with</p>
      <h2>Practical support, in plain business language.</h2>
      <ul class="helps">
$helps      </ul>
    </div>
    <aside class="side reveal">
      <h3>Who can benefit</h3>
      <p>$($d.who)</p>
      <a href="#contact" class="btn btn-gold">$($d.cta)</a>
    </aside>
  </div>
  <div class="wrap">$also
  </div>
</section>

<section class="section lifecycle">
  <div class="wrap">
    <div class="section-head light reveal">
      <p class="eyebrow">Our approach</p>
      <h2>How we work</h2>
    </div>
    <ol class="steps">
$steps    </ol>
  </div>
</section>

<section class="section ivory">
  <div class="wrap">
    <div class="section-head reveal">
      <p class="eyebrow dark">Related services</p>
      <h2>Explore related services in the Financial Mall</h2>
    </div>
    <div class="related reveal">
$rel    </div>
    <p class="note reveal" style="margin-top:36px"><strong>Important note.</strong> $($d.note)</p>
  </div>
</section>

$(ContactSection 'Tell Us What Your Business Needs.' 'Share your requirement and our team will understand it and help identify the appropriate next step.' $d.slug)

</main>

$(Footer '../')
"@
  [System.IO.File]::WriteAllText("$site\services\$($d.slug).html", $page, $utf8)
}
"Built index.html and $($depts.Count) service pages."

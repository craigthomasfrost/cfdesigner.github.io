---
layout: work
title: Coach
---
### Note from the author

This product is the ongoing line of enquiry being followed as a result of research carried out at the University of Worcester, UK. This is a live document, and as such, is liable to amendments, extensions, and complete rewrites. This is done in an effort to [design transparently](/2014/10/24/designing-in-the-open/), though whether this is ultimately a successful approach will only be revealed over time. 

### introduction

The purpose of *Coach* is to re-imagine how students—referred to throughout as 'the researcher'—might access academic materials in the future. There is an increasing societal and pedagogical responsibility to provide better, easier access to such materials in order to motivate the researcher to partake in academic reading to further their study and practice.

To accomplish this goal, it would first be necessary to understand the researcher and their varied needs. In an attempt to remove barriers of access and elitism, this would involve a design of the information tendered toward academics and practitioners alike.

Discussed throughout will be tools and technology used to accomplish many of these goals, and where necessary, will detail the journey of learning tools not already known to the designer. Tools being used so far are: *Sketch, Brackets, Emmet, SCSS, Javascript, Framer JS, Jekyll, Github.*

### process

First and foremost, the design of the product should focus primarily not on form, but function. As a product such as *Coach* exists almost entirely to serve documents intended to educate and inform, visual distractions will not be present. Instead, the visual design will focus on typography, image layout, and graphic devices used to separate content. Layout may be likened to that of both news and novel, in that content shall exist in narrow columns, yet have margins sufficient to arrest the researcher. 

To ensure the design can adapt to—likely—new discoveries in the behaviour of the researcher, the product will be designed in modules that can easily and quickly be added, swapped, and removed as necessary. To prototype this as efficiently as possible, *Jekyll*—a static site generator—will be employed, where *Shopifys Liquid Templating Engine* can be used to inject the necessary modules.

Working in this way would help to design not pages, but flows. No page within *Coach* exists in solitude, but rather as another rung on the ladder toward a broad knowledge of many subjects in order to reach better solutions to bigger problems. 

For example, we know that the header will be required across every page, so it can exist as a single module, whilst also containing links that provide dynamic interactivity across different pages. 

{% include image.html url="/assets/images/header-module.png" description="Header module" class="img-border" %}

Let us deconstruct this, as a quick exercise:

The logo, as expected, would take the researcher to the *Coach* home page; the letterforms surrounded by plus and minus symbols adjusts the font size for readability; the 'lips' icon speaks the article aloud, so the visually impaired researcher is not limited, and so that the researcher can take notes whilst listening, rather than reading; and the circles filled with white and black respectively, change the background colour and text colour of the site, should the researcher prefer–this is particularly useful when reading in poor lighting conditions. 

{%include image.html url="/assets/images/search-module.png" description="Search module" class="img-border" %}

The icon we will focus on is the 'search' icon. When this is clicked, rather than have a field open in the header, the page will instead scroll down to the search module. This would be achieved via HTML anchors and Javascript, so no matter where this module appears on the page, the correct position is reached. This decision was made in order to ensure the researcher was presented with a single, familiar search experience, and would be presented with the search tips.

{% include aside.html class="two-column" text="At this point, it feels as though we're getting a little ahead of ourselves. Whilst the considerations stated thus far may be useful, their usefulness is determined at a much later stage. Going forward, we shall discuss more conceptual goals; looser thoughts and ideas, in the hope that extra ordinary things appear organically, through process and synthesis. We will, however, revisit some of the above later on. This is to be stated on the record because, as aforementioned, this document is live." %}

We can expand on the notion of modular design by extending it to animated and interactive elements. An articles introduction, for example, could always fill one-hundred percent of the screen height, with title, author(s), date, and abstract featured, in order to allow the researcher to properly assess whether time should be spent reading it, rather than another, potentially more relevant piece. Motion is also becoming a staple in engaging design for the web, and so on this section, titles and extra information could be faded in using CSS keyframes and transforms, rather than objects appearing bluntly. All of this creates an ambience for the researcher, something incredibly important when reading, particularly long-form.

***

Something that begins to play more of a role as the product grows is flow and interaction: it must be easy to interact with all elements of the product, and it must be obvious what the outcome of those interactions will be. The user should not be forced to go back on themselves, but rather transition seamlessly from one section to another, no matter where they may be at any given time.

From the very first page, it should be clear what is expected from the researcher, and the tools to complete those expectations should be present. For example:

If we aim to cater to those with a particular query, a search box should be immediately available, so that results can be gathered, and articles accessed, as quickly as possible. For the lesser directed, but equally curious, it may make sense to have suggested searches below the text field, or perhaps popular searches, though user generated content may not provide the most valuable results.

Moving on, it's important to ensure all available categories are listed, should the researcher not feel comfortable with searching for terms directly at this point. Categories, listed alphabetically, ensure the researcher is aware of all available options, and could prompt a discovery of content that may not have happened when searching directly. 

In the event that the researcher does not have a particular query nor the motivation to navigate papers within a category, the next section will display 'wildcards': a visual representation, and link to, a random paper from a chosen category. This allows the researcher to dictate from which field they will read, whilst negating the requirement, at this point, to select a particular paper. This enables the researcher to start reading and exploring, from which point further exploration is less intimidating. 

The aforementioned, though, focuses on the flow *within* a page, but not *from* page to page, which is the greater challenge. This would require pre-anticipating how the researcher may progress through the product, and must ensure engagement and direction at every stage. 










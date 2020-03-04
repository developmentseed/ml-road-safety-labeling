---
title: Overview
date: 2012-08-20
layout: post.html
permalink: /
---

## Road safety classes labeling

The labeling consists in drawing a bounding box around each road safety feature that can be recognized in the street view images. Some classes are directly labeled specifying the class, and others will require more context, such as specifying the class and type.

It is not need to label all the images in the sequence, because most of them are same or very similar, so, label the images every certain interval.

### Painted lines labeling

- Draw a box around the road (the box should cover only the main road) and classify it as `painted_lines` with one of the following options:
    - none
    - both
    - center line
    - edge line


##### Especial cases

**1. Road intersections**

In the road intersections, we need to evaluate the condition of the roads to decide the way of the labeling:

- If the roads is in the same condition, we label all roads in one bbox. 

- If the roads have different characteristics, for example; one is paved and another is not, we label them as separate roads.

<div class="gallery">
    <figure >
        <img src="/assets/graphics/images/case1_1.png">
        <figcaption> Example 1: Roads in the same conditions</figcaption>
    </figure>
</div>

**2. Painted lanes**

In urban roads there are painted lines to indicate the lanes, consider these case as `painted_lines` and clasify it into `both` type. 

**3. Clicleway at the edge of the main road**

Draw the bounding box around the main road, which in most of the paved roads is delimited by the painted edge line.


### Restricted median and potholes labeling

Draw a box around each of these features and classify it as such.
---
title: Overview
date: 2012-08-20
layout: post.html
---

## Road safety classes labeling

The labeling consists in drawing a bounding box around each road safety feature that can be recognized in the street view images. Some classes are directly labeled specifying the class, and others will require more context, such as specifying the class and type.

It is not necessary to label all the images in the sequence, because most of them are the same or very similar. Instead, you can label the images at a certain interval.

### General guidance

#### 1. Road intersections

In the road intersections, we need to evaluate the condition of the roads to decide the way of the labeling:

- If the roads is in the same condition, we label all roads in one bbox. 

<div class="gallery">
    <figure >
        <img src="/ml-road-safety-labeling/assets/graphics/images/case1_1.jpg">
        <figcaption> Example 1: Paved roads in the same conditions</figcaption>
    </figure>
    <figure >
        <img src="/ml-road-safety-labeling/assets/graphics/images/case1_2.jpg">
        <figcaption> Example 2: Unpaved roads in the same conditions</figcaption>
    </figure>
</div>

- If the roads have different characteristics, for example one is paved and another is not, we label them as separate roads.

<div class="gallery">
    <figure >
        <img src="/ml-road-safety-labeling/assets/graphics/images/case1_3.jpg">
        <figcaption> Example 3: Roads in different conditions</figcaption>
    </figure>
</div>

#### 2. Cycleway at the edge of the main road

Draw the bounding box around the main road, which in most of the paved roads is delimited by the painted edge line.

<div class="gallery">
    <figure >
        <img src="/ml-road-safety-labeling/assets/graphics/images/case3_1.jpg">
        <figcaption> Example 1</figcaption>
    </figure>
    <figure >
        <img src="/ml-road-safety-labeling/assets/graphics/images/case3_2.jpg">
        <figcaption> Example 2</figcaption>
    </figure>
</div>

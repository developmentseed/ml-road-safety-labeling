---
title: Introduction
date: 2012-08-20
layout: post.html
permalink: 
---

The guide describes how to label road safety classes in street view images. This labeling is in support to the Road Safety program to use computer vision to detect road features for road safety audits and assesments.

## Labeling tools

### Computer Vision Annotation Tool (CVAT)

We're using the CVAT labeling platform to perform the annotations. The [CVAT](https://github.com/opencv/cvat) tools have extensively documented the annotation process. See their tool's [readme guide](https://github.com/opencv/cvat/blob/develop/README.md) or their [youtube video](https://www.youtube.com/watch?v=L9_IvUIHGwM&feature=youtu.be).

**CVAT Tips**

- Each task should only have one annotator working on it at a time. If 2 or more annotators are working on the same task, there might be problems with labels getting overwritten.

- In the CVAT tool you can use shortcuts, for instance:
    - "N" --> create a shape
    - "F" --> move to the next image
    - "D" --> move to the previous image or
    - "CTRL + S" --> save the work 

Also, you can find the full shortcuts in this [web page.](https://github.com/opencv/cvat/blob/develop/cvat/apps/documentation/user_guide.md#shortcuts) 


### Mapillary

[Mapillary](https://www.mapillary.com/app/) is the street-level imagery platform that we are using to obtain the street view images. 

**Mapillary Api**

To search and obtain all the Mapillary images from the priority road segments, it is need the [Mapillary sequence key](https://help.mapillary.com/hc/en-us/articles/115001724989-Sequence-key) and the [image keys](https://help.mapillary.com/hc/en-us/articles/115001724549-Image-key).

DevelopmentSeed data team developed some scripts to pass the sequence keys and get the images keys in the sequences to can download them using the [Mapillary API](https://www.mapillary.com/developer/api-documentation/#retrieve-an-image-feature).
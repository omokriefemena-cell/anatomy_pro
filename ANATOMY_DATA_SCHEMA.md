# Anatomy Pro Data Schema (Version 1.0)

## Purpose

This document defines the official data structure used throughout Anatomy Pro. Every anatomical structure in the application must follow this schema.

---

# Identity

| Field      | Type   | Required |
| ---------- | ------ | -------- |
| id         | String | Yes      |
| name       | String | Yes      |
| latinName  | String | Yes      |
| category   | String | Yes      |
| type       | String | Yes      |
| region     | String | Yes      |
| bodySystem | String | Yes      |
| side       | String | Yes      |

---

# Images

| Field         | Type         |
| ------------- | ------------ |
| image         | String       |
| illustrations | List<String> |
| model3D       | String       |

---

# Description

| Field          | Type   |
| -------------- | ------ |
| overview       | String |
| function       | String |
| surfaceAnatomy | String |
| development    | String |
| ossification   | String |

---

# Blood & Nerve Supply

| Field             | Type   |
| ----------------- | ------ |
| bloodSupply       | String |
| nerveSupply       | String |
| lymphaticDrainage | String |

---

# Anatomy

| Field         | Type |
| ------------- | ---- |
| features      | List |
| attachments   | List |
| articulations | List |
| relations     | List |

---

# Related Structures

| Field            | Type         |
| ---------------- | ------------ |
| relatedBones     | List<String> |
| relatedMuscles   | List<String> |
| relatedNerves    | List<String> |
| relatedArteries  | List<String> |
| relatedVeins     | List<String> |
| relatedLigaments | List<String> |
| relatedJoints    | List<String> |
| relatedOrgans    | List<String> |

---

# Clinical

| Field              | Type         |
| ------------------ | ------------ |
| clinicalConditions | List         |
| clinicalCases      | List         |
| examPearls         | List<String> |
| mnemonics          | List<String> |

---

# Learning

| Field      | Type         |
| ---------- | ------------ |
| quiz       | List         |
| references | List<String> |

---

# ID Standard

Upper Limb Bone

ULB001

ULB002

ULB003

Lower Limb Bone

LLB001

LLB002

Muscles

MUS001

Nerves

NER001

Arteries

ART001

Veins

VEI001

Ligaments

LIG001

Joints

JNT001

Organs

ORG001

Histology

HIS001

Embryology

EMB001

Radiology

RAD001

Clinical Cases

CLC001

---

Every new anatomy item added to Anatomy Pro must follow this specification.

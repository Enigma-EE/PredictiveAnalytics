


- Initial centroids:
  - Centroid of Cluster 1: P1 (3, 7)
  - Centroid of Cluster 2: P5 (7, 4)

**First Iteration**

Euclidean distance formula \(d = \sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}\)

- Distances from P1 (3, 7):
  P2: \( \sqrt{(8-3)^2 + (3-7)^2} = 5.83 \)
  P3: \( \sqrt{(9-3)^2 + (4-7)^2} = 6.08 \)
  P4: \( \sqrt{(5-3)^2 + (10-7)^2} = 3.61 \)
  P5: \( \sqrt{(7-3)^2 + (4-7)^2} = 4.24 \)
- Distances from P5 (7, 4):
  P2: \( \sqrt{(8-7)^2 + (3-4)^2} = 1.41 \)
  P3: \( \sqrt{(9-7)^2 + (4-4)^2} = 2.00 \)
  P4: \( \sqrt{(5-7)^2 + (10-4)^2} = 6.32 \)
  P1: \( \sqrt{(3-7)^2 + (7-4)^2} = 4.24 \)

**Assignment to Clusters**
Cluster 1: P1, P4 (Points closer to P1)
Cluster 2: P2, P3, P5 (Points closer to P5)

**Centroid Calculation**
New centroid of Cluster 1:
  \( \left(\frac{3+5}{2}, \frac{7+10}{2}\right) = (4, 8.5) \)
New centroid of Cluster 2:
  \( \left(\frac{7+8+9}{3}, \frac{4+3+4}{3}\right) = (8, 3.67) \)

**Second Iteration**

- Distances from new centroid of Cluster 1 (4, 8.5):
  - P2: \( \sqrt{(8-4)^2 + (3-8.5)^2} = 6.04 \)
  - P3: \( \sqrt{(9-4)^2 + (4-8.5)^2} = 6.08 \)
  - P4: \( \sqrt{(5-4)^2 + (10-8.5)^2} = 1.58 \)
  - P5: \( \sqrt{(7-4)^2 + (4-8.5)^2} = 4.72 \)
- Distances from new centroid of Cluster 2 (8, 3.67):
  - P2: \( \sqrt{(8-8)^2 + (3-3.67)^2} = 0.67 \)
  - P3: \( \sqrt{(9-8)^2 + (4-3.67)^2} = 1.08 \)
  - P4: \( \sqrt{(5-8)^2 + (10-3.67)^2} = 7.36 \)
  - P1: \( \sqrt{(3-8)^2 + (7-3.67)^2} = 6.32 \)

**Assignment to Clusters**
- Cluster 1: P1, P4 (Points closer to the new centroid of Cluster 1)
- Cluster 2: P2, P3, P5 (Points closer to the new centroid of Cluster 2)

**Centroid Calculation**
Upon re-calculation, the centroids remain unchanged. Therefore, the algorithm terminates.

The final clusters are:
- Cluster 1 with centroid at (4, 8.5): {P1, P4}
- Cluster 2 with centroid at (8, 3.67): {P2, P3, P5}

Since no point changes its cluster assignment in this iteration, the K-means algorithm terminates.


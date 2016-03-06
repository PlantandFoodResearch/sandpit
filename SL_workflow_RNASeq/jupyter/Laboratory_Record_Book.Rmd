
# This is the laboratory record book for Sarah Pilkington and Lara Brian. 
### *This record covers the experiment "Kiwifruit_flower_analysis", work funded by Plant & Food Research 2016.*

The experiment was conducted in the kiwifruit flowering season from October to November 2015. One flower sample was collected from three kiwifruit vines. The aim of the experiment was to perform an RNA-seq analysis on the flower samples to determine whether there were differentially expressed genes between flower samples taken from different vines.

## Experiment 1.1

RNA was extracted using the Sigma Kit http://www.sigmaaldrich.com/life-science/molecular-biology/plant-biotechnology/plant-molecular-biology/product-highlights/spectrum-plant-total-rna-kit.html using the standard protocol provided with the kit.

Sample list is as follows:


```python
import pandas
```


```python
sample_numbers = [1, 2, 3]
sample_description = ['Kiwifruit_flower_1', 'Kiwifruit_flower_2', 'Kiwifruit_flower_3']
sample_date = [2015, 2015, 2015]
```


```python
SampleDataSet = list (zip(sample_numbers,sample_description,sample_date))
SampleDataSet
```




    [(1, 'Kiwifruit_flower_1', 2015),
     (2, 'Kiwifruit_flower_2', 2015),
     (3, 'Kiwifruit_flower_3', 2015)]




```python
df = pandas.DataFrame(data = SampleDataSet, columns=['sample_numbers', 'sample_description', 'sample_date'])
df
```




<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>sample_numbers</th>
      <th>sample_description</th>
      <th>sample_date</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>Kiwifruit_flower_1</td>
      <td>2015</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>Kiwifruit_flower_2</td>
      <td>2015</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>Kiwifruit_flower_3</td>
      <td>2015</td>
    </tr>
  </tbody>
</table>
</div>




```python
df.to_csv('kiwifruit_flower_samples_2015.csv',index=False,header=False)
```

Samples were run on a 1% gel in the same order as the table. Lane 1 is the 1kb+ ladder.


```python
from IPython.display import Image
Image(filename='RNA_gel.jpg')
```




![jpeg](output_11_0.jpeg)



Samples were sent to Macrogen for library preparation and sequencing Contract 1234.


```python

```

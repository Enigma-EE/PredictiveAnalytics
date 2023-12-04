Assignment 1 – Data Exploration and Feature Extraction 

Huining Huang huahy057@mymail.UniSA.edu.au

Lingjun Ji Jiyly006@mymail.unisa.edu.au


### Part 1: Introduction

#### Objective
1. **Definition of Healthcare Fraud**
   - Brief definition and its impact on the healthcare industry 
   - Mention the stakeholders: patients, healthcare providers, and insurance companies
2. **Significance of Fraud Detection** 
   - Financial implications 
   - Effect on healthcare services and stakeholders 
3. **Role of Data Mining in Fraud Detection** 
   - Mention the potential of data mining in identifying fraudulent patterns 
   - Discuss how data mining can assist in reducing financial losses and enhancing healthcare services ###

As an integral part of the national healthcare system, healthcare insurance plays a vital role in ensuring citizens' access to quality healthcare services and promoting national well-being. However, it also faces threats such as healthcare insurance fraud. Healthcare insurance fraud is a significant issue in the healthcare sector and involves deceptive, abusive, and improper activities occurring among medical service providers, patients, and insurance companies. Insurance companies are frequently on the receiving end of these bad practices, which in turn has caused them to hike the prices of their insurance premiums, making healthcare costs surge periodically.[1] It is pretty evident that patients and their healthcare information can easily be exploited which later can hamper the overall cost.[1] Healthcare fraud not only threatens the stability of the healthcare system and undermines its sustainability but also erodes patients' trust in the healthcare insurance system, especially when unnecessary drug treatments result in unwarranted expenses and potential health risks. Additionally, it exposes insurance companies to financial risks. Unethical healthcare providers who benefit from medical insurance fraud also tarnish the reputation and credibility of all healthcare service providers. 

In order to detect and avoid the fraud, data mining techniques are applied.[2] Data mining can help identify potential fraud patterns and abnormal behaviors by analyzing extensive medical data features. It assists the healthcare system in recognizing unnecessary medical procedures, ensuring that patients receive the care they genuinely need. Simultaneously, predictive models based on historical data can be established to identify potential fraudulent providers, and promptly detect and prevent medical insurance fraud. This allows insurance companies to reduce unnecessary payouts, lower costs, and consequently lower insurance premiums.


In this paper, we will review relevant academic papers on current technologies and algorithms in the healthcare field to assist in better formulating our methodological strategies and feature extraction plans for this analysis. Subsequently, data mining techniques will also be applied to analyze a rich and comprehensive dataset for medical fraud detection. This dataset is derived from medical insurance claims and includes provider information, billing details, patient information, procedure information, and fraud labels. By delving into the information within the dataset, creating relevant features, and establishing a model capable of predicting medical fraud providers will be undertaken.


**References**: 
[1] A. Bhardwaj, S. Kumar and A. Naidu, "Predictive analysis and supervised detection for fraudulent cases in healthcare," 2022 12th International Conference on Cloud Computing, Data Science & Engineering (Confluence), Noida, India, 2022, pp. 416-421, doi: 10.1109/Confluence52989.2022.9734195.

[2] V. Rawte and G. Anuradha, "Fraud detection in health insurance using data mining techniques," 2015 International Conference on Communication, Information & Computing Technology (ICCICT), Mumbai, India, 2015, pp. 1-5, doi: 10.1109/ICCICT.2015.7045689.



### Part 2: Related Work

#### Academic Paper Review (8 Marks)
1. **Paper 1 Review** 
   - Point: Establish a key finding or methodology from the paper 
   - Evidence: Extract and present data or statements that support the point 
   - Relevance: Explain the significance of the findings in relation to your project 
2. **Paper 2 Review** 
   - Same structure as above
3. **Paper 3 Review**
   - Same structure as above ###

This section will review three academic papers that analyze and address healthcare fraud prediction from different perspectives, providing valuable insights for the current task.

First, the paper titled "Healthcare Provider Summary Data for Fraud Classification"[3] by J. M. Johnson emphasizes the critical role of feature engineering and dataset construction in healthcare fraud detection. The author leverages the latest publicly available data from CMS and introduces two new labeled Medicare Part B datasets for supervised learning. Their research demonstrates that, through careful selection and construction of the SbP feature set, significant improvements can be achieved in the performance of practical healthcare fraud detection models. This is of paramount importance to our project as we need to carefully consider how to design and select the most informative features to enhance the accuracy of our model.

Furthermore, the paper titled "A Comparative Analysis of Fraud Detection in Healthcare using Data Balancing & Machine Learning Technique"[4] emphasizes the use of data balancing and machine learning techniques to enhance healthcare fraud detection. The experimental results from authors Nikita Agrawal et al. indicate that machine learning models oversampling the imbalanced dataset using two data balancing techniques, namely Class Weighing Scheme (CWS) and Adaptive Synthetic Oversampling (ADASYN), outperform the imbalanced dataset. This finding prompts us to consider adopting data balancing techniques in healthcare fraud detection to improve model performance metrics.

Lastly, in the paper titled "Predicting health insurance claim frauds using supervised machine learning technique"[5] authors Veena K et al. propose a method for healthcare fraud detection using the decision tree classifier algorithm. They compare the accuracy of four algorithms—logistic regression, random forest, decision tree classifier, and naive Bayes—in fraud detection. Their experimental results show that the decision tree classifier exhibits outstanding accuracy, reaching 97.03% in fraud detection. This finding provides a strong starting point for us to consider whether we should incorporate the decision tree classifier into our model to enhance the accuracy of our predictive model.

Through in-depth examination of these papers, we have gained insights into the pivotal roles played by feature engineering, data balancing and decision tree classifiers techniques in healthcare fraud prediction. These insights will guide us in formulating sound data preprocessing, feature extraction plans and methodological strategies for our project, ensuring that we leverage the experiences and successes of these previous works to address the challenges of healthcare fraud prediction more effectively.


**References**: Integrate citations from the papers within each paragraph.

[3] J. M. Johnson and T. M. Khoshgoftaar, "Healthcare Provider Summary Data for Fraud Classification" 2022 IEEE 23rd International Conference on Information Reuse and Integration for Data Science (IRI), San Diego, CA, USA, 2022, pp. 236-242, doi: 10.1109/IRI54793.2022.00060.

[4] N. Agrawal and S. Panigrahi, "A Comparative Analysis of Fraud Detection in Healthcare using Data Balancing & Machine Learning Techniques" 2023 International Conference on Communication, Circuits, and Systems (IC3S), BHUBANESWAR, India, 2023, pp. 1-4, doi: 10.1109/IC3S57698.2023.10169634.

[5] V. K et al., "Predicting health insurance claim frauds using supervised machine learning technique" 2023 Eighth International Conference on Science Technology Engineering and Mathematics (ICONSTEM), Chennai, India, 2023, pp. 1-7, doi: 10.1109/ICONSTEM56934.2023.10142604.


### Part 3: Data Exploration and Feature Engineering

#### Dataset Analysis and Feature Creation (12 Marks)
1. **Data Exploration** 
   - **Statistical Analysis** 
       - Descriptive statistics (mean, median, range, standard deviations) of various features 
       - Identification of potential patterns, trends or anomalies 
   - **Visualization** 
       - Histograms, scatter plots, or box plots to visualize data distributions 
       - In-depth analysis of the observed trends from the visualizations 
2. **Feature Engineering** 
   - **Correlation Analysis** 
       - Analysis of feature correlations to identify potential feature reduction opportunities 
   - **Feature Extraction** 
       - Detailed strategy for feature creation and extraction 
       - Explanation of the relevance of the selected features to the model 
   - **CSV File Assembly** 
       - Compile a CSV file with chosen features and target variable

**References**: Include authoritative sources that support your methodologies or techniques used in this section.

### Review and Refinement
1. **Initial Review**
   - Scrutinize for errors or omissions and correct or supplement them based on further research 
2. **Refinement**
   - Refine the content to match your preferred language style focusing on clarity, conciseness, and technical focus

### Final Submission
- Ensure that the report is polished and adheres to the preferred language style and marking criteria.
- Submit along with the CSV file.

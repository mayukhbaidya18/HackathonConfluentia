import Foundation

struct SpecialistData {
    // Cardiologist Topics and FAQs
    static let cardiologistTopics = [
        Topic(name: "Coronary Artery Disease", iconName: "heart.fill", content: TopicContent(
            overview: "Coronary Artery Disease is a condition in which the coronary arteries become narrowed or blocked due to plaque buildup. This reduces blood flow to the heart muscle and increases the risk of chest pain and heart attacks.",
            causesIntro: "Coronary Artery Disease develops when fatty deposits called plaque accumulate in the coronary arteries, restricting blood flow to the heart muscle. Over time, this narrowing can lead to chest pain and heart attacks.",
            causes: [
                "Atherosclerosis: Fatty deposits build up inside artery walls, narrowing blood flow to the heart.",
                "High cholesterol: Elevated LDL cholesterol accelerates plaque formation in coronary arteries.",
                "High blood pressure: Constant pressure damages artery lining, promoting plaque accumulation.",
                "Smoking: Tobacco toxins injure blood vessels and reduce oxygen delivery to the heart.",
                "Diabetes: High blood sugar damages arteries and speeds up atherosclerosis.",
                "Obesity: Excess body fat worsens cholesterol levels and increases cardiac workload.",
                "Sedentary lifestyle: Lack of exercise weakens circulation and promotes plaque formation.",
                "Family history: Genetic predisposition increases the risk of early-onset CAD."
            ],
            symptomsIntro: "Symptoms of Coronary Artery Disease may not be noticeable in early stages. As narrowing worsens, reduced blood flow to the heart muscle becomes more apparent during physical activity.",
            symptoms: [
                "Chest pain (angina): Tightness or pressure in the chest during exertion or stress.",
                "Shortness of breath: Occurs when the heart cannot pump enough oxygen-rich blood.",
                "Fatigue: Reduced blood supply causes early tiredness during routine activities.",
                "Palpitations: Irregular or rapid heartbeats due to reduced oxygen to heart tissue.",
                "Silent symptoms: Some people, especially diabetics, may have minimal or no warning signs."
            ],
            diagnosis: "Diagnosis focuses on assessing blood flow to the heart and identifying narrowed arteries. Multiple tests help confirm severity and guide treatment planning including electrocardiogram (ECG) to detect changes suggesting reduced blood supply to the heart, stress testing to evaluate heart function during physical exertion or medication-induced stress, and coronary angiography to visualize artery blockages using contrast dye and imaging.",
            complicationsIntro: "If untreated, Coronary Artery Disease can lead to serious complications that affect heart function and overall health. Advanced disease may require emergency intervention.",
            complications: [
                "Heart attack: Complete blockage of a coronary artery leads to heart muscle death.",
                "Heart failure: Chronic reduced blood supply weakens the heart's pumping capacity.",
                "Arrhythmias: Oxygen deprivation disrupts normal electrical activity of the heart.",
                "Sudden cardiac arrest: Severe rhythm disturbances can cause sudden collapse.",
                "Reduced quality of life: Persistent symptoms limit physical activity and daily functioning."
            ]
        )),
        Topic(name: "Hypertension", iconName: "waveform.path", content: TopicContent(
            overview: "Hypertension is a chronic condition in which blood pressure in the arteries remains persistently elevated, forcing the heart to work harder. Over time, this excess pressure damages blood vessels and vital organs. Most people with hypertension don't experience symptoms until organ damage occurs.",
            causesIntro: "Hypertension develops when the force of blood against artery walls is consistently too high. Multiple factors can contribute to this increased pressure, including lifestyle choices and underlying health conditions.",
            causes: [
                "Excessive salt intake: High sodium causes water retention, increasing blood volume and pressure.",
                "Obesity or overweight: Excess body fat increases heart workload and narrows blood vessels.",
                "Physical inactivity: Lack of exercise weakens heart and promotes poor circulation.",
                "Chronic stress: Long-term stress triggers hormonal responses that raise BP consistently.",
                "Smoking or tobacco use: Nicotine damages vessel walls and causes repeated BP spikes.",
                "Excess alcohol consumption: Disrupts BP regulation and weakens heart muscles.",
                "Family history: Genetic factors increase susceptibility to developing hypertension.",
                "Underlying conditions: Kidney disease, diabetes, and hormonal disorders raise BP."
            ],
            symptomsIntro: "Most people with hypertension may not experience noticeable symptoms, even when blood pressure readings are dangerously high. Some individuals may experience symptoms only when blood pressure reaches critical levels.",
            symptoms: [
                "Headaches: Often at back of head, especially in mornings due to elevated pressure.",
                "Dizziness: Reduced blood flow regulation causes light-headedness or imbalance.",
                "Shortness of breath: Heart struggles to pump efficiently against high pressure.",
                "Chest discomfort: Increased cardiac strain causes tightness or pressure-like sensations.",
                "Blurred vision: High BP damages tiny blood vessels in the eyes."
            ],
            diagnosis: "Hypertension is diagnosed through consistent blood pressure monitoring rather than a single reading. This includes repeated BP measurements on different days to confirm persistent elevation, ambulatory or home monitoring to track BP patterns over 24 hours, and blood and urine tests to detect kidney damage, diabetes, or hormonal causes linked to hypertension.",
            complicationsIntro: "Uncontrolled hypertension over time can damage blood vessels and organs throughout the body. Persistent high blood pressure significantly increases the risk of life-threatening conditions.",
            complications: [
                "Heart attack: Narrowed or blocked arteries reduce blood supply to heart muscle.",
                "Stroke: High pressure can rupture or block brain vessels causing neurological damage.",
                "Heart failure: Heart thickens and weakens due to prolonged overwork.",
                "Kidney damage: Persistent high BP damages kidney filters, leading to CKD.",
                "Vision loss: Damage to retinal blood vessels can cause permanent impairment."
            ]
        )),
        Topic(name: "Heart Failure", iconName: "drop.fill", content: TopicContent(
            overview: "Heart failure is a chronic condition in which the heart is unable to pump enough blood to meet the body's needs. It does not mean the heart has stopped, but that it is working inefficiently.",
            causesIntro: "Heart failure occurs when the heart muscle becomes too weak or stiff to pump blood effectively. This can result from conditions that overwork or damage the heart muscle.",
            causes: [
                "Coronary artery disease: Reduced blood supply weakens heart muscle and impairs pumping function.",
                "Previous heart attack: Damaged heart tissue reduces overall heart strength and efficiency.",
                "High blood pressure: Persistent pressure forces the heart to work harder, leading to muscle thickening.",
                "Heart valve disease: Faulty valves disrupt normal blood flow and strain the heart.",
                "Cardiomyopathy: Diseases of the heart muscle directly weaken pumping ability.",
                "Diabetes: High blood sugar damages blood vessels and heart tissue.",
                "Arrhythmias: Irregular heart rhythms reduce effective blood pumping.",
                "Lifestyle factors: Smoking, obesity, poor diet, and inactivity increase heart failure risk."
            ],
            symptomsIntro: "Heart failure symptoms can develop gradually or appear suddenly. The severity of symptoms often correlates with how weak the heart has become.",
            symptoms: [
                "Shortness of breath: Occurs during activity, at rest, or while lying flat due to fluid in lungs.",
                "Fatigue and weakness: Reduced blood flow limits energy supply to muscles.",
                "Swelling (edema): Fluid buildup causes swelling in legs, ankles, feet, or abdomen.",
                "Rapid or irregular heartbeat: The heart compensates by beating faster or irregularly.",
                "Persistent cough: Fluid accumulation in lungs causes coughing or wheezing."
            ],
            diagnosis: "Diagnosis involves evaluating heart function, symptoms, and underlying causes. Multiple tests help assess severity and guide treatment. Echocardiogram assesses heart structure, pumping ability, and ejection fraction. Blood tests detect heart strain markers and assess kidney and electrolyte status. Chest imaging like X-rays or CT scans reveal heart size and fluid buildup.",
            complicationsIntro: "Heart failure is a progressive condition that can lead to serious complications if not properly managed. Advanced heart failure may require surgical intervention or heart transplantation.",
            complications: [
                "Worsening heart failure: Progressive weakening of heart function over time.",
                "Kidney damage: Reduced blood flow impairs kidney function.",
                "Arrhythmias: Electrical instability increases risk of dangerous rhythms.",
                "Liver damage: Fluid congestion affects liver function.",
                "Sudden cardiac death: Severe rhythm disturbances may cause sudden heart stoppage."
            ]
        )),
        Topic(name: "Arrhythmias", iconName: "heart.slash", content: TopicContent(
            overview: "Arrhythmias are disorders in which the heart beats too fast, too slow, or irregularly due to abnormal electrical activity. These rhythm disturbances can affect how efficiently the heart pumps blood.",
            causesIntro: "Arrhythmias develop when the electrical signals that coordinate heartbeats are disrupted. Various heart conditions and external factors can interfere with the heart's normal electrical system.",
            causes: [
                "Coronary artery disease: Reduced blood flow damages heart tissue and disrupts electrical pathways.",
                "Heart attack history: Scar tissue from prior damage interferes with normal rhythm conduction.",
                "Electrolyte imbalance: Abnormal potassium, calcium, or magnesium levels affect electrical signaling.",
                "High blood pressure: Chronic pressure causes heart muscle thickening and electrical instability.",
                "Heart valve disease: Structural abnormalities alter normal electrical conduction patterns.",
                "Excess caffeine or alcohol: Stimulants can trigger abnormal heart rhythms.",
                "Certain medications: Some drugs affect heart rate and rhythm as side effects.",
                "Stress and anxiety: Increased adrenaline can provoke irregular heartbeats."
            ],
            symptomsIntro: "Arrhythmia symptoms can range from barely noticeable to severe. Some people may not experience any symptoms, while others may feel like their heart is racing or skipping beats.",
            symptoms: [
                "Palpitations: Sensation of fluttering, racing, or skipped heartbeats.",
                "Dizziness or light-headedness: Reduced blood flow to the brain causes imbalance.",
                "Shortness of breath: Inefficient heart pumping affects oxygen delivery.",
                "Chest discomfort: Irregular rhythms increase heart strain and oxygen demand.",
                "Fainting or near-fainting: Severe rhythm disturbances can reduce blood supply suddenly."
            ],
            diagnosis: "Diagnosis focuses on identifying abnormal electrical patterns and their underlying cause. Continuous monitoring may be needed if symptoms are intermittent. Electrocardiogram (ECG) records heart's electrical activity and identifies rhythm abnormalities. Holter or event monitoring tracks heart rhythm over 24 hours or longer periods. Electrophysiological studies use invasive testing to map abnormal electrical pathways.",
            complicationsIntro: "Certain arrhythmias can be life-threatening if not properly treated. The risk depends on the type of arrhythmia and underlying heart conditions.",
            complications: [
                "Stroke: Irregular rhythm can cause blood clots to form and travel to the brain.",
                "Heart failure: Persistent rhythm problems weaken the heart over time.",
                "Sudden cardiac arrest: Dangerous arrhythmias can abruptly stop heart function.",
                "Frequent fainting: Reduced cerebral blood flow increases injury risk.",
                "Reduced quality of life: Ongoing symptoms limit daily activities and physical exertion."
            ]
        )),
        Topic(name: "Heart Attack", iconName: "heart.circle.fill", content: TopicContent(
            overview: "A heart attack occurs when blood flow to a part of the heart muscle is suddenly blocked, usually due to a clot in a coronary artery. This interruption deprives the heart muscle of oxygen, leading to tissue damage or death.",
            causesIntro: "A heart attack usually occurs when blood flow to the heart is suddenly blocked by a blood clot. This blockage typically develops in arteries narrowed by plaque buildup over many years.",
            causes: [
                "Coronary artery disease: Fatty plaque buildup narrows arteries, restricting blood flow to the heart.",
                "Blood clots: A ruptured plaque can form a clot that completely blocks an artery.",
                "High blood pressure: Constant pressure damages artery walls, making them prone to plaque formation.",
                "High cholesterol: Excess LDL cholesterol contributes to plaque buildup inside blood vessels.",
                "Smoking: Tobacco damages arteries and increases clot formation and oxygen demand.",
                "Diabetes: High blood sugar damages blood vessels and accelerates atherosclerosis.",
                "Obesity: Excess body weight increases strain on the heart and worsens metabolic risk factors.",
                "Sedentary lifestyle: Lack of physical activity promotes poor circulation and plaque buildup."
            ],
            symptomsIntro: "Heart attack symptoms can vary from person to person. Some people experience mild symptoms, while others have severe symptoms. The onset may be sudden or develop gradually over hours, days, or even weeks.",
            symptoms: [
                "Chest pain or pressure: Often described as heaviness or squeezing in the center or left side of the chest.",
                "Pain radiating to arm or jaw: Discomfort may spread to the left arm, shoulder, neck, or jaw.",
                "Shortness of breath: Reduced oxygen supply impairs normal breathing.",
                "Cold sweating: Sudden sweating occurs due to stress response and reduced blood flow.",
                "Nausea or dizziness: Common due to reduced cardiac output and nervous system response."
            ],
            diagnosis: "Rapid diagnosis is essential to restore blood flow and minimize heart damage. Doctors use a combination of clinical evaluation and diagnostic tests including electrocardiogram (ECG) to detect electrical changes indicating heart muscle injury, blood tests for cardiac enzymes like troponin that rise when heart muscle damage occurs, and imaging tests like echocardiography or coronary angiography to assess heart function and blockages.",
            complicationsIntro: "A heart attack is a life-threatening event that can cause serious complications. Prompt treatment is critical to minimize heart damage and improve survival chances.",
            complications: [
                "Heart failure: Damaged heart muscle reduces the heart's pumping ability.",
                "Arrhythmias: Electrical disturbances can cause dangerous irregular heartbeats.",
                "Cardiogenic shock: Severe heart damage leads to critically low blood pressure and organ failure.",
                "Recurrent heart attack: Ongoing artery disease increases the risk of future events.",
                "Sudden cardiac death: Severe rhythm disturbances may cause abrupt heart stoppage."
            ]
        ))
    ]

    static let cardiologistFAQs = [
        FAQ(question: "What are the common symptoms of heart disease?",
            answer: "Chest pain, shortness of breath, fatigue, palpitations, dizziness, and swelling in the legs."),
        FAQ(question: "What causes heart disease?",
            answer: "Heart disease commonly results from high blood pressure, diabetes, high cholesterol, smoking, obesity, and chronic stress. Family history and a sedentary lifestyle further increase the risk."),
        FAQ(question: "How can I detect abnormalities in my heart health early?",
            answer: "Regular health check-ups with ECG, blood tests, and echocardiography help identify problems before symptoms worsen."),
        FAQ(question: "What lifestyle changes can improve heart health?",
            answer: "Eating a balanced diet, exercising regularly, managing stress, and getting adequate sleep support heart function. Avoiding tobacco and limiting alcohol significantly reduce heart disease risk."),
        FAQ(question: "How can heart disease be prevented?",
            answer: "Controlling risk factors early and following medical advice can greatly reduce the chances of heart-related problems.")
    ]

    // Dental Topics and FAQs
    static let dentalTopics = [
        Topic(name: "Tooth Decay", iconName: "circle.dashed", content: TopicContent(
            overview: "Tooth decay is a condition in which the hard outer layer of the tooth gets damaged due to acids produced by bacteria. Over time, this leads to cavities, pain, and infection if untreated.",
            causesIntro: "Tooth decay develops when bacteria in dental plaque break down sugars and produce acids that erode tooth enamel. Poor oral hygiene and dietary habits increase the risk.",
            causes: [
                "Poor oral hygiene: Inadequate brushing and flossing allow plaque and bacteria to build up on teeth.",
                "High sugar intake: Sugary foods and drinks feed bacteria that produce tooth-damaging acids.",
                "Frequent snacking: Constant eating prevents saliva from neutralizing acids effectively.",
                "Plaque buildup: Sticky bacterial film traps acids against the tooth surface.",
                "Lack of fluoride: Fluoride strengthens enamel and helps prevent acid damage.",
                "Dry mouth: Reduced saliva decreases natural protection against bacteria and acids.",
                "Poor dental alignment: Crowded teeth trap food particles, increasing decay risk.",
                "Delayed dental visits: Untreated minor decay can progress into deeper cavities."
            ],
            symptomsIntro: "Symptoms vary depending on the stage of decay and may worsen as damage progresses. Early decay may not cause noticeable discomfort.",
            symptoms: [
                "Tooth sensitivity: Pain or discomfort when consuming hot, cold, or sweet foods.",
                "Toothache: Persistent or sharp pain indicates deeper decay.",
                "Visible holes or pits: Cavities may appear as dark or rough spots on teeth.",
                "Bad breath: Bacterial activity causes persistent unpleasant odor.",
                "Pain while chewing: Pressure on damaged teeth causes discomfort."
            ],
            diagnosis: "Dentists diagnose tooth decay through examination and imaging to assess the extent of damage. Early detection helps prevent complications. Dental examination: Visual and tactile inspection identifies surface cavities. Dental X-rays: Detect hidden decay between teeth or below the surface. Caries detection tools: Advanced tools help identify early enamel damage.",
            complicationsIntro: "If left untreated, tooth decay can spread deeper into the tooth and surrounding tissues. This may result in serious dental and systemic problems.",
            complications: [
                "Tooth infection: Bacteria may reach the pulp, causing abscess formation.",
                "Severe pain: Advanced decay leads to constant or throbbing pain.",
                "Tooth loss: Extensive damage may require extraction.",
                "Gum disease: Infection can spread to surrounding gum tissue.",
                "Difficulty eating: Pain and sensitivity affect chewing and nutrition."
            ]
        )),
        Topic(name: "Gum Disease", iconName: "heart.text.square", content: TopicContent(
            overview: "Gum disease is an infection and inflammation of the gums caused by bacterial plaque buildup around the teeth. If untreated, it can damage gum tissue and the bone supporting the teeth.",
            causesIntro: "Gum disease begins when plaque accumulates along the gum line and triggers inflammation. Over time, untreated inflammation progresses to deeper gum and bone damage.",
            causes: [
                "Poor oral hygiene: Inadequate brushing and flossing allow plaque and bacteria to multiply.",
                "Plaque and tartar buildup: Hardened plaque irritates gums and harbors harmful bacteria.",
                "Smoking or tobacco use: Tobacco reduces blood supply to gums and delays healing.",
                "Hormonal changes: Pregnancy, puberty, or menopause can increase gum sensitivity.",
                "Diabetes: High blood sugar weakens immunity and worsens gum infections.",
                "Certain medications: Some drugs reduce saliva or cause gum overgrowth.",
                "Genetic susceptibility: Some individuals are more prone to gum disease.",
                "Irregular dental visits: Lack of professional cleaning allows disease progression."
            ],
            symptomsIntro: "Early gum disease may be painless, making regular dental check-ups essential. Symptoms become more severe as the condition progresses.",
            symptoms: [
                "Bleeding gums: Gums bleed during brushing or flossing due to inflammation.",
                "Red or swollen gums: Infected gums appear puffy and tender.",
                "Bad breath: Persistent odor results from bacterial infection.",
                "Receding gums: Gums pull away, exposing more of the tooth surface.",
                "Loose teeth: Advanced disease damages bone supporting the teeth."
            ],
            diagnosis: "Dentists diagnose gum disease by evaluating gum health and measuring tissue damage. Early diagnosis helps prevent tooth loss. Gum examination: Visual inspection identifies inflammation and gum recession. Pocket depth measurement: Probes measure space between gums and teeth. Dental X-rays: Imaging shows bone loss around teeth.",
            complicationsIntro: "Untreated gum disease can lead to permanent damage and affect overall health. Advanced stages may require surgical intervention.",
            complications: [
                "Tooth loss: Bone destruction causes teeth to become loose and fall out.",
                "Jawbone damage: Progressive infection weakens supporting bone.",
                "Abscess formation: Pockets of infection may develop in gums.",
                "Increased heart risk: Gum inflammation is linked to cardiovascular disease.",
                "Poor blood sugar control: Gum disease worsens diabetes management."
            ]
        )),
        Topic(name: "Oral Hygiene", iconName: "sparkles", content: TopicContent(
            overview: "Oral hygiene refers to the practice of keeping the mouth, teeth, and gums clean to prevent dental problems. Good oral hygiene helps maintain healthy teeth, gums, and overall oral health.",
            causesIntro: "Poor oral hygiene occurs when daily dental care practices are inadequate or inconsistent. Over time, this allows bacteria and plaque to build up in the mouth.",
            causes: [
                "Irregular brushing: Skipping brushing allows plaque and bacteria to remain on teeth.",
                "Improper brushing technique: Incorrect methods fail to clean all tooth surfaces effectively.",
                "Lack of flossing: Food particles between teeth promote bacterial growth and decay.",
                "High sugar consumption: Sugary foods encourage acid-producing bacteria.",
                "Infrequent dental visits: Lack of professional cleaning allows plaque to harden into tartar.",
                "Tobacco use: Smoking stains teeth and increases bacterial buildup.",
                "Dry mouth: Reduced saliva lowers natural cleansing and protection.",
                "Poor dietary habits: Lack of nutrients weakens teeth and gum health."
            ],
            symptomsIntro: "Signs of poor oral hygiene may appear gradually and worsen without intervention. Early recognition helps prevent serious dental issues.",
            symptoms: [
                "Bad breath: Persistent odor results from bacterial buildup in the mouth.",
                "Plaque or tartar: Yellow or brown deposits form on teeth surfaces.",
                "Bleeding gums: Inflammation causes gums to bleed during brushing.",
                "Tooth sensitivity: Exposed enamel or gums react to hot or cold foods.",
                "Discolored teeth: Staining occurs due to plaque, food, or tobacco."
            ],
            diagnosis: "Dentists assess oral hygiene by examining teeth, gums, and overall mouth condition. Early diagnosis helps prevent progression to disease. Dental examination: Visual inspection identifies plaque, decay, and gum health. Gum assessment: Checks for swelling, bleeding, or recession. Dental history review: Evaluates hygiene habits and risk factors.",
            complicationsIntro: "If neglected, poor oral hygiene can lead to long-term dental and systemic health problems. These complications may require extensive treatment.",
            complications: [
                "Tooth decay: Plaque acids erode enamel, leading to cavities.",
                "Gum disease: Bacterial infection damages gums and supporting tissues.",
                "Tooth loss: Advanced decay and gum disease weaken tooth support.",
                "Oral infections: Bacteria may cause abscesses and pain.",
                "Overall health impact: Poor oral health is linked to heart disease and diabetes."
            ]
        )),
        Topic(name: "Dental Implants", iconName: "circle.fill", content: TopicContent(
            overview: "Dental implants are artificial tooth roots made of biocompatible materials that are surgically placed into the jawbone. They provide a strong foundation for fixed or removable replacement teeth.",
            causesIntro: "Dental implants are recommended when natural teeth are lost and need long-term replacement. They help restore function, appearance, and oral health.",
            causes: [
                "Tooth loss due to decay: Severe decay may require extraction, leaving gaps that need replacement.",
                "Gum disease: Advanced periodontal disease can loosen and destroy supporting structures of teeth.",
                "Tooth injury or trauma: Accidents can result in broken or missing teeth.",
                "Congenital missing teeth: Some individuals are born without certain permanent teeth.",
                "Poor-fitting dentures: Implants provide better stability and comfort than loose dentures.",
                "Bone loss prevention: Implants stimulate jawbone and prevent bone shrinkage.",
                "Difficulty chewing: Missing teeth affect proper chewing and digestion.",
                "Speech and appearance concerns: Tooth gaps may affect speech clarity and facial structure."
            ],
            symptomsIntro: "Certain signs suggest that dental implants may be a suitable treatment option. Early consultation helps in better planning.",
            symptoms: [
                "Missing teeth: One or more gaps affecting appearance or function.",
                "Loose dentures: Dentures that move or cause discomfort while eating or speaking.",
                "Difficulty chewing: Inability to bite or chew food properly.",
                "Jawbone shrinkage: Sunken facial appearance due to bone loss.",
                "Speech problems: Difficulty pronouncing certain words clearly."
            ],
            diagnosis: "Proper evaluation ensures implant success and long-term stability. Dentists assess both oral and general health before treatment. Clinical dental examination: Assesses gum health and space for implant placement. Dental X-rays or scans: Evaluate bone quality and quantity in the jaw. Medical history review: Identifies conditions that may affect healing or surgery.",
            complicationsIntro: "Although dental implants are highly successful, complications may occur if care is inadequate or health factors interfere with healing.",
            complications: [
                "Implant infection: Poor oral hygiene may lead to infection around the implant site.",
                "Implant failure: Inadequate bone support can prevent proper integration.",
                "Nerve injury: Improper placement may cause numbness or discomfort.",
                "Sinus problems: Upper jaw implants may affect nearby sinus cavities.",
                "Delayed healing: Smoking or medical conditions can slow recovery."
            ]
        )),
        Topic(name: "Orthodontics", iconName: "exclamationmark.circle", content: TopicContent(
            overview: "Orthodontics is a dental specialty focused on diagnosing and correcting misaligned teeth and jaws. It improves bite function, oral health, and overall facial appearance.",
            causesIntro: "Orthodontic problems arise due to irregular tooth positioning or jaw alignment issues. Early or timely treatment helps prevent long-term dental complications.",
            causes: [
                "Crooked or crowded teeth: Lack of space causes teeth to overlap or rotate.",
                "Misaligned bite: Upper and lower teeth do not fit together properly while biting.",
                "Jaw growth abnormalities: Uneven jaw development affects alignment and facial balance.",
                "Thumb sucking or habits: Prolonged habits can push teeth out of position.",
                "Early or late tooth loss: Premature loss or delayed eruption affects spacing.",
                "Genetic factors: Family history plays a major role in alignment issues.",
                "Speech or chewing difficulty: Poor alignment interferes with function.",
                "Aesthetic concerns: Irregular teeth affect smile confidence."
            ],
            symptomsIntro: "Signs may appear in childhood or adulthood and often worsen if untreated. Early evaluation leads to simpler and more effective correction.",
            symptoms: [
                "Crowded or spaced teeth: Visible gaps or overlapping teeth.",
                "Difficulty biting or chewing: Improper alignment causes discomfort while eating.",
                "Jaw pain or clicking: Misalignment strains jaw joints and muscles.",
                "Mouth breathing: Jaw structure may affect airway and breathing patterns.",
                "Speech issues: Teeth positioning affects pronunciation of certain sounds."
            ],
            diagnosis: "Orthodontic diagnosis involves detailed assessment of teeth, jaws, and facial structure. This helps in planning effective and personalized treatment. Clinical examination: Evaluates tooth position, bite, and jaw movement. Dental X-rays and scans: Assess tooth roots, jawbone, and growth patterns. Dental impressions or digital scans: Create models for precise treatment planning.",
            complicationsIntro: "Ignoring orthodontic problems can lead to functional and long-term dental damage. Early correction reduces these risks.",
            complications: [
                "Tooth wear: Misaligned teeth wear unevenly over time.",
                "Gum disease risk: Crowding makes cleaning difficult, leading to plaque buildup.",
                "Jaw joint problems: Continuous strain may cause TMJ disorders.",
                "Speech and chewing problems: Functional difficulties persist or worsen.",
                "Reduced self-confidence: Smile aesthetics can impact emotional well-being."
            ]
        ))
    ]

    static let dentalFAQs = [
        FAQ(question: "What are common signs of dental problems?",
            answer: "Tooth pain, sensitivity, bleeding gums, bad breath, loose teeth, or mouth sores."),
        FAQ(question: "What causes tooth decay and cavities?",
            answer: "Cavities are caused by plaque buildup from bacteria that feed on sugars and produce acids. Poor oral hygiene and frequent sugary foods increase the risk."),
        FAQ(question: "How often should I visit a dentist?",
            answer: "A dental check-up every 6 months helps detect problems early and maintain oral health."),
        FAQ(question: "How can gum disease be prevented?",
            answer: "Regular brushing, flossing, and professional cleanings help prevent plaque buildup and gum infection. Quitting smoking and managing diabetes further reduce risk."),
        FAQ(question: "What treatments are available for tooth pain?",
            answer: "Treatment depends on the cause and may include fillings, root canal therapy, medications, or tooth extraction.")
    ]

    // Endocrinologist Topics and FAQs
    static let endocrinologistTopics = [
        Topic(name: "Diabetes", iconName: "drop.fill", content: TopicContent(
            overview: "Diabetes is a chronic metabolic disorder in which the body is unable to regulate blood sugar levels properly. It occurs either due to insufficient insulin production or ineffective use of insulin, leading to persistently high blood glucose levels that can damage multiple organs over time.",
            causesIntro: "Diabetes develops due to a combination of genetic, lifestyle, and medical factors that affect insulin production or action. The underlying cause varies depending on the type of diabetes.",
            causes: [
                "Insulin deficiency: The pancreas produces little or no insulin, as seen in Type 1 diabetes.",
                "Insulin resistance: Body cells do not respond properly to insulin, common in Type 2 diabetes.",
                "Genetic predisposition: Family history increases the likelihood of developing diabetes.",
                "Obesity: Excess body fat interferes with insulin action and glucose uptake.",
                "Physical inactivity: Lack of exercise reduces insulin sensitivity in muscles.",
                "Unhealthy diet: High intake of refined sugars and processed foods raises blood glucose levels.",
                "Hormonal disorders: Conditions like PCOS or Cushing's syndrome affect insulin balance.",
                "Stress and illness: Chronic stress hormones and infections can elevate blood sugar levels."
            ],
            symptomsIntro: "Symptoms may develop gradually and are often overlooked in early stages, especially in Type 2 diabetes. Persistent symptoms usually indicate poor blood sugar control.",
            symptoms: [
                "Increased thirst: High blood sugar causes dehydration, leading to excessive thirst.",
                "Frequent urination: Excess glucose is excreted through urine, increasing urine output.",
                "Unexplained weight loss: The body breaks down fat and muscle due to lack of usable glucose.",
                "Fatigue: Cells lack energy because glucose cannot enter efficiently.",
                "Blurred vision: High blood sugar affects fluid balance in the eyes."
            ],
            diagnosis: "Diabetes is a long-term condition that requires early diagnosis, regular monitoring, and consistent management. With proper lifestyle changes, medication adherence, and medical supervision, individuals with diabetes can lead healthy and active lives while preventing serious complications.",
            complicationsIntro: nil,
            complications: nil
        )),
        Topic(name: "Thyroid Disorders", iconName: "cross.case", content: TopicContent(
            overview: "Thyroid disorders are conditions in which the thyroid gland produces an excess or deficiency of thyroid hormones, leading to disruption in metabolism and organ function. These imbalances affect energy levels, weight, heart rate, digestion, mood, and reproductive health.",
            causesIntro: "Thyroid disorders develop due to immune, nutritional, hormonal, or environmental factors that interfere with normal hormone production. The underlying cause determines whether the thyroid becomes overactive or underactive.",
            causes: [
                "Autoimmune diseases: Conditions such as Hashimoto's thyroiditis and Graves' disease cause the immune system to attack thyroid tissue.",
                "Iodine imbalance: Both iodine deficiency and excess iodine intake disrupt normal thyroid hormone synthesis.",
                "Genetic predisposition: A family history of thyroid disease increases the likelihood of developing thyroid disorders.",
                "Hormonal changes: Pregnancy, menopause, and puberty can trigger thyroid dysfunction due to hormonal fluctuations.",
                "Thyroid nodules: Lumps within the thyroid may alter hormone secretion or cause gland enlargement.",
                "Certain medications: Drugs like lithium or amiodarone interfere with thyroid hormone production or release.",
                "Radiation exposure: Radiation therapy to the head or neck can permanently damage thyroid cells.",
                "Stress and illness: Chronic stress and severe infections can disrupt hormonal regulation and thyroid function."
            ],
            symptomsIntro: "Symptoms vary based on whether thyroid hormone levels are high or low and often develop gradually. They may affect physical, emotional, and metabolic health.",
            symptoms: [
                "Weight changes: Unexplained weight gain or loss occurs due to altered metabolism.",
                "Energy level changes: Low hormone levels cause fatigue, while excess hormone causes restlessness or anxiety.",
                "Hair and skin changes: Hair thinning, dry skin, brittle nails, or excessive hair fall may occur.",
                "Heart rhythm changes: Thyroid imbalance can cause slow heartbeat or palpitations and irregular rhythms.",
                "Menstrual and fertility issues: Thyroid dysfunction may cause irregular periods or difficulty conceiving."
            ],
            diagnosis: "Diagnosis involves laboratory tests and imaging to assess hormone levels and identify structural abnormalities. Early diagnosis allows timely treatment. Blood tests: TSH, T3, and T4 levels help determine thyroid activity and severity of imbalance. Thyroid antibody tests: Detect autoimmune causes such as Hashimoto's or Graves' disease. Imaging studies: Ultrasound or thyroid scans identify nodules, enlargement, or structural changes.",
            complicationsIntro: "Treatment is tailored to the type and severity of thyroid dysfunction and aims to restore hormonal balance. Lifelong monitoring is often required.",
            complications: [
                "Hormone replacement therapy: Synthetic thyroid hormone is prescribed for underactive thyroid conditions.",
                "Anti-thyroid medications: Drugs reduce excess hormone production in hyperthyroidism.",
                "Radioactive iodine therapy: Used to destroy overactive thyroid tissue when medication is ineffective.",
                "Surgical treatment: Partial or total thyroid removal may be needed for nodules or cancer.",
                "Lifestyle and follow-up care: Balanced diet, stress management, and regular testing support long-term control."
            ]
        )),
        Topic(name: "Osteoporosis", iconName: "bone.fill", content: TopicContent(
            overview: "Osteoporosis is a condition in which bones become weak, porous, and fragile due to loss of bone density. This increases the risk of fractures, even with minor falls or routine activities.",
            causesIntro: "Osteoporosis develops when bone breakdown occurs faster than bone formation. Hormonal changes, nutritional deficiencies, and lifestyle factors play a major role.",
            causes: [
                "Hormonal changes: Reduced estrogen after menopause or low testosterone in men accelerates bone loss.",
                "Calcium deficiency: Inadequate calcium intake weakens bone structure over time.",
                "Vitamin D deficiency: Low vitamin D reduces calcium absorption from the gut.",
                "Aging: Bone density naturally decreases with age, increasing fracture risk.",
                "Sedentary lifestyle: Lack of weight-bearing exercise weakens bones and muscles.",
                "Long-term steroid use: Prolonged corticosteroid use interferes with bone formation.",
                "Smoking: Tobacco reduces bone mass and interferes with calcium absorption.",
                "Excess alcohol intake: Alcohol disrupts bone remodeling and hormone balance."
            ],
            symptomsIntro: "Osteoporosis is often called a 'silent disease' because bone loss occurs without early symptoms. Signs usually appear after fractures or significant bone weakening.",
            symptoms: [
                "Back pain: Caused by vertebral fractures or collapsed spinal bones.",
                "Loss of height: Gradual reduction in height due to spinal compression.",
                "Stooped posture: Forward bending posture develops due to weakened spine.",
                "Frequent fractures: Bones break easily, even with minor trauma.",
                "Bone tenderness: Mild aches may occur as bone strength decreases."
            ],
            diagnosis: "Diagnosis focuses on measuring bone density and assessing fracture risk. Early detection helps prevent serious complications. Bone mineral density (DEXA scan): Measures bone strength and confirms osteoporosis. Blood tests: Check calcium, vitamin D, and hormone levels. Fracture risk assessment: Evaluates age, medical history, and lifestyle factors.",
            complicationsIntro: "Treatment aims to strengthen bones, prevent fractures, and slow bone loss. Long-term management is essential for maintaining bone health.",
            complications: [
                "Calcium and vitamin D supplements: Support bone strength and mineralization.",
                "Medications: Bisphosphonates and other drugs reduce bone breakdown.",
                "Hormonal therapy: Used in selected cases to improve bone density.",
                "Exercise therapy: Weight-bearing and strength exercises improve bone and muscle strength.",
                "Lifestyle modification: Avoiding smoking, limiting alcohol, and fall prevention reduce fracture risk."
            ]
        )),
        Topic(name: "PCOS", iconName: "figure.stand.dress", content: TopicContent(
            overview: "Polycystic Ovary Syndrome is a hormonal disorder affecting women of reproductive age, characterized by irregular periods, excess androgen hormones, and ovarian cysts. It can impact menstrual health, fertility, metabolism, and long-term health if not managed properly.",
            causesIntro: "PCOS develops due to hormonal imbalance and metabolic disturbances, often influenced by genetic and lifestyle factors. The exact cause is not fully known, but multiple factors contribute.",
            causes: [
                "Hormonal imbalance: Excess androgen hormones interfere with ovulation and menstrual regularity.",
                "Insulin resistance: Poor insulin response increases insulin levels, which stimulate androgen production.",
                "Genetic predisposition: Family history raises the likelihood of developing PCOS.",
                "Obesity: Excess body fat worsens insulin resistance and hormonal imbalance.",
                "Chronic inflammation: Low-grade inflammation triggers increased androgen production.",
                "Lifestyle factors: Poor diet and physical inactivity aggravate metabolic dysfunction.",
                "Stress: Stress hormones disrupt the normal hormonal axis.",
                "Early puberty factors: Early hormonal changes may increase PCOS risk later."
            ],
            symptomsIntro: "Symptoms vary widely among individuals and may appear gradually. Some women experience reproductive symptoms, while others have metabolic or cosmetic concerns.",
            symptoms: [
                "Irregular periods: Infrequent, delayed, or absent menstrual cycles due to lack of ovulation.",
                "Excess hair growth: Increased facial or body hair due to high androgen levels.",
                "Acne and oily skin: Androgen excess stimulates oil glands.",
                "Weight gain: Difficulty losing weight, especially around the abdomen.",
                "Fertility issues: Irregular ovulation can make conception difficult."
            ],
            diagnosis: "Diagnosis is based on clinical symptoms, hormonal tests, and imaging findings. Early diagnosis helps prevent complications. Medical history and examination: Evaluates menstrual patterns, hair growth, and weight changes. Blood tests: Measure hormone levels, insulin resistance, and metabolic markers. Pelvic ultrasound: Detects enlarged ovaries with multiple small cysts.",
            complicationsIntro: "Treatment focuses on symptom control, hormonal balance, and prevention of long-term complications. Management is individualized based on symptoms and goals.",
            complications: [
                "Lifestyle modification: Weight loss through diet and exercise improves insulin sensitivity and ovulation.",
                "Medications: Hormonal pills regulate periods; metformin improves insulin resistance.",
                "Fertility treatment: Ovulation-inducing drugs help women trying to conceive.",
                "Cosmetic management: Treatments address acne and excess hair growth.",
                "Long-term monitoring: Regular follow-ups prevent diabetes, heart disease, and infertility issues."
            ]
        )),
        Topic(name: "Adrenal Disorders", iconName: "heart.circle", content: TopicContent(
            overview: "Adrenal disorders are conditions in which the adrenal glands produce too much or too little of essential hormones like cortisol, aldosterone, and adrenaline. These hormones regulate stress response, blood pressure, metabolism, and electrolyte balance, so imbalance can affect the entire body.",
            causesIntro: "Adrenal disorders occur due to problems affecting the adrenal glands themselves or the hormonal control systems regulating them. The cause determines whether hormone levels are excessive or deficient.",
            causes: [
                "Autoimmune destruction: The immune system may attack adrenal glands, leading to adrenal insufficiency.",
                "Adrenal tumors: Benign or malignant growths can cause excess hormone production.",
                "Long-term steroid use: Prolonged corticosteroid therapy suppresses natural adrenal hormone production.",
                "Genetic conditions: Inherited disorders affect adrenal hormone synthesis.",
                "Infections: Tuberculosis or severe infections can damage adrenal tissue.",
                "Pituitary gland disorders: Poor signaling from the pituitary disrupts adrenal hormone release.",
                "Stress and trauma: Severe physical stress can unmask adrenal dysfunction.",
                "Surgical removal or damage: Injury or surgery involving adrenal glands affects hormone output."
            ],
            symptomsIntro: "Symptoms depend on whether adrenal hormone levels are high or low and often develop gradually. They may affect energy, blood pressure, and stress tolerance.",
            symptoms: [
                "Chronic fatigue: Low cortisol levels cause persistent weakness and tiredness.",
                "Blood pressure changes: Low levels cause dizziness, while excess hormones raise blood pressure.",
                "Weight changes: Hormonal imbalance may cause unexplained weight gain or loss.",
                "Skin changes: Darkening of skin or easy bruising may occur.",
                "Mood and stress intolerance: Anxiety, depression, or poor stress response is common."
            ],
            diagnosis: "Diagnosis involves hormone testing and imaging to identify the underlying cause. Early diagnosis helps prevent serious complications. Blood and urine tests: Measure cortisol, aldosterone, and related hormone levels. Stimulation or suppression tests: Assess adrenal response to hormonal signals. Imaging studies: CT or MRI scans identify tumors or gland abnormalities.",
            complicationsIntro: "Treatment depends on the specific disorder and aims to restore hormonal balance and manage symptoms. Lifelong management may be required in some cases.",
            complications: [
                "Hormone replacement therapy: Used in adrenal insufficiency to replace missing hormones.",
                "Medications: Control excess hormone production in conditions like Cushing's syndrome.",
                "Surgical treatment: Removal of adrenal tumors when indicated.",
                "Gradual steroid tapering: Prevents adrenal suppression in long-term steroid users.",
                "Regular monitoring: Ongoing follow-up ensures hormone levels remain balanced."
            ]
        ))
    ]

    static let endocrinologistFAQs = [
        FAQ(question: "What symptoms indicate a hormonal imbalance?",
            answer: "Symptoms include unexplained weight changes, fatigue, mood swings, hair loss, irregular periods, or excessive thirst."),
        FAQ(question: "What causes hormonal disorders?",
            answer: "Hormonal disorders occur due to gland dysfunction affecting hormones like insulin, thyroid, or cortisol. Genetics, autoimmune conditions, stress, and lifestyle factors also play a role."),
        FAQ(question: "When should I see an endocrinologist?",
            answer: "If you have persistent hormonal symptoms, abnormal blood reports, or conditions like diabetes or thyroid disorders."),
        FAQ(question: "How are hormonal problems diagnosed?",
            answer: "Diagnosis includes blood tests, hormone level evaluation, imaging studies, and clinical assessment."),
        FAQ(question: "How can endocrine disorders be managed or prevented?",
            answer: "Early diagnosis, regular monitoring, medication adherence, and healthy lifestyle choices help control and prevent complications.")
    ]

    // Gastroenterologist Topics and FAQs
    static let gastroenterologistTopics = [
        Topic(name: "Acid Reflux", iconName: "circle.dashed", content: TopicContent(
            overview: "Acid reflux is a digestive condition in which stomach acid flows back into the esophagus due to a weak or relaxed lower esophageal sphincter. This backflow irritates the esophageal lining and causes discomfort, commonly known as heartburn.",
            causesIntro: "Acid reflux occurs when the valve between the stomach and esophagus does not function properly. Certain lifestyle habits, foods, and medical conditions increase acid production or weaken this valve.",
            causes: [
                "Weak lower esophageal sphincter: A poorly functioning valve allows acid to move upward into the esophagus.",
                "Overeating: Large meals increase stomach pressure, forcing acid upward.",
                "Obesity: Excess abdominal fat puts pressure on the stomach, worsening reflux.",
                "Spicy and fatty foods: These foods delay stomach emptying and increase acid production.",
                "Smoking: Nicotine relaxes the esophageal sphincter and reduces saliva production.",
                "Alcohol consumption: Alcohol irritates the esophagus and increases acid reflux episodes.",
                "Hiatal hernia: A portion of the stomach pushes into the chest, weakening reflux control.",
                "Certain medications: Painkillers and some drugs irritate the stomach lining."
            ],
            symptomsIntro: "Symptoms may vary in severity and often worsen after meals or while lying down. Persistent symptoms may indicate chronic reflux disease.",
            symptoms: [
                "Heartburn: Burning sensation in the chest, especially after eating or at night.",
                "Regurgitation: Sour or bitter taste due to acid coming back into the mouth.",
                "Chest discomfort: Pain or pressure that may mimic heart-related pain.",
                "Difficulty swallowing: Irritation causes a sensation of food sticking in the throat.",
                "Chronic cough or hoarseness: Acid irritation affects the throat and vocal cords."
            ],
            diagnosis: "Diagnosis is based on symptoms and may involve tests to assess esophageal damage. Early diagnosis helps prevent complications. Clinical evaluation: Assessment of symptoms and dietary habits. Upper endoscopy: Examines esophageal lining for inflammation or ulcers. pH monitoring: Measures acid levels in the esophagus over 24 hours.",
            complicationsIntro: "Treatment aims to reduce acid production, relieve symptoms, and prevent complications. A combination of lifestyle changes and medications is usually effective.",
            complications: [
                "Lifestyle modification: Smaller meals, weight loss, and avoiding trigger foods reduce reflux.",
                "Medications: Antacids, H2 blockers, and proton pump inhibitors reduce stomach acid.",
                "Posture changes: Avoid lying down immediately after meals and elevate head while sleeping.",
                "Smoking and alcohol cessation: Reduces irritation and improves sphincter function.",
                "Surgical treatment: Considered in severe cases not responding to medication."
            ]
        )),
        Topic(name: "Irritable Bowel Syndrome", iconName: "circle.fill", content: TopicContent(
            overview: "Irritable Bowel Syndrome is a chronic functional digestive disorder affecting the large intestine, characterized by abdominal discomfort and altered bowel habits. It does not cause structural damage but significantly impacts quality of life.",
            causesIntro: "The exact cause of IBS is not fully understood, but it is linked to abnormal gut function and sensitivity. Multiple physical and psychological factors contribute to symptom development.",
            causes: [
                "Gut-brain interaction issues: Poor communication between the brain and intestines alters bowel function.",
                "Abnormal gut motility: Intestinal muscles may contract too fast or too slowly, affecting stool consistency.",
                "Increased gut sensitivity: The intestines react strongly to normal digestion, causing pain and discomfort.",
                "Stress and anxiety: Emotional stress worsens gut symptoms through the brain–gut axis.",
                "Food intolerance: Certain foods trigger symptoms due to poor digestion or sensitivity.",
                "Gut infections: Previous intestinal infections can lead to post-infectious IBS.",
                "Altered gut microbiota: Imbalance of gut bacteria affects digestion and bowel habits.",
                "Hormonal factors: Symptoms may worsen during menstrual cycles in some individuals."
            ],
            symptomsIntro: "Symptoms vary between individuals and may fluctuate over time. They often improve after bowel movements.",
            symptoms: [
                "Abdominal pain or cramping: Pain is often relieved after passing stool.",
                "Bloating and gas: Excess gas causes abdominal fullness and discomfort.",
                "Diarrhea: Frequent loose stools, especially during stress or after meals.",
                "Constipation: Hard stools and difficulty passing bowel movements.",
                "Mixed bowel habits: Alternating episodes of diarrhea and constipation."
            ],
            diagnosis: "IBS is diagnosed based on symptoms and exclusion of other conditions. There is no single test to confirm IBS. Clinical history: Evaluation of symptom pattern, duration, and triggers. Physical examination: Rules out signs of serious digestive disease. Basic investigations: Blood or stool tests exclude infections or inflammation.",
            complicationsIntro: "Treatment focuses on symptom relief and improving daily functioning. Management is individualized and often long-term.",
            complications: [
                "Dietary modification: Identifying trigger foods and following a low-FODMAP diet helps control symptoms.",
                "Medications: Antispasmodics, laxatives, or anti-diarrheal drugs relieve specific symptoms.",
                "Stress management: Relaxation techniques and counseling reduce symptom flare-ups.",
                "Probiotics: Help restore healthy gut bacteria balance.",
                "Lifestyle changes: Regular exercise and proper sleep improve gut health."
            ]
        )),
        Topic(name: "Crohn's Disease", iconName: "oval", content: TopicContent(
            overview: "Crohn's disease is a chronic inflammatory bowel disease (IBD) that causes inflammation of the digestive tract, most commonly affecting the small intestine and colon. The inflammation can extend deep into the intestinal layers and leads to recurring flare-ups and remission.",
            causesIntro: "The exact cause of Crohn's disease is unknown, but it occurs due to an abnormal immune response combined with genetic and environmental factors. This leads to persistent inflammation in the gut.",
            causes: [
                "Autoimmune response: The immune system mistakenly attacks healthy intestinal tissue, causing chronic inflammation.",
                "Genetic predisposition: Family history significantly increases the risk of developing Crohn's disease.",
                "Immune system dysfunction: An exaggerated immune response to gut bacteria triggers inflammation.",
                "Environmental factors: Pollution, infections, and lifestyle changes may influence disease onset.",
                "Smoking: Smoking increases disease severity and frequency of flare-ups.",
                "Gut microbiome imbalance: Altered gut bacteria contribute to intestinal inflammation.",
                "Stress: Stress does not cause Crohn's but can worsen symptoms and flare-ups.",
                "Dietary factors: Certain foods may aggravate symptoms during active disease."
            ],
            symptomsIntro: "Symptoms vary depending on the location and severity of inflammation and may develop gradually. Periods of flare-ups and remission are common.",
            symptoms: [
                "Chronic diarrhea: Frequent loose stools due to intestinal inflammation.",
                "Abdominal pain and cramping: Pain usually occurs in the lower abdomen and worsens after meals.",
                "Weight loss: Poor nutrient absorption leads to unintended weight loss.",
                "Fatigue: Chronic inflammation and nutrient deficiencies cause persistent tiredness.",
                "Blood in stools: Ulceration of the intestinal lining may cause bleeding."
            ],
            diagnosis: "Diagnosis involves confirming inflammation and ruling out other gastrointestinal conditions. Multiple tests are often required. Blood tests: Detect inflammation, anemia, and nutritional deficiencies. Endoscopy and colonoscopy: Visualize intestinal inflammation and obtain biopsies. Imaging studies: CT or MRI scans assess the extent and location of disease.",
            complicationsIntro: "Treatment aims to control inflammation, relieve symptoms, and maintain long-term remission. Lifelong management is often necessary.",
            complications: [
                "Anti-inflammatory medications: Reduce intestinal inflammation during flare-ups.",
                "Immunosuppressive therapy: Controls abnormal immune responses.",
                "Biologic agents: Target specific immune pathways to reduce inflammation.",
                "Dietary management: Tailored diets help reduce symptoms and improve nutrition.",
                "Surgery: Required in severe cases to remove damaged sections of the intestine."
            ]
        )),
        Topic(name: "Ulcerative Colitis", iconName: "heart.text.square", content: TopicContent(
            overview: "Ulcerative colitis is a chronic inflammatory bowel disease (IBD) that causes continuous inflammation and ulceration of the inner lining of the colon and rectum. The condition follows a pattern of flare-ups and periods of remission.",
            causesIntro: "The exact cause of ulcerative colitis is not fully understood, but it occurs due to immune system dysfunction combined with genetic and environmental factors. This results in persistent inflammation of the colon.",
            causes: [
                "Autoimmune response: The immune system mistakenly attacks the colon lining, causing inflammation.",
                "Genetic predisposition: Family history increases susceptibility to ulcerative colitis.",
                "Immune dysregulation: Abnormal immune reactions to gut bacteria trigger inflammation.",
                "Environmental factors: Pollution, infections, and lifestyle changes may influence disease development.",
                "Stress: Stress does not cause ulcerative colitis but can worsen symptoms and flare-ups.",
                "Dietary triggers: Certain foods may aggravate symptoms during active disease.",
                "Gut microbiome imbalance: Altered intestinal bacteria contribute to inflammation.",
                "Medication factors: Long-term use of certain drugs may worsen symptoms in some patients."
            ],
            symptomsIntro: "Symptoms vary depending on disease severity and extent of colon involvement. They may worsen during flare-ups.",
            symptoms: [
                "Chronic diarrhea: Frequent loose stools, often containing mucus or blood.",
                "Rectal bleeding: Blood in stools due to ulcerated colon lining.",
                "Abdominal pain: Cramping and discomfort, usually in the lower abdomen.",
                "Urgency to pass stool: Sudden and frequent urge to use the toilet.",
                "Fatigue and weakness: Chronic inflammation and blood loss cause tiredness."
            ],
            diagnosis: "Diagnosis involves confirming inflammation and assessing disease extent. Multiple investigations help guide treatment. Blood tests: Identify inflammation, anemia, and infection markers. Stool tests: Rule out infections and detect intestinal inflammation. Colonoscopy: Visualizes ulcers and allows biopsy of the colon lining.",
            complicationsIntro: "Treatment aims to control inflammation, relieve symptoms, and maintain remission. Long-term medical follow-up is essential.",
            complications: [
                "Anti-inflammatory medications: Reduce inflammation and control flare-ups.",
                "Immunosuppressive drugs: Suppress abnormal immune activity.",
                "Biologic therapies: Target specific immune pathways responsible for inflammation.",
                "Dietary management: Adjusted diet helps reduce symptoms during flares.",
                "Surgery: May be required in severe or treatment-resistant cases."
            ]
        )),
        Topic(name: "Hepatitis", iconName: "sparkles", content: TopicContent(
            overview: "Hepatitis is a condition characterized by inflammation of the liver, which affects its ability to perform vital functions such as detoxification, digestion, and metabolism. It can be acute or chronic and may lead to serious liver damage if untreated.",
            causesIntro: "Hepatitis can occur due to viral infections, toxins, or immune-related causes. The cause determines the type, severity, and long-term outcome of the disease.",
            causes: [
                "Viral infections: Hepatitis A, B, C, D, and E viruses are the most common causes worldwide.",
                "Alcohol consumption: Excessive alcohol intake damages liver cells and causes alcoholic hepatitis.",
                "Drug-induced toxicity: Certain medications and overdoses can inflame the liver.",
                "Autoimmune disorders: The immune system attacks liver cells, causing autoimmune hepatitis.",
                "Contaminated food or water: Poor sanitation spreads hepatitis A and E infections.",
                "Blood or body fluid exposure: Unsafe injections or transfusions transmit hepatitis B and C.",
                "Metabolic disorders: Conditions like fatty liver disease can progress to hepatitis.",
                "Toxin exposure: Chemicals and poisons can cause liver inflammation."
            ],
            symptomsIntro: "Symptoms may vary depending on the type and stage of hepatitis, and some individuals may remain asymptomatic. Chronic hepatitis often presents subtly.",
            symptoms: [
                "Fatigue: Persistent tiredness due to impaired liver function.",
                "Jaundice: Yellowing of skin and eyes caused by bilirubin buildup.",
                "Abdominal pain: Discomfort or pain in the upper right abdomen.",
                "Nausea and vomiting: Digestive disturbances caused by liver inflammation.",
                "Dark urine and pale stools: Result from impaired bile processing."
            ],
            diagnosis: "Diagnosis involves identifying liver inflammation and determining its cause. Early diagnosis helps prevent progression to liver failure. Blood tests: Liver function tests and viral markers confirm hepatitis type. Imaging studies: Ultrasound or CT scans assess liver size and structure. Liver biopsy: Determines severity and extent of liver damage when needed.",
            complicationsIntro: "Treatment depends on the type and cause of hepatitis and aims to reduce liver inflammation and prevent complications. Regular monitoring is essential.",
            complications: [
                "Antiviral therapy: Used for chronic viral hepatitis to suppress viral replication.",
                "Lifestyle modification: Avoiding alcohol and liver-toxic substances supports recovery.",
                "Supportive care: Rest, hydration, and nutrition help in acute hepatitis.",
                "Immunosuppressive therapy: Used in autoimmune hepatitis.",
                "Vaccination and prevention: Vaccines prevent hepatitis A and B infections."
            ]
        ))
    ]

    static let gastroenterologistFAQs = [
        FAQ(question: "What are common symptoms of digestive disorders?",
            answer: "Symptoms include abdominal pain, bloating, acidity, nausea, vomiting, constipation, diarrhea, or blood in stools."),
        FAQ(question: "What causes digestive problems?",
            answer: "Digestive disorders may result from infections, food intolerance, poor diet, stress, or chronic conditions. Lifestyle habits and gut inflammation also contribute."),
        FAQ(question: "When should I consult a gastroenterologist?",
            answer: "If digestive symptoms are persistent, severe, or affect daily activities despite basic treatment."),
        FAQ(question: "How are gastrointestinal diseases diagnosed?",
            answer: "Diagnosis may involve blood tests, stool tests, imaging studies, endoscopy, or colonoscopy."),
        FAQ(question: "How can digestive health be maintained or improved?",
            answer: "A balanced diet, adequate hydration, regular exercise, stress management, and timely medical care support gut health.")
    ]

    // Gynecologist Topics and FAQs
    static let gynecologistTopics = [
        Topic(name: "Pregnancy & Home Pregnancy Test", iconName: "figure.stand", content: TopicContent(
            overview: "Pregnancy is a physiological condition in which a fertilized egg implants in the uterus and develops into a fetus. It begins at implantation and is supported by hormonal changes, especially the hormone human chorionic gonadotropin (hCG). A home pregnancy test is a simple, over-the-counter diagnostic test used to detect pregnancy by identifying the presence of hCG hormone in urine. It provides an early indication of pregnancy before a clinical visit.",
            causesIntro: "Home pregnancy tests work by detecting hCG, a hormone released after implantation of the fertilized egg. The test strip contains antibodies that bind to hCG and produce a visible line or symbol indicating pregnancy.",
            causes: [
                "Implantation: Fertilized egg implants in the uterus, triggering hCG production.",
                "Hormonal changes: Rising hCG levels become detectable in urine after implantation.",
                "Test sensitivity: Different tests detect varying levels of hCG concentration.",
                "Timing of test: Testing after missed period improves detection accuracy.",
                "First-morning urine: Contains highest concentration of hCG for optimal results."
            ],
            symptomsIntro: "Most home pregnancy tests are over 95–99% accurate when used correctly and at the right time. Accuracy improves when the test is taken after a missed period using first-morning urine.",
            symptoms: [
                "Visual results: Test strips show lines or symbols indicating pregnancy status.",
                "Digital display: Some tests show 'Pregnant' or 'Not Pregnant' for easy interpretation.",
                "False negatives: Can occur if testing too early with low hCG levels.",
                "Urine concentration: Diluted urine may reduce detectable hCG levels.",
                "Usage accuracy: Following instructions correctly ensures reliable results."
            ],
            diagnosis: "A positive home pregnancy test should always be confirmed by a healthcare professional. Follow-up ensures accurate diagnosis and appropriate care. Blood hCG test confirms pregnancy and measures hormone levels. Ultrasound scan confirms location and viability of pregnancy. Gynecologist consultation is essential for antenatal planning and care.",
            complicationsIntro: "Home pregnancy tests have certain limitations and should not replace medical evaluation. For best results, home pregnancy tests should be used correctly and at the appropriate time.",
            complications: [
                "Test timing: Testing too early may result in false negatives due to low hCG levels.",
                "Expired test kits: Old kits may not function properly and give inaccurate results.",
                "Certain medications: Rare medications containing hCG can affect test results.",
                "Cannot assess pregnancy health: Does not confirm location or viability of pregnancy.",
                "No gestational age information: Cannot determine how far along the pregnancy is."
            ]
        )),
        Topic(name: "Menstrual Disorders", iconName: "circle.dashed", content: TopicContent(
            overview: "Menstrual disorders are conditions in which the normal menstrual cycle is disrupted in terms of timing, flow, or associated symptoms. These disorders can affect physical health, emotional well-being, and reproductive health.",
            causesIntro: "Menstrual irregularities occur due to hormonal, structural, or lifestyle-related factors. Identifying the cause is essential for proper treatment.",
            causes: [
                "Hormonal imbalance: Disruption in estrogen and progesterone affects cycle regularity.",
                "Polycystic ovary syndrome (PCOS): A common cause of irregular or absent periods.",
                "Thyroid disorders: Both hypo- and hyperthyroidism affect menstruation.",
                "Stress: Chronic stress alters hormonal signaling from the brain.",
                "Excessive weight changes: Sudden weight loss or gain disrupts ovulation.",
                "Uterine conditions: Fibroids or polyps cause heavy or irregular bleeding.",
                "Medications: Hormonal contraceptives or other drugs may affect cycles.",
                "Excessive exercise: Overtraining suppresses ovulation and menstruation."
            ],
            symptomsIntro: "Symptoms vary depending on the type and severity of the disorder. Some symptoms may significantly affect daily life.",
            symptoms: [
                "Irregular cycles: Periods occurring too early, too late, or unpredictably.",
                "Heavy bleeding: Soaking pads or passing large clots.",
                "Severe menstrual pain: Cramping that interferes with routine activities.",
                "Missed periods: Absence of menstruation for extended durations.",
                "Mood changes: Irritability, anxiety, or depression around periods."
            ],
            diagnosis: "Diagnosis involves evaluating menstrual history and identifying underlying causes. Early diagnosis helps prevent complications. Medical history review assesses cycle pattern, flow, and symptoms. Blood tests evaluate hormone levels, thyroid function, and anemia. Pelvic ultrasound detects uterine or ovarian abnormalities.",
            complicationsIntro: "Treatment depends on the underlying cause and severity of symptoms. The goal is to restore regular cycles and relieve discomfort.",
            complications: [
                "Hormonal therapy: Regulates cycles and controls bleeding.",
                "Medications: Pain relievers or drugs to reduce heavy bleeding.",
                "Lifestyle modification: Stress management, balanced diet, and healthy weight maintenance.",
                "Treatment of underlying conditions: Managing PCOS or thyroid disorders improves cycles.",
                "Surgical intervention: Required in selected cases with structural abnormalities."
            ]
        )),
        Topic(name: "Endometriosis", iconName: "circle.fill", content: TopicContent(
            overview: "Endometriosis is a chronic gynecological condition in which tissue similar to the lining of the uterus grows outside the uterus, commonly on the ovaries, fallopian tubes, or pelvic organs. This misplaced tissue responds to hormonal changes and causes inflammation, pain, and scarring.",
            causesIntro: "The exact cause of endometriosis is not fully understood, but several theories explain its development. Multiple factors may act together to trigger the condition.",
            causes: [
                "Retrograde menstruation: Menstrual blood flows backward into the pelvis, allowing tissue to implant outside the uterus.",
                "Hormonal imbalance: Estrogen promotes growth and persistence of endometrial tissue.",
                "Immune system dysfunction: The immune system fails to eliminate misplaced endometrial cells.",
                "Genetic factors: Family history increases the risk of developing endometriosis.",
                "Surgical spread: Endometrial tissue may spread during pelvic surgeries such as C-section.",
                "Cell transformation: Cells outside the uterus may transform into endometrial-like cells.",
                "Inflammation: Chronic pelvic inflammation encourages tissue growth.",
                "Early menstruation: Early onset of periods increases lifetime exposure to estrogen."
            ],
            symptomsIntro: "Symptoms vary widely and may worsen during menstruation. Some women experience severe pain, while others may have mild or no symptoms.",
            symptoms: [
                "Pelvic pain: Chronic pain, especially before and during periods.",
                "Painful menstruation: Severe cramps that worsen over time.",
                "Pain during intercourse: Deep pelvic pain during or after sexual activity.",
                "Irregular bowel or bladder symptoms: Pain during urination or bowel movements, especially during periods.",
                "Infertility: Difficulty conceiving due to pelvic adhesions or inflammation."
            ],
            diagnosis: "Diagnosis can be challenging and often delayed due to symptom overlap with other conditions. A combination of methods is used. Medical history and examination evaluate pain pattern and menstrual symptoms. Imaging tests like ultrasound or MRI help detect cysts and deep lesions. Laparoscopy is a minimally invasive surgery that confirms diagnosis and allows biopsy.",
            complicationsIntro: "Treatment aims to reduce pain, control disease progression, and preserve fertility when desired. Management depends on symptom severity and reproductive goals.",
            complications: [
                "Pain medications: NSAIDs help manage mild to moderate pain.",
                "Hormonal therapy: Birth control pills, progestins, or GnRH analogs reduce tissue growth.",
                "Surgical treatment: Removal of endometriotic tissue relieves pain and improves fertility.",
                "Fertility treatment: Assisted reproductive techniques may help women trying to conceive.",
                "Lifestyle support: Exercise, stress reduction, and dietary changes aid symptom control."
            ]
        )),
        Topic(name: "Polycystic Ovary Syndrome (PCOS)", iconName: "heart.text.square", content: TopicContent(
            overview: "Polycystic Ovary Syndrome is a common hormonal disorder affecting women of reproductive age, characterized by irregular menstrual cycles, excess male hormones (androgens), and polycystic ovaries. It can affect menstrual health, fertility, metabolism, and long-term overall health.",
            causesIntro: "PCOS develops due to a combination of hormonal, metabolic, genetic, and lifestyle factors. The exact cause is not fully known, but multiple mechanisms contribute to the condition.",
            causes: [
                "Hormonal imbalance: Excess androgen hormones interfere with ovulation and normal menstrual cycles.",
                "Insulin resistance: The body does not use insulin effectively, leading to high insulin levels that stimulate androgen production.",
                "Genetic predisposition: A family history of PCOS increases the risk of developing the condition.",
                "Obesity: Excess body weight worsens insulin resistance and hormonal imbalance.",
                "Chronic inflammation: Low-grade inflammation promotes androgen excess.",
                "Lifestyle factors: Poor diet and physical inactivity aggravate metabolic disturbances.",
                "Stress: Chronic stress disrupts the hormonal axis and worsens symptoms.",
                "Early hormonal imbalance: Hormonal issues during adolescence may contribute to PCOS later."
            ],
            symptomsIntro: "Symptoms vary widely among individuals and may develop gradually. Some women present mainly with menstrual issues, while others have metabolic or cosmetic concerns.",
            symptoms: [
                "Irregular or absent periods: Infrequent ovulation leads to delayed or missed menstrual cycles.",
                "Excess hair growth (hirsutism): Increased facial or body hair due to high androgen levels.",
                "Acne and oily skin: Androgen excess stimulates oil glands, causing breakouts.",
                "Weight gain: Difficulty losing weight, especially around the abdomen.",
                "Fertility problems: Irregular ovulation makes conception challenging."
            ],
            diagnosis: "Diagnosis is based on clinical features, hormonal tests, and imaging findings. Early diagnosis helps reduce long-term complications. Medical history and examination assess menstrual patterns, hair growth, acne, and weight. Blood tests measure hormone levels, insulin resistance, and metabolic markers. Pelvic ultrasound shows enlarged ovaries with multiple small follicles.",
            complicationsIntro: "Treatment focuses on symptom management, hormonal balance, and prevention of future health risks. Management is individualized based on symptoms and fertility goals.",
            complications: [
                "Lifestyle modification: Weight loss through diet and exercise improves insulin sensitivity and cycle regularity.",
                "Medications: Hormonal pills regulate periods; metformin improves insulin resistance.",
                "Fertility treatment: Ovulation-inducing medicines help women trying to conceive.",
                "Cosmetic management: Treatments help control acne and excess hair growth.",
                "Long-term monitoring: Regular follow-up reduces risk of diabetes, heart disease, and infertility."
            ]
        )),
        Topic(name: "Menopause", iconName: "sparkles", content: TopicContent(
            overview: "Menopause is a natural biological stage in a woman's life marked by the permanent cessation of menstrual periods, usually occurring between 45–55 years of age. It results from a decline in ovarian function and reduced production of estrogen and progesterone hormones.",
            causesIntro: "Menopause occurs due to age-related changes in the ovaries and hormone production. Certain medical or surgical factors may cause menopause to occur earlier.",
            causes: [
                "Natural aging: Gradual decline in ovarian function reduces hormone production over time.",
                "Decreased estrogen levels: Lower estrogen affects reproductive organs and body systems.",
                "Genetic factors: Family history influences the age of menopause onset.",
                "Surgical removal of ovaries: Oophorectomy causes sudden menopause.",
                "Chemotherapy or radiation: Cancer treatments may damage ovarian function.",
                "Autoimmune conditions: Immune disorders may affect ovarian health.",
                "Smoking: Tobacco use accelerates ovarian aging.",
                "Chronic illness: Certain long-term diseases may influence early menopause."
            ],
            symptomsIntro: "Symptoms vary in severity and duration and may affect physical, emotional, and sexual health. They often begin during the perimenopausal phase.",
            symptoms: [
                "Hot flashes: Sudden feelings of heat with sweating and flushing.",
                "Irregular periods: Cycles become unpredictable before stopping completely.",
                "Mood changes: Anxiety, irritability, or low mood due to hormonal shifts.",
                "Sleep disturbances: Night sweats and insomnia are common complaints.",
                "Vaginal dryness: Reduced estrogen causes dryness and discomfort during intercourse."
            ],
            diagnosis: "Diagnosis is primarily clinical and based on symptoms and menstrual history. Tests may be done to rule out other conditions. Medical history evaluates menstrual pattern and symptoms. Blood tests assess hormone levels such as FSH and estrogen. Clinical assessment confirms menopause after 12 months without periods.",
            complicationsIntro: "Treatment focuses on symptom relief and prevention of long-term health risks. Management is individualized based on symptom severity and health profile.",
            complications: [
                "Lifestyle modification: Healthy diet, exercise, and stress management improve symptoms.",
                "Hormone replacement therapy (HRT): Used to relieve moderate to severe symptoms when appropriate.",
                "Non-hormonal medications: Help manage hot flashes and mood symptoms.",
                "Bone health support: Calcium, vitamin D, and exercise prevent osteoporosis.",
                "Regular follow-up: Monitoring reduces risks of heart disease and bone loss."
            ]
        ))
    ]

    static let gynecologistFAQs = [
        FAQ(question: "What symptoms indicate a gynecological problem?",
            answer: "Irregular periods, heavy bleeding, pelvic pain, abnormal discharge, itching, or pain during intercourse."),
        FAQ(question: "What causes menstrual irregularities?",
            answer: "Hormonal imbalance, stress, thyroid disorders, PCOS, and sudden weight changes are common causes. Certain medications and lifestyle factors may also affect cycles."),
        FAQ(question: "When should I see a gynecologist?",
            answer: "If symptoms persist, periods are very painful or irregular, or for routine check-ups and screenings."),
        FAQ(question: "How are gynecological conditions diagnosed?",
            answer: "Diagnosis may include pelvic exams, ultrasound, Pap smear, blood tests, or hormone evaluation."),
        FAQ(question: "How can gynecological health be maintained?",
            answer: "Regular check-ups, good hygiene, safe practices, balanced nutrition, and timely treatment help maintain health.")
    ]

    // Hematologist Topics and FAQs
    static let hematologistTopics = [
        Topic(name: "Anemia", iconName: "circle.dashed", content: TopicContent(
            overview: "Anemia is a blood disorder in which the body has a reduced number of red blood cells or low hemoglobin levels, leading to decreased oxygen delivery to tissues. This results in fatigue, weakness, and reduced physical capacity.",
            causesIntro: "Anemia can occur due to decreased red blood cell production, increased destruction, or blood loss. Identifying the cause is essential for proper treatment.",
            causes: [
                "Iron deficiency: Lack of iron reduces hemoglobin production, the most common cause of anemia.",
                "Vitamin B12 or folate deficiency: These vitamins are essential for red blood cell formation.",
                "Blood loss: Heavy menstrual bleeding, gastrointestinal bleeding, or injury can cause anemia.",
                "Chronic diseases: Kidney disease, infections, or inflammatory conditions suppress red blood cell production.",
                "Bone marrow disorders: Conditions affecting bone marrow impair blood cell formation.",
                "Genetic disorders: Inherited conditions like thalassemia or sickle cell disease cause abnormal red cells.",
                "Hemolysis: Premature destruction of red blood cells reduces their lifespan.",
                "Poor absorption: Digestive disorders reduce nutrient absorption needed for blood formation."
            ],
            symptomsIntro: "Symptoms vary based on severity and speed of onset and may develop gradually. Mild anemia may go unnoticed initially.",
            symptoms: [
                "Fatigue and weakness: Reduced oxygen supply leads to low energy levels.",
                "Pale skin: Reduced hemoglobin causes pallor of skin and mucous membranes.",
                "Shortness of breath: The body struggles to meet oxygen demands, especially during exertion.",
                "Dizziness or headaches: Reduced oxygen to the brain causes light-headedness.",
                "Rapid heartbeat: The heart works harder to compensate for low oxygen levels."
            ],
            diagnosis: "Diagnosis involves blood tests to confirm anemia and identify its type and cause. Early diagnosis prevents complications. Complete blood count (CBC) measures hemoglobin, red cell count, and size. Iron studies assess iron levels, ferritin, and transferrin saturation. Vitamin level tests detect B12 or folate deficiency.",
            complicationsIntro: "Treatment depends on the underlying cause and severity of anemia. Proper management restores normal blood levels.",
            complications: [
                "Iron supplementation: Oral or injectable iron treats iron-deficiency anemia.",
                "Vitamin replacement: B12 or folate supplements correct nutritional deficiencies.",
                "Treating underlying cause: Managing bleeding or chronic disease improves anemia.",
                "Blood transfusion: Used in severe or life-threatening anemia.",
                "Specialized therapy: Genetic or bone marrow disorders require advanced treatment."
            ]
        )),
        Topic(name: "Leukemia", iconName: "circle.fill", content: TopicContent(
            overview: "Leukemia is a type of blood cancer that originates in the bone marrow and affects the production of white blood cells. These abnormal cells multiply uncontrollably, interfering with normal blood cell formation and immune function.",
            causesIntro: "The exact cause of leukemia is not always known, but it occurs due to genetic changes in blood-forming cells. Certain risk factors increase susceptibility.",
            causes: [
                "Genetic mutations: Abnormal changes in DNA cause uncontrolled growth of white blood cells.",
                "Bone marrow dysfunction: Normal blood cell production is replaced by cancerous cells.",
                "Radiation exposure: High levels of radiation damage bone marrow cells.",
                "Chemical exposure: Long-term exposure to chemicals like benzene increases leukemia risk.",
                "Previous cancer treatment: Chemotherapy or radiation therapy can trigger secondary leukemia.",
                "Genetic disorders: Conditions such as Down syndrome increase susceptibility.",
                "Family history: Rarely, leukemia may run in families.",
                "Weakened immune system: Reduced immune surveillance increases cancer risk."
            ],
            symptomsIntro: "Symptoms vary depending on the type and stage of leukemia and may develop gradually or suddenly. Many symptoms are due to low normal blood cell counts.",
            symptoms: [
                "Persistent fatigue: Reduced red blood cells cause weakness and low energy.",
                "Frequent infections: Abnormal white blood cells weaken immunity.",
                "Easy bruising or bleeding: Low platelet counts lead to bleeding gums or nosebleeds.",
                "Fever or night sweats: Cancer-related inflammation causes temperature disturbances.",
                "Bone or joint pain: Bone marrow expansion causes deep aching pain."
            ],
            diagnosis: "Diagnosis involves blood and bone marrow tests to confirm cancer type and severity. Early diagnosis improves treatment outcomes. Complete blood count (CBC) detects abnormal white blood cells and low red cells or platelets. Bone marrow biopsy confirms leukemia and identifies the specific type. Genetic and molecular tests help guide treatment decisions and prognosis.",
            complicationsIntro: "Treatment depends on the type, stage, and patient's overall health. Advances in therapy have significantly improved survival rates.",
            complications: [
                "Chemotherapy: Kills cancerous blood cells and controls disease progression.",
                "Targeted therapy: Drugs attack specific genetic abnormalities in leukemia cells.",
                "Immunotherapy: Enhances the immune system's ability to fight cancer.",
                "Stem cell transplant: Replaces diseased bone marrow with healthy cells.",
                "Supportive care: Transfusions and infection control manage treatment side effects."
            ]
        )),
        Topic(name: "Lymphoma", iconName: "circle.grid.2x2", content: TopicContent(
            overview: "Lymphoma is a type of blood cancer that begins in the lymphatic system, which is part of the body's immune defense. It occurs when lymphocytes (a type of white blood cell) grow uncontrollably and accumulate in lymph nodes and other organs.",
            causesIntro: "Lymphoma develops due to genetic and immune system changes that cause abnormal lymphocyte growth. Certain risk factors increase susceptibility to the disease.",
            causes: [
                "Genetic mutations: Changes in DNA cause uncontrolled growth of lymphocytes.",
                "Weakened immune system: Immunodeficiency conditions reduce the body's ability to regulate cell growth.",
                "Autoimmune diseases: Chronic immune activation increases lymphoma risk.",
                "Viral infections: Viruses like Epstein–Barr virus are linked to certain lymphomas.",
                "Age-related factors: Risk increases with age for many lymphoma types.",
                "Chemical exposure: Long-term exposure to pesticides or industrial chemicals may raise risk.",
                "Previous cancer treatment: Chemotherapy or radiation can increase secondary lymphoma risk.",
                "Family history: Rarely, genetic predisposition may play a role."
            ],
            symptomsIntro: "Symptoms may develop gradually and vary depending on the type and spread of lymphoma. Early symptoms are often painless.",
            symptoms: [
                "Swollen lymph nodes: Painless swelling in the neck, armpit, or groin.",
                "Persistent fatigue: Cancer-related inflammation causes ongoing tiredness.",
                "Unexplained weight loss: Rapid weight loss without changes in diet or activity.",
                "Fever and night sweats: Recurrent fever or drenching night sweats.",
                "Frequent infections: Impaired immune function increases infection risk."
            ],
            diagnosis: "Diagnosis focuses on identifying abnormal lymphocytes and determining the lymphoma type. Accurate diagnosis guides treatment planning. Physical examination assesses enlarged lymph nodes and organs. Lymph node biopsy confirms lymphoma and identifies subtype. Imaging tests like CT, PET, or MRI scans determine disease spread.",
            complicationsIntro: "Treatment depends on the lymphoma type, stage, and patient health. Many lymphomas are highly treatable with modern therapies.",
            complications: [
                "Chemotherapy: Kills rapidly dividing lymphoma cells.",
                "Immunotherapy: Uses antibodies to target cancer cells.",
                "Targeted therapy: Attacks specific molecular pathways in lymphoma cells.",
                "Radiation therapy: Used in localized disease to destroy cancer cells.",
                "Stem cell transplant: Considered in aggressive or relapsed cases."
            ]
        )),
        Topic(name: "Thrombocytopenia", iconName: "heart.text.square", content: TopicContent(
            overview: "Thrombocytopenia is a blood disorder characterized by a low platelet count, which impairs the blood's ability to clot properly. Platelets are essential for stopping bleeding, and reduced levels increase the risk of bruising and hemorrhage.",
            causesIntro: "Thrombocytopenia occurs due to decreased platelet production, increased destruction, or sequestration of platelets. Identifying the cause is crucial for effective management.",
            causes: [
                "Bone marrow disorders: Conditions like leukemia or aplastic anemia reduce platelet production.",
                "Autoimmune conditions: The immune system destroys platelets, as seen in immune thrombocytopenic purpura (ITP).",
                "Viral infections: Dengue, hepatitis, HIV, and other viruses suppress platelet counts.",
                "Medications: Certain drugs such as chemotherapy agents or antibiotics affect platelet survival.",
                "Chronic liver disease: Enlarged spleen traps platelets, reducing circulating levels.",
                "Nutritional deficiencies: Low vitamin B12 or folate impairs platelet production.",
                "Pregnancy-related causes: Gestational thrombocytopenia may occur in late pregnancy.",
                "Severe infections or sepsis: Systemic infections increase platelet destruction."
            ],
            symptomsIntro: "Symptoms depend on how low the platelet count is and may range from mild to severe. Some individuals may remain asymptomatic.",
            symptoms: [
                "Easy bruising: Minor trauma causes noticeable bruises.",
                "Prolonged bleeding: Cuts or wounds bleed longer than usual.",
                "Petechiae: Small red or purple spots appear on the skin due to bleeding under the skin.",
                "Nosebleeds or gum bleeding: Spontaneous bleeding may occur.",
                "Heavy menstrual bleeding: Excessive flow during periods is common in women."
            ],
            diagnosis: "Diagnosis involves blood tests and evaluation of underlying causes. Early diagnosis helps prevent serious bleeding complications. Complete blood count (CBC) confirms low platelet levels. Peripheral blood smear examines platelet size and shape. Bone marrow examination is performed if marrow disorders are suspected.",
            complicationsIntro: "Treatment depends on severity, cause, and bleeding risk. Mild cases may require monitoring only.",
            complications: [
                "Treating underlying cause: Managing infections or stopping causative drugs restores platelet count.",
                "Medications: Steroids or immunosuppressants reduce immune-mediated platelet destruction.",
                "Platelet transfusion: Used in severe cases or active bleeding.",
                "Immunotherapy: IV immunoglobulin is used in certain autoimmune cases.",
                "Lifestyle precautions: Avoiding injury and blood-thinning drugs reduces bleeding risk."
            ]
        )),
        Topic(name: "Coagulation Disorders", iconName: "drop.fill", content: TopicContent(
            overview: "Coagulation disorders are conditions in which the blood's ability to clot is impaired or excessive, leading to abnormal bleeding or unwanted clot formation. These disorders occur due to defects in clotting factors, platelets, or regulatory mechanisms of the clotting system.",
            causesIntro: "Coagulation disorders may be inherited or acquired and result from imbalance in clotting or anti-clotting factors. The cause determines whether bleeding or clotting predominates.",
            causes: [
                "Inherited clotting factor deficiencies: Genetic absence or dysfunction of clotting factors, such as hemophilia.",
                "Vitamin K deficiency: Vitamin K is essential for clotting factor synthesis in the liver.",
                "Liver disease: The liver produces clotting factors, and damage reduces their production.",
                "Autoimmune disorders: The immune system may destroy clotting factors or platelets.",
                "Medications: Blood thinners or certain drugs interfere with normal clot formation.",
                "Severe infections: Sepsis can disrupt clotting balance and trigger abnormal bleeding or clotting.",
                "Cancer: Malignancies can activate clotting pathways abnormally.",
                "Hormonal factors: Pregnancy or hormone therapy increases clotting risk in some individuals."
            ],
            symptomsIntro: "Symptoms vary depending on whether the disorder causes bleeding or excessive clotting. They may range from mild to life-threatening.",
            symptoms: [
                "Easy bruising: Minor injuries cause noticeable bruises.",
                "Prolonged bleeding: Bleeding lasts longer after cuts, surgery, or dental procedures.",
                "Frequent nose or gum bleeding: Spontaneous bleeding may occur without injury.",
                "Joint or muscle bleeding: Seen in inherited bleeding disorders like hemophilia.",
                "Blood clots: Painful swelling in legs or sudden breathlessness may indicate thrombosis."
            ],
            diagnosis: "Diagnosis involves specialized blood tests to assess clotting pathways and identify underlying defects. Accurate diagnosis is crucial for safe treatment. Coagulation profile tests like PT, aPTT, and INR assess clotting function. Clotting factor assays identify specific factor deficiencies. Genetic testing confirms inherited coagulation disorders when suspected.",
            complicationsIntro: "Treatment is tailored to the specific disorder and aims to restore normal clotting balance. Long-term management may be required.",
            complications: [
                "Clotting factor replacement: Replaces missing factors in inherited bleeding disorders.",
                "Vitamin K supplementation: Corrects vitamin K–related clotting defects.",
                "Blood-thinning medications: Used to prevent harmful clot formation in clotting disorders.",
                "Plasma or blood products: Provide clotting factors during bleeding episodes.",
                "Preventive care: Avoiding trauma and regular monitoring reduce complications."
            ]
        ))
    ]

    static let hematologistFAQs = [
        FAQ(question: "What symptoms suggest a blood disorder?",
            answer: "Fatigue, frequent infections, easy bruising, bleeding, paleness, dizziness, or shortness of breath."),
        FAQ(question: "What causes blood disorders?",
            answer: "Blood disorders may be caused by genetic conditions, nutritional deficiencies, infections, or bone marrow problems. Autoimmune diseases and certain medications can also affect blood cells."),
        FAQ(question: "When should I consult a hematologist?",
            answer: "If blood tests are abnormal or symptoms like anemia, clotting issues, or unexplained bleeding persist."),
        FAQ(question: "How are blood disorders diagnosed?",
            answer: "Diagnosis includes blood counts, peripheral smear, bone marrow tests, and specialized investigations."),
        FAQ(question: "How are blood disorders treated?",
            answer: "Treatment depends on the condition and may include medications, supplements, blood transfusions, or advanced therapies.")
    ]

    // Immunologist Topics and FAQs
    static let immunologistTopics = [
        Topic(name: "Allergic Rhinitis", iconName: "circle.dashed", content: TopicContent(
            overview: "Allergic rhinitis is an allergic condition in which the immune system overreacts to airborne allergens such as pollen, dust, or animal dander. This reaction causes inflammation of the nasal lining, leading to sneezing, nasal congestion, and irritation.",
            causesIntro: "Allergic rhinitis occurs when the immune system identifies harmless substances as threats. Exposure to allergens triggers histamine release.",
            causes: [
                "Pollen: Trees, grasses, and weeds cause seasonal allergies.",
                "House dust mites: Microscopic organisms found in bedding and carpets.",
                "Animal dander: Skin flakes and saliva from pets trigger allergies.",
                "Mold spores: Indoor and outdoor molds provoke allergic reactions.",
                "Environmental pollution: Smoke and pollutants worsen allergic responses."
            ],
            symptomsIntro: "Symptoms may be seasonal or year-round, depending on the allergen exposure. They often worsen on contact with triggers.",
            symptoms: [
                "Sneezing: Repeated sneezing episodes due to nasal irritation.",
                "Runny nose: Clear nasal discharge caused by inflammation.",
                "Nasal congestion: Blocked nose due to swollen nasal passages.",
                "Itchy nose, eyes, or throat: Allergic reaction causes itching and irritation.",
                "Watery or red eyes: Eye involvement is common in allergic rhinitis."
            ],
            diagnosis: "Diagnosis is based on symptom history and allergy testing to identify triggers. Accurate diagnosis helps guide treatment. Clinical history evaluates symptom pattern and exposure history. Physical examination inspects nasal passages for inflammation. Allergy testing with skin prick tests or blood tests identifies specific allergens.",
            complicationsIntro: "Treatment aims to relieve symptoms, control inflammation, and reduce allergen sensitivity. Combination therapy is often effective.",
            complications: [
                "Antihistamines: Reduce sneezing, itching, and runny nose.",
                "Nasal corticosteroids: Decrease nasal inflammation and congestion.",
                "Decongestants: Provide short-term relief from nasal blockage.",
                "Leukotriene inhibitors: Help control allergic inflammation.",
                "Immunotherapy: Allergy shots or tablets reduce long-term sensitivity."
            ]
        )),
        Topic(name: "Asthma", iconName: "circle.fill", content: TopicContent(
            overview: "Asthma is a chronic inflammatory disease of the airways in which the immune system causes airway narrowing, swelling, and excess mucus production. This leads to recurrent breathing difficulty and varies in severity over time.",
            causesIntro: "Asthma develops due to a combination of genetic predisposition and immune system overreaction to environmental triggers. Inflammation plays a central role.",
            causes: [
                "Allergens: Dust mites, pollen, mold, and pet dander trigger immune reactions.",
                "Respiratory infections: Viral infections can initiate or worsen asthma.",
                "Genetic factors: Family history increases asthma risk.",
                "Air pollution: Smoke, pollution, and strong odors irritate airways.",
                "Cold air or exercise: Sudden airway narrowing occurs in sensitive individuals."
            ],
            symptomsIntro: "Symptoms may be mild, moderate, or severe and often worsen during exposure to triggers. They may occur intermittently or persist daily.",
            symptoms: [
                "Shortness of breath: Difficulty breathing due to narrowed airways.",
                "Wheezing: Whistling sound during breathing caused by airway obstruction.",
                "Chest tightness: Sensation of pressure or constriction in the chest.",
                "Chronic cough: Persistent cough, often worse at night or early morning.",
                "Breathing difficulty during exertion: Physical activity may trigger symptoms."
            ],
            diagnosis: "Diagnosis involves assessing symptoms and measuring lung function to confirm airway obstruction. Early diagnosis improves long-term control. Medical history reviews symptom pattern and trigger exposure. Pulmonary function tests with spirometry measure airflow limitation. Bronchodilator response testing confirms reversibility of airway narrowing.",
            complicationsIntro: "Treatment aims to control inflammation, prevent attacks, and maintain normal lung function. Long-term management is essential.",
            complications: [
                "Inhaled corticosteroids: Reduce airway inflammation and prevent symptoms.",
                "Bronchodilators: Relax airway muscles to improve breathing.",
                "Leukotriene modifiers: Control allergic inflammation.",
                "Biologic therapy: Used in severe allergic or eosinophilic asthma.",
                "Asthma action plan: Personalized plan helps manage flare-ups."
            ]
        )),
        Topic(name: "Food Allergy", iconName: "shield.fill", content: TopicContent(
            overview: "Food allergy is an immune-mediated condition in which the body mistakenly identifies certain foods as harmful and triggers an allergic reaction. This reaction can range from mild symptoms to severe, life-threatening responses such as anaphylaxis.",
            causesIntro: "Food allergies occur due to an abnormal immune response to specific food proteins. Certain foods are more commonly associated with allergic reactions.",
            causes: [
                "Immune system hypersensitivity: The immune system produces IgE antibodies against harmless food proteins.",
                "Genetic predisposition: Family history increases susceptibility to food allergies.",
                "Early exposure factors: Early-life feeding practices may influence allergy development.",
                "Common allergenic foods: Milk, eggs, peanuts, tree nuts, shellfish, wheat, soy, and fish.",
                "Gut barrier dysfunction: Increased intestinal permeability allows allergens to enter the bloodstream."
            ],
            symptomsIntro: "Symptoms usually appear within minutes to a few hours after consuming the allergenic food. The severity of symptoms varies between individuals.",
            symptoms: [
                "Skin reactions: Itching, hives, redness, or swelling of the skin.",
                "Gastrointestinal symptoms: Nausea, vomiting, abdominal pain, or diarrhea.",
                "Respiratory symptoms: Wheezing, nasal congestion, or difficulty breathing.",
                "Swelling: Lips, tongue, face, or throat swelling due to immune response.",
                "Anaphylaxis: Severe reaction causing breathing difficulty, low blood pressure, and loss of consciousness."
            ],
            diagnosis: "Accurate diagnosis is essential to avoid unnecessary dietary restrictions and prevent severe reactions. Medical history evaluates symptom timing and food exposure. Skin prick test detects allergic sensitivity to specific foods. Blood tests measure food-specific IgE antibodies. Oral food challenge is gold standard test conducted under medical supervision.",
            complicationsIntro: "There is no permanent cure for food allergy, but proper management helps prevent reactions and complications.",
            complications: [
                "Allergen avoidance: Strict elimination of identified allergenic foods.",
                "Antihistamines: Used for mild allergic symptoms.",
                "Epinephrine injection: Life-saving treatment for anaphylaxis.",
                "Emergency action plan: Helps manage accidental exposure.",
                "Oral immunotherapy: May help build tolerance in selected cases."
            ]
        )),
        Topic(name: "Anaphylaxis", iconName: "cross.case", content: TopicContent(
            overview: "Anaphylaxis is a severe, rapid-onset, life-threatening allergic reaction caused by an extreme immune response to an allergen. It affects multiple organ systems and requires immediate medical treatment.",
            causesIntro: "Anaphylaxis occurs when the immune system releases large amounts of mediators like histamine in response to an allergen.",
            causes: [
                "Food allergens: Peanuts, tree nuts, shellfish, milk, eggs, and other foods.",
                "Insect stings: Bee, wasp, or ant stings commonly trigger reactions.",
                "Medications: Antibiotics, painkillers, and anesthetic drugs may cause anaphylaxis.",
                "Latex exposure: Contact with latex products triggers reactions in sensitive individuals.",
                "Exercise-induced anaphylaxis: Occurs during or after physical activity, sometimes food-dependent."
            ],
            symptomsIntro: "Symptoms usually appear within minutes of exposure and can worsen rapidly. Early recognition is critical to prevent fatal outcomes.",
            symptoms: [
                "Skin symptoms: Hives, itching, flushing, or swelling of face and lips.",
                "Breathing difficulty: Wheezing, throat tightness, hoarseness, or shortness of breath.",
                "Cardiovascular symptoms: Low blood pressure, dizziness, fainting, or collapse.",
                "Gastrointestinal symptoms: Nausea, vomiting, abdominal pain, or diarrhea.",
                "Neurological symptoms: Anxiety, confusion, or loss of consciousness."
            ],
            diagnosis: "Diagnosis is primarily clinical and based on symptoms and exposure history. Tests may help identify the trigger later. Clinical assessment allows rapid recognition of symptoms involving multiple systems. Medical history identifies recent allergen exposure. Blood tests for serum tryptase levels may support diagnosis after the event.",
            complicationsIntro: "Immediate treatment is essential and can be life-saving. Delay in treatment increases risk of death.",
            complications: [
                "Epinephrine injection: First-line and most important treatment for anaphylaxis.",
                "Airway and oxygen support: Ensures adequate breathing and oxygenation.",
                "Antihistamines: Help relieve skin and mild allergic symptoms.",
                "Corticosteroids: Reduce risk of prolonged or delayed reactions.",
                "Emergency observation: Monitoring is needed to detect biphasic reactions."
            ]
        )),
        Topic(name: "Immunodeficiency Disorders", iconName: "staroflife.fill", content: TopicContent(
            overview: "Immunodeficiency disorders are conditions in which the immune system is weakened or fails to function properly, reducing the body's ability to fight infections. These disorders may be present from birth or acquired later in life.",
            causesIntro: "Immunodeficiency may be inherited or acquired due to disease, medication, or environmental factors.",
            causes: [
                "Genetic defects: Inherited conditions affecting immune cell development or function.",
                "HIV infection: The virus directly attacks immune cells, leading to acquired immunodeficiency.",
                "Cancer treatments: Chemotherapy or radiation suppresses immune function.",
                "Chronic diseases: Conditions like diabetes or kidney disease weaken immunity.",
                "Malnutrition: Deficiency of essential nutrients impairs immune defense."
            ],
            symptomsIntro: "Symptoms often relate to frequent, severe, or unusual infections and may worsen over time if untreated.",
            symptoms: [
                "Recurrent infections: Frequent bacterial, viral, or fungal infections that are difficult to treat.",
                "Severe infections: Infections may be more serious and prolonged than usual.",
                "Poor response to treatment: Infections may not improve with standard medications.",
                "Slow wound healing: Delayed recovery due to impaired immune response.",
                "Failure to thrive: Poor growth or weight gain, especially in children."
            ],
            diagnosis: "Diagnosis involves assessing immune system function and identifying underlying causes. Early diagnosis helps prevent serious complications. Blood tests measure immune cell counts and antibody levels. Immunoglobulin levels detect deficiencies in immune proteins. Genetic testing identifies inherited immune disorders when suspected.",
            complicationsIntro: "Treatment aims to strengthen immune defense, prevent infections, and manage underlying causes. Long-term care is often required.",
            complications: [
                "Infection prevention: Prophylactic antibiotics reduce infection risk.",
                "Immunoglobulin replacement therapy: Replaces missing antibodies in selected cases.",
                "Vaccinations: Special immunization schedules protect against preventable infections.",
                "Treatment of underlying disease: Managing HIV or chronic illness improves immunity.",
                "Stem cell transplant: Curative option for some severe inherited disorders."
            ]
        ))
    ]

    static let immunologistFAQs = [
        FAQ(question: "What symptoms indicate an immune system disorder?",
            answer: "Frequent infections, prolonged illness, allergies, autoimmune symptoms, fatigue, or poor wound healing."),
        FAQ(question: "What causes immune system disorders?",
            answer: "Immune disorders may occur due to genetic factors, autoimmune conditions, infections, or environmental triggers. Certain medications and chronic stress can also weaken immunity."),
        FAQ(question: "When should I consult an immunologist?",
            answer: "If you have recurrent infections, severe allergies, or unexplained autoimmune symptoms."),
        FAQ(question: "How are immune disorders diagnosed?",
            answer: "Diagnosis includes blood tests, antibody levels, allergy testing, and immune function assessments."),
        FAQ(question: "How can immune health be supported or improved?",
            answer: "A healthy lifestyle, proper vaccination, managing stress, and appropriate medical treatment help strengthen immunity.")
    ]

    // Nephrologist Topics and FAQs
    static let nephrologistTopics = [
        Topic(name: "Chronic Kidney Disease (CKD)", iconName: "circle.dashed", content: TopicContent(
            overview: "Chronic Kidney Disease is a long-term condition in which the kidneys gradually lose their ability to filter waste, excess fluids, and toxins from the blood. The damage is usually irreversible and progresses over months or years if not properly managed.",
            causesIntro: "CKD develops due to conditions that damage kidney structure or function over time. Early identification of causes helps slow disease progression.",
            causes: [
                "Diabetes: High blood sugar damages kidney blood vessels, the leading cause of CKD.",
                "High blood pressure: Persistent pressure damages kidney filters and reduces function.",
                "Chronic glomerulonephritis: Long-standing inflammation of kidney filters impairs filtration.",
                "Polycystic kidney disease: Genetic disorder causing cyst formation and kidney enlargement.",
                "Repeated kidney infections: Chronic infections lead to scarring and loss of kidney tissue.",
                "Obstruction of urine flow: Kidney stones or prostate enlargement damages kidneys over time.",
                "Long-term medication use: Excessive use of painkillers harms kidney tissue.",
                "Autoimmune diseases: Conditions like lupus can attack kidney structures."
            ],
            symptomsIntro: "Early CKD may have no symptoms, making regular screening important. Symptoms usually appear as kidney function worsens.",
            symptoms: [
                "Fatigue and weakness: Waste buildup reduces energy levels.",
                "Swelling (edema): Fluid retention causes swelling in feet, ankles, or face.",
                "Changes in urination: Increased or decreased urine output or foamy urine.",
                "Shortness of breath: Fluid overload affects lungs and breathing.",
                "Loss of appetite and nausea: Toxin accumulation affects digestion."
            ],
            diagnosis: "Diagnosis focuses on measuring kidney function and identifying underlying causes. Early diagnosis helps prevent complications. Blood tests measure creatinine and estimate glomerular filtration rate (eGFR). Urine tests detect protein or blood in urine indicating kidney damage. Imaging studies with ultrasound or CT scans assess kidney size and structure.",
            complicationsIntro: "Treatment aims to slow disease progression, manage symptoms, and prevent complications. Lifelong monitoring is essential.",
            complications: [
                "Blood pressure and sugar control: Slows further kidney damage.",
                "Dietary modification: Low-salt, low-protein diets reduce kidney workload.",
                "Medications: Control blood pressure, anemia, and electrolyte imbalance.",
                "Dialysis: Required in advanced stages when kidneys fail to function.",
                "Kidney transplant: Best long-term option for end-stage kidney disease."
            ]
        )),
        Topic(name: "Kidney Stones (Renal Calculi)", iconName: "drop.circle.fill", content: TopicContent(
            overview: "Kidney stones are hard mineral and salt deposits that form inside the kidneys when urine becomes concentrated. These stones can vary in size and may cause severe pain when they move through the urinary tract.",
            causesIntro: "Kidney stones develop due to imbalance in urine composition, allowing minerals to crystallize. Certain medical and lifestyle factors increase the risk.",
            causes: [
                "Low fluid intake: Dehydration concentrates urine, promoting stone formation.",
                "High salt intake: Excess sodium increases calcium excretion in urine.",
                "High oxalate foods: Foods like spinach and nuts increase oxalate stone risk.",
                "Excess calcium in urine: Not dietary calcium, but high urinary calcium causes stones.",
                "Family history: Genetic predisposition increases stone formation risk.",
                "Urinary tract infections: Certain infections lead to struvite stone formation.",
                "Obesity: Metabolic changes increase stone-forming substances in urine.",
                "Digestive disorders: Conditions affecting absorption alter urine chemistry."
            ],
            symptomsIntro: "Symptoms depend on the size and location of the stone and usually appear when the stone starts moving.",
            symptoms: [
                "Severe flank pain: Sharp pain radiating from the back to the groin.",
                "Painful urination: Burning sensation as stone passes through urinary tract.",
                "Blood in urine: Pink, red, or brown urine due to irritation.",
                "Nausea and vomiting: Pain triggers gastrointestinal symptoms.",
                "Frequent urination: Constant urge due to bladder irritation."
            ],
            diagnosis: "Diagnosis confirms the presence, size, and location of stones to guide treatment decisions. Urine tests detect blood, infection, and stone-forming substances. Imaging tests with ultrasound or CT scan identify stones accurately. Blood tests assess kidney function and mineral imbalance.",
            complicationsIntro: "Treatment depends on stone size, type, and severity of symptoms. Many small stones pass naturally with supportive care.",
            complications: [
                "Increased fluid intake: Helps flush out small stones naturally.",
                "Pain management: Medications relieve pain during stone passage.",
                "Medical expulsive therapy: Drugs help relax ureters to pass stones.",
                "Shock wave lithotripsy: Breaks stones into smaller fragments.",
                "Surgical procedures: Required for large or obstructing stones."
            ]
        )),
        Topic(name: "Polycystic Kidney Disease (PKD)", iconName: "cross.case", content: TopicContent(
            overview: "Polycystic Kidney Disease is a genetic disorder in which multiple fluid-filled cysts develop in the kidneys, causing them to enlarge and gradually lose function. Over time, PKD can lead to chronic kidney disease and kidney failure.",
            causesIntro: "PKD is primarily an inherited condition caused by genetic mutations that affect normal kidney development. The cysts grow slowly and progressively damage kidney tissue.",
            causes: [
                "Autosomal dominant PKD (ADPKD): The most common form, inherited from one affected parent.",
                "Autosomal recessive PKD (ARPKD): A rare, severe form inherited from both parents.",
                "Genetic mutations: Abnormal genes cause uncontrolled cyst formation in kidneys.",
                "Family history: Having an affected parent greatly increases risk.",
                "Abnormal kidney cell growth: Cells lining kidney tubules multiply abnormally.",
                "Fluid secretion into cysts: Cysts enlarge due to continuous fluid accumulation.",
                "Hormonal influences: Certain hormones may promote cyst growth.",
                "Associated organ cysts: Cysts may also develop in liver and other organs."
            ],
            symptomsIntro: "Symptoms often appear gradually and worsen as cysts enlarge. Early stages may be symptom-free.",
            symptoms: [
                "Abdominal or flank pain: Enlarged kidneys cause persistent back or side pain.",
                "High blood pressure: Common early sign due to kidney involvement.",
                "Blood in urine: Cyst rupture can cause visible blood in urine.",
                "Frequent urinary tract infections: Especially kidney infections.",
                "Progressive kidney failure: Loss of kidney function over time."
            ],
            diagnosis: "Diagnosis focuses on detecting cysts and confirming genetic involvement. Early diagnosis helps slow progression. Ultrasound imaging is primary test to detect kidney cysts. CT or MRI scans provide detailed assessment of cyst size and kidney damage. Genetic testing confirms diagnosis in unclear cases or family screening.",
            complicationsIntro: "There is no cure for PKD, but treatment aims to control symptoms and slow kidney damage. Lifelong management is required.",
            complications: [
                "Blood pressure control: Helps slow kidney disease progression.",
                "Pain management: Medications relieve discomfort caused by cyst growth.",
                "Treatment of infections: Prompt antibiotics for UTIs and kidney infections.",
                "Disease-modifying therapy: Certain drugs slow cyst growth in selected patients.",
                "Advanced care: Dialysis or kidney transplant in end-stage disease."
            ]
        )),
        Topic(name: "Hypertension-Related Kidney Disease", iconName: "waveform.path", content: TopicContent(
            overview: "Hypertension-related kidney disease is a condition in which long-standing high blood pressure damages the blood vessels of the kidneys, reducing their ability to filter waste from the blood. Over time, this damage can lead to chronic kidney disease and kidney failure.",
            causesIntro: "This condition develops when high blood pressure remains uncontrolled for a long period, causing gradual and permanent kidney damage.",
            causes: [
                "Chronic uncontrolled hypertension: Persistent high pressure injures small kidney blood vessels.",
                "Narrowing of renal arteries: Reduced blood supply impairs kidney function.",
                "Increased glomerular pressure: Excess pressure damages filtering units of the kidneys.",
                "Poor blood pressure control: Irregular treatment or medication non-adherence worsens damage.",
                "Diabetes with hypertension: Combined effect accelerates kidney injury.",
                "Smoking: Reduces blood flow and worsens vascular damage.",
                "Obesity: Increases blood pressure and kidney workload.",
                "Genetic susceptibility: Some individuals are more vulnerable to hypertensive damage."
            ],
            symptomsIntro: "Early stages may not cause noticeable symptoms, making regular screening essential. Symptoms appear as kidney damage progresses.",
            symptoms: [
                "Swelling (edema): Fluid retention causes swelling in feet, ankles, or face.",
                "Fatigue: Reduced kidney function leads to toxin buildup and low energy.",
                "Changes in urination: Foamy urine, reduced output, or frequent urination at night.",
                "Poor appetite and nausea: Waste accumulation affects digestion.",
                "Shortness of breath: Fluid overload affects lung function."
            ],
            diagnosis: "Diagnosis focuses on evaluating kidney function and assessing blood pressure-related damage. Early detection helps slow progression. Blood pressure measurement confirms long-term hypertension. Blood tests with creatinine and eGFR assess kidney filtration capacity. Urine tests detect protein leakage indicating kidney damage. Imaging studies with ultrasound evaluate kidney size and structural changes.",
            complicationsIntro: "Treatment aims to control blood pressure and slow further kidney damage. Lifelong management is usually required.",
            complications: [
                "Strict blood pressure control: ACE inhibitors or ARBs protect kidney function.",
                "Dietary modification: Low-salt and kidney-friendly diets reduce strain.",
                "Lifestyle changes: Weight control, exercise, and smoking cessation improve outcomes.",
                "Management of comorbidities: Controlling diabetes and cholesterol slows progression.",
                "Advanced therapy: Dialysis or transplant may be required in end-stage disease."
            ]
        )),
        Topic(name: "Acute Kidney Injury (AKI)", iconName: "circle.fill", content: TopicContent(
            overview: "Acute Kidney Injury is a sudden decline in kidney function occurring over hours to days, leading to accumulation of waste products and imbalance of fluids and electrolytes. Unlike chronic kidney disease, AKI is often reversible if identified and treated early.",
            causesIntro: "AKI occurs when blood flow to the kidneys is reduced, kidney tissue is directly damaged, or urine flow is obstructed. Causes are broadly classified into pre-renal, intrinsic, and post-renal factors.",
            causes: [
                "Dehydration or fluid loss: Severe vomiting, diarrhea, or blood loss reduces kidney blood supply.",
                "Low blood pressure: Shock or heart failure limits blood flow to kidneys.",
                "Severe infections (sepsis): Widespread infection damages kidney function.",
                "Drug toxicity: Certain painkillers, antibiotics, or contrast dyes injure kidney tissue.",
                "Direct kidney injury: Conditions like glomerulonephritis or acute tubular necrosis damage nephrons.",
                "Urinary tract obstruction: Stones, tumors, or enlarged prostate block urine flow.",
                "Major surgery or trauma: Sudden stress and blood loss impair kidney perfusion.",
                "Underlying kidney disease: Existing kidney problems increase AKI risk."
            ],
            symptomsIntro: "Symptoms depend on severity and may appear suddenly. Mild cases may have few symptoms, while severe AKI can be life-threatening.",
            symptoms: [
                "Reduced urine output: Passing less urine than normal or no urine.",
                "Swelling: Fluid retention causes swelling in legs, face, or hands.",
                "Fatigue and confusion: Waste buildup affects energy levels and mental clarity.",
                "Nausea and vomiting: Toxin accumulation irritates the digestive system.",
                "Shortness of breath: Fluid overload affects lungs."
            ],
            diagnosis: "Diagnosis focuses on rapid assessment of kidney function and identifying the cause. Early detection is critical for recovery. Blood tests show rising creatinine and urea indicating impaired kidney filtration. Urine tests assess urine output, protein, blood, or infection. Imaging studies with ultrasound detect obstruction or structural problems. Clinical assessment evaluates hydration status, blood pressure, and medications.",
            complicationsIntro: "Treatment depends on the underlying cause and severity of kidney impairment. Prompt management can restore kidney function.",
            complications: [
                "Fluid management: IV fluids correct dehydration or improve kidney perfusion.",
                "Medication adjustment: Stopping or changing nephrotoxic drugs prevents further damage.",
                "Treating underlying cause: Managing infections, shock, or obstruction is essential.",
                "Electrolyte correction: Balances potassium and acid levels to prevent complications.",
                "Dialysis: Temporary support in severe cases until kidney recovery."
            ]
        ))
    ]

    static let nephrologistFAQs = [
        FAQ(question: "What symptoms indicate kidney problems?",
            answer: "Swelling of feet or face, changes in urine, fatigue, nausea, high blood pressure, or lower back pain."),
        FAQ(question: "What causes kidney disease?",
            answer: "Common causes include diabetes, high blood pressure, infections, and long-term medication use. Genetic conditions and dehydration can also damage kidney function."),
        FAQ(question: "When should I consult a nephrologist?",
            answer: "If you have abnormal kidney tests, persistent swelling, reduced urine output, or uncontrolled blood pressure."),
        FAQ(question: "How are kidney diseases diagnosed?",
            answer: "Diagnosis involves blood and urine tests, imaging studies, and sometimes a kidney biopsy."),
        FAQ(question: "How can kidney disease be prevented or managed?",
            answer: "Managing blood sugar and BP, staying hydrated, avoiding misuse of painkillers, and regular monitoring help protect kidneys.")
    ]

    // Neurologist Topics and FAQs
    static let neurologistTopics = [
        Topic(name: "Migraine", iconName: "bolt.fill", content: TopicContent(
            overview: "Migraine is a chronic neurological disorder characterized by recurrent episodes of moderate to severe headache, often accompanied by nausea, vomiting, and sensitivity to light or sound. It is more than a headache and involves complex brain and nervous system changes.",
            causesIntro: "Migraine occurs due to abnormal brain activity affecting nerve signals, blood vessels, and chemical messengers. These changes lead to pain and associated neurological symptoms.",
            causes: [
                "Trigeminovascular activation: Activation of trigeminal nerves releases inflammatory substances causing pain.",
                "Neurotransmitter imbalance: Changes in serotonin levels affect pain regulation and blood vessels.",
                "Cortical spreading depression: A wave of altered brain activity contributes to aura symptoms.",
                "Inflammation: Neurogenic inflammation sensitizes pain pathways.",
                "Altered pain processing: The brain becomes hypersensitive to normal stimuli.",
                "Inherited predisposition: Migraine often runs in families, increasing lifetime risk.",
                "Ion channel mutations: Genetic changes affect nerve signaling in the brain.",
                "Familial hemiplegic migraine: A rare genetic subtype linked to specific gene mutations."
            ],
            symptomsIntro: "Migraine symptoms vary between individuals and attacks, often progressing through phases.",
            symptoms: [
                "Headache: Moderate to severe pain, often throbbing and on one side of the head.",
                "Nausea and vomiting: Stomach upset commonly accompanies the headache.",
                "Sensitivity: Heightened sensitivity to light (photophobia) and sound (phonophobia).",
                "Aura: Visual disturbances like flashing lights or blind spots before headache.",
                "Fatigue: Tiredness before, during, or after attacks."
            ],
            diagnosis: "Diagnosis is primarily clinical and based on symptom history and pattern recognition. Keeping a headache diary helps identify triggers and patterns. Neurological examination rules out other causes. In some cases, imaging tests like MRI or CT scan may be performed to exclude secondary causes.",
            complicationsIntro: "Migraine complications can affect daily functioning and quality of life, especially when attacks are frequent.",
            complications: [
                "Chronic migraine: Headaches occurring 15 or more days per month.",
                "Medication overuse headache: Rebound pain from frequent painkiller use.",
                "Migraine-associated vertigo: Severe dizziness and balance problems.",
                "Depression and anxiety: Chronic pain increases risk of mood disorders.",
                "Reduced quality of life: Frequent attacks disrupt work, relationships, and daily activities."
            ]
        )),
        Topic(name: "Stroke", iconName: "exclamationmark.triangle.fill", content: TopicContent(
            overview: "A stroke occurs when blood flow to a part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients. This leads to rapid brain cell damage and is a medical emergency requiring immediate treatment.",
            causesIntro: "Strokes are classified based on the underlying cause of disrupted blood flow to the brain.",
            causes: [
                "Ischemic stroke: Caused by blockage of a brain artery due to a blood clot; the most common type.",
                "Hemorrhagic stroke: Occurs when a blood vessel ruptures, causing bleeding into or around the brain.",
                "Transient ischemic attack (TIA): A temporary blockage causing stroke-like symptoms that resolve quickly but warn of future stroke risk.",
                "Atrial fibrillation: Irregular heart rhythm can cause clots that travel to the brain.",
                "High blood pressure: Damages and weakens blood vessels over time.",
                "Diabetes: Accelerates blood vessel damage and increases clot risk.",
                "Smoking: Damages blood vessel lining and increases clotting tendency."
            ],
            symptomsIntro: "Stroke symptoms usually appear suddenly and worsen rapidly. Early recognition is critical for survival and recovery.",
            symptoms: [
                "Sudden weakness or numbness: Typically affects one side of the face, arm, or leg.",
                "Speech difficulty: Slurred speech or inability to understand language.",
                "Vision problems: Sudden loss or blurring of vision in one or both eyes.",
                "Loss of balance: Dizziness, difficulty walking, or coordination problems.",
                "Severe headache: Sudden headache with no known cause, especially in hemorrhagic stroke.",
                "Confusion: Trouble understanding or sudden cognitive impairment."
            ],
            diagnosis: "Diagnosis focuses on rapid confirmation of stroke type to guide urgent treatment decisions including clinical examination to assess neurological function, brain imaging with CT scan or MRI to distinguish ischemic from hemorrhagic stroke, blood tests to evaluate clotting status and glucose, and vascular imaging using CT angiography or Doppler studies to assess blood vessel blockage.",
            complicationsIntro: "Stroke complications depend on the area and severity of brain damage, often requiring long-term rehabilitation.",
            complications: [
                "Paralysis: Weakness or loss of movement on one side of the body.",
                "Speech and swallowing problems: Damage to language and swallowing centers.",
                "Cognitive impairment: Memory loss or difficulty thinking clearly.",
                "Depression: Emotional changes due to brain injury and disability.",
                "Seizures: Increased risk following brain injury.",
                "Recurrent stroke: Risk of future strokes without prevention."
            ]
        )),
        Topic(name: "Parkinson's Disease", iconName: "figure.walk", content: TopicContent(
            overview: "Parkinson's disease is a chronic, progressive neurological disorder that affects movement due to degeneration of nerve cells in the brain. It primarily impacts motor function but can also cause cognitive, emotional, and autonomic symptoms.",
            causesIntro: "The exact cause is unknown, but Parkinson's results from a combination of genetic and environmental factors affecting dopamine-producing neurons.",
            causes: [
                "Dopamine deficiency: Loss of dopamine disrupts smooth and coordinated muscle movements.",
                "Basal ganglia dysfunction: Impaired signaling affects motor control and posture.",
                "Lewy body formation: Abnormal protein deposits (alpha-synuclein) damage neurons.",
                "Neuroinflammation: Chronic inflammation contributes to nerve cell degeneration.",
                "Oxidative stress: Cellular damage accelerates neuronal loss.",
                "Genetic mutations: Certain inherited gene changes increase disease risk.",
                "Age: Risk increases significantly after the age of 60.",
                "Environmental toxins: Pesticides and heavy metals may damage dopamine neurons.",
                "Family history: Having a close relative with Parkinson's increases susceptibility.",
                "Head injury: Repeated trauma may contribute to disease development."
            ],
            symptomsIntro: "Symptoms usually begin gradually and worsen over time. Both motor and non-motor features are common.",
            symptoms: [
                "Tremor: Shaking, often starting in one hand at rest.",
                "Bradykinesia: Slowness of movement affecting daily activities.",
                "Muscle rigidity: Stiffness causing reduced range of motion.",
                "Postural instability: Balance problems and increased risk of falls.",
                "Non-motor symptoms: Depression, sleep problems, constipation, and cognitive decline.",
                "Speech changes: Soft or slurred speech.",
                "Writing changes: Handwriting becomes small and cramped."
            ],
            diagnosis: "Diagnosis is primarily clinical and based on neurological examination. There is no single confirmatory test. Evaluation includes neurological assessment of movement, reflexes, and coordination, detailed medical history to review symptom progression, and imaging studies like MRI or dopamine scans to help rule out other conditions.",
            complicationsIntro: "As the disease progresses, complications may arise affecting independence and health.",
            complications: [
                "Motor fluctuations: Variable response to medications.",
                "Dyskinesia: Involuntary movements due to long-term therapy.",
                "Cognitive decline: Memory and executive function impairment.",
                "Swallowing problems: Increased risk of aspiration.",
                "Autonomic dysfunction: Blood pressure instability and urinary issues.",
                "Falls: Balance problems increase fracture risk.",
                "Social isolation: Communication difficulties affect relationships."
            ]
        )),
        Topic(name: "Alzheimer's Disease", iconName: "brain.head.profile", content: TopicContent(
            overview: "Alzheimer's disease is a progressive neurodegenerative disorder and the most common cause of dementia. It leads to gradual decline in memory, thinking, behavior, and the ability to perform daily activities.",
            causesIntro: "Alzheimer's disease develops due to abnormal protein accumulation in the brain, causing nerve cell damage and brain shrinkage over time.",
            causes: [
                "Amyloid plaque deposition: Beta-amyloid proteins accumulate between nerve cells, disrupting communication.",
                "Neurofibrillary tangles: Abnormal tau protein tangles damage neurons from within.",
                "Neuronal loss: Progressive death of brain cells leads to brain atrophy.",
                "Neurotransmitter deficiency: Reduced acetylcholine affects memory and learning.",
                "Neuroinflammation: Chronic inflammation accelerates brain damage.",
                "Age: Risk increases significantly after 65 years.",
                "Genetic factors: APOE-ε4 gene increases susceptibility.",
                "Family history: First-degree relatives raise disease risk.",
                "Head injury: Repeated or severe trauma increases long-term risk.",
                "Cardiovascular disease: Hypertension, diabetes, and obesity affect brain health."
            ],
            symptomsIntro: "Symptoms develop gradually and worsen over time, affecting cognitive, emotional, and functional abilities.",
            symptoms: [
                "Memory loss: Difficulty remembering recent events or conversations.",
                "Confusion: Disorientation to time, place, or familiar surroundings.",
                "Language problems: Difficulty finding words or following conversations.",
                "Behavioral changes: Mood swings, irritability, anxiety, or depression.",
                "Loss of daily skills: Difficulty managing finances, hygiene, or self-care.",
                "Poor judgment: Making inappropriate decisions or unable to recognize danger.",
                "Wandering: Getting lost in familiar places."
            ],
            diagnosis: "Diagnosis involves clinical assessment and tests to rule out other causes of dementia including cognitive testing to assess memory, reasoning, and problem-solving ability, medical history and examination to evaluate symptom progression and functional decline, brain imaging with MRI or CT scans to show brain atrophy, and laboratory tests to exclude metabolic or vitamin deficiencies.",
            complicationsIntro: "As the disease progresses, patients become increasingly dependent and vulnerable to various health risks.",
            complications: [
                "Severe cognitive decline: Loss of recognition of family members.",
                "Infections: Increased risk of pneumonia and urinary infections.",
                "Falls and injuries: Poor coordination and judgment increase fall risk.",
                "Malnutrition: Difficulty eating and swallowing.",
                "Complete dependency: Requires full-time care in advanced stages.",
                "Caregiver burden: Significant emotional and physical strain on family.",
                "Wandering and safety risks: Patients may get lost or injured."
            ]
        )),
        Topic(name: "Multiple Sclerosis (MS)", iconName: "circle.dashed", content: TopicContent(
            overview: "Multiple sclerosis is a chronic autoimmune neurological disorder in which the immune system attacks the protective myelin sheath covering nerve fibers in the central nervous system. This damage disrupts communication between the brain and the rest of the body, leading to neurological symptoms.",
            causesIntro: "The exact cause of MS is unknown, but genetic and environmental factors contribute to immune-mediated damage.",
            causes: [
                "Autoimmune attack: Immune cells mistakenly target myelin, causing inflammation.",
                "Demyelination: Loss of myelin slows or blocks nerve signal transmission.",
                "Axonal damage: Repeated attacks damage nerve fibers themselves.",
                "Plaque formation: Areas of damage form lesions in the brain and spinal cord.",
                "Neurodegeneration: Progressive nerve loss leads to disability.",
                "Genetic susceptibility: Certain genes increase the risk of developing MS.",
                "Vitamin D deficiency: Low levels are linked to increased disease risk.",
                "Viral infections: Epstein-Barr virus is associated with MS development.",
                "Geographical factors: Higher prevalence in regions farther from the equator.",
                "Smoking: Increases risk and worsens disease progression."
            ],
            symptomsIntro: "Symptoms vary widely and may appear suddenly or gradually. They often occur in episodes (relapses).",
            symptoms: [
                "Vision problems: Blurred or double vision due to optic nerve involvement.",
                "Muscle weakness: Reduced strength in limbs.",
                "Numbness or tingling: Sensory disturbances in arms or legs.",
                "Balance and coordination issues: Difficulty walking or frequent falls.",
                "Fatigue: Persistent and severe tiredness unrelated to activity.",
                "Bladder problems: Urgency, frequency, or incontinence.",
                "Cognitive changes: Difficulty concentrating or memory problems.",
                "Emotional changes: Mood swings or depression."
            ],
            diagnosis: "Diagnosis requires evidence of lesions occurring at different times and locations in the CNS including neurological examination to assess reflexes, strength, and coordination, MRI imaging to detect demyelinating lesions in brain and spinal cord, lumbar puncture to identify inflammatory markers in cerebrospinal fluid, and evoked potentials to measure nerve response to stimuli.",
            complicationsIntro: "Long-term MS may lead to progressive disability and reduced independence despite treatment.",
            complications: [
                "Mobility impairment: Difficulty walking or need for assistive devices.",
                "Bladder and bowel dysfunction: Common due to nerve involvement.",
                "Cognitive changes: Memory and attention problems.",
                "Depression: Emotional impact of chronic disease.",
                "Secondary infections: Due to immobility or bladder issues.",
                "Spasticity: Stiffness and muscle spasms.",
                "Employment challenges: Symptoms may affect work ability."
            ]
        ))
    ]

    static let neurologistFAQs = [
        FAQ(question: "What symptoms indicate a neurological disorder?",
            answer: "Headaches, seizures, dizziness, numbness, weakness, tremors, memory problems, or difficulty speaking."),
        FAQ(question: "What causes neurological disorders?",
            answer: "Causes include infections, stroke, head injury, genetic conditions, or degeneration of the nervous system. Metabolic disorders and autoimmune diseases may also affect nerve function."),
        FAQ(question: "When should I consult a neurologist?",
            answer: "If symptoms are persistent, worsening, or sudden, such as seizures, paralysis, or loss of consciousness."),
        FAQ(question: "How are neurological conditions diagnosed?",
            answer: "Diagnosis may involve neurological exams, imaging scans, EEG, nerve studies, and blood tests."),
        FAQ(question: "How are neurological disorders treated?",
            answer: "Treatment depends on the condition and may include medications, rehabilitation therapy, or surgical intervention.")
    ]

    // Oncologist Topics and FAQs
    static let oncologistTopics = [
        Topic(name: "Tumors", iconName: "circle.dashed", content: nil),
        Topic(name: "Chemotherapy", iconName: "cross.case", content: nil),
        Topic(name: "Radiation", iconName: "circle.fill", content: nil),
        Topic(name: "Biopsy", iconName: "exclamationmark.circle", content: nil),
        Topic(name: "Screening", iconName: "staroflife.fill", content: nil)
    ]

    static let oncologistFAQs = [
        FAQ(question: "What are common warning signs of cancer?",
            answer: "Unexplained weight loss, persistent pain, unusual lumps, fatigue, abnormal bleeding, or non-healing wounds."),
        FAQ(question: "What causes cancer?",
            answer: "Cancer develops due to genetic mutations caused by lifestyle factors, infections, environmental exposure, or heredity. Smoking, alcohol, poor diet, and radiation increase risk."),
        FAQ(question: "When should I consult an oncologist?",
            answer: "If tests suggest cancer, symptoms persist, or you need expert guidance for cancer diagnosis or treatment."),
        FAQ(question: "How is cancer diagnosed?",
            answer: "Diagnosis includes imaging tests, blood tests, biopsies, and pathological evaluation."),
        FAQ(question: "What treatment options are available for cancer?",
            answer: "Treatment may include surgery, chemotherapy, radiation therapy, immunotherapy, or targeted therapy.")
    ]

    // Ophthalmologist Topics and FAQs
    static let ophthalmologistTopics = [
        Topic(name: "Vision", iconName: "circle.dashed", content: nil),
        Topic(name: "Eyes", iconName: "circle.fill", content: nil),
        Topic(name: "Glasses", iconName: "eyeglasses", content: nil),
        Topic(name: "Surgery", iconName: "cross.case", content: nil),
        Topic(name: "Retina", iconName: "eye", content: nil)
    ]

    static let ophthalmologistFAQs = [
        FAQ(question: "What symptoms indicate eye problems?",
            answer: "Blurred vision, eye pain, redness, watering, itching, headaches, or difficulty seeing clearly."),
        FAQ(question: "What causes vision problems?",
            answer: "Vision issues may be caused by refractive errors, infections, aging changes, or prolonged screen exposure. Conditions like diabetes and high blood pressure can also affect eye health."),
        FAQ(question: "When should I consult an ophthalmologist?",
            answer: "If you experience sudden vision changes, eye pain, injury, or for routine eye examinations."),
        FAQ(question: "How are eye conditions diagnosed?",
            answer: "Diagnosis includes vision testing, eye pressure measurement, retinal examination, and imaging if required."),
        FAQ(question: "How can eye health be maintained or protected?",
            answer: "Regular eye check-ups, proper screen breaks, protective eyewear, and managing chronic diseases support eye health.")
    ]

    // Orthopedist Topics and FAQs
    static let orthopedistTopics = [
        Topic(name: "Bones", iconName: "circle.dashed", content: nil),
        Topic(name: "Joints", iconName: "circle.fill", content: nil),
        Topic(name: "Muscles", iconName: "oval", content: nil),
        Topic(name: "Sports Injury", iconName: "exclamationmark.circle", content: nil),
        Topic(name: "Arthritis", iconName: "figure.walk", content: nil)
    ]

    static let orthopedistFAQs = [
        FAQ(question: "What symptoms indicate bone or joint problems?",
            answer: "Joint pain, stiffness, swelling, reduced movement, deformity, or difficulty walking."),
        FAQ(question: "What causes bone and joint disorders?",
            answer: "Causes include injuries, arthritis, osteoporosis, poor posture, or repetitive strain. Aging, obesity, and nutritional deficiencies can worsen joint and bone health."),
        FAQ(question: "When should I consult an orthopedist?",
            answer: "If pain, stiffness, or injury persists, limits movement, or does not improve with rest or medication."),
        FAQ(question: "How are orthopedic conditions diagnosed?",
            answer: "Diagnosis may involve physical examination, X-rays, MRI, CT scans, or blood tests."),
        FAQ(question: "How can bone and joint health be maintained?",
            answer: "Regular exercise, proper posture, adequate calcium and vitamin D intake, and injury prevention help maintain health.")
    ]

    // Pediatrician Topics and FAQs
    static let pediatricianTopics = [
        Topic(name: "Growth", iconName: "circle.dashed", content: nil),
        Topic(name: "Vaccines", iconName: "cross.case", content: nil),
        Topic(name: "Nutrition", iconName: "circle.fill", content: nil),
        Topic(name: "Development", iconName: "figure.child", content: nil),
        Topic(name: "Health", iconName: "heart.fill", content: nil)
    ]

    static let pediatricianFAQs = [
        FAQ(question: "What symptoms indicate a child needs medical attention?",
            answer: "Persistent fever, cough, vomiting, diarrhea, poor feeding, lethargy, or unusual behavior."),
        FAQ(question: "What are common causes of illness in children?",
            answer: "Infections, nutritional deficiencies, allergies, and poor hygiene are common causes. Immature immunity and exposure at school also increase illness risk."),
        FAQ(question: "When should I consult a pediatrician?",
            answer: "For routine check-ups, vaccinations, growth concerns, or if symptoms persist or worsen."),
        FAQ(question: "How can childhood illnesses be prevented?",
            answer: "Timely vaccinations, proper nutrition, good hygiene, and regular health check-ups help prevent illness."),
        FAQ(question: "How is a child's growth and development monitored?",
            answer: "Pediatricians assess height, weight, milestones, nutrition, and overall development during regular visits.")
    ]

    // Psychiatrist Topics and FAQs
    static let psychiatristTopics = [
        Topic(name: "Mental Health", iconName: "circle.dashed", content: nil),
        Topic(name: "Anxiety", iconName: "circle.fill", content: nil),
        Topic(name: "Depression", iconName: "exclamationmark.circle", content: nil),
        Topic(name: "Therapy", iconName: "cross.case", content: nil),
        Topic(name: "Stress", iconName: "brain.head.profile", content: nil)
    ]

    static let psychiatristFAQs = [
        FAQ(question: "What symptoms indicate a mental health disorder?",
            answer: "Persistent sadness, anxiety, mood changes, sleep issues, loss of interest, or difficulty concentrating."),
        FAQ(question: "What causes mental health conditions?",
            answer: "Mental illnesses arise from a combination of brain chemistry, genetics, trauma, and life stressors. Substance use and medical conditions may also contribute."),
        FAQ(question: "When should I consult a psychiatrist?",
            answer: "If emotional or behavioral symptoms persist, worsen, or interfere with daily functioning."),
        FAQ(question: "How are mental health disorders diagnosed?",
            answer: "Diagnosis involves clinical interviews, psychological assessment, and evaluation of symptoms and history."),
        FAQ(question: "How are mental health conditions treated?",
            answer: "Treatment may include medications, psychotherapy, lifestyle changes, and ongoing monitoring.")
    ]

    // Ayurveda Specialist Topics and FAQs
    static let ayurvedaTopics = [
        Topic(name: "Doshas", iconName: "circle.dashed", content: nil),
        Topic(name: "Herbs", iconName: "leaf.fill", content: nil),
        Topic(name: "Lifestyle", iconName: "figure.walk", content: nil),
        Topic(name: "Wellness", iconName: "heart.fill", content: nil),
        Topic(name: "Balance", iconName: "staroflife.fill", content: nil)
    ]

    static let ayurvedaFAQs = [
        FAQ(question: "What symptoms indicate the need for Ayurvedic consultation?",
            answer: "Chronic digestive issues, stress, fatigue, joint pain, skin problems, or lifestyle-related disorders."),
        FAQ(question: "What causes disease according to Ayurveda?",
            answer: "Disease occurs due to imbalance of the doshas—Vata, Pitta, and Kapha. Improper diet, lifestyle, and stress disturb this natural balance."),
        FAQ(question: "When should I consult an Ayurveda specialist?",
            answer: "For chronic conditions, preventive care, lifestyle correction, or when seeking holistic treatment."),
        FAQ(question: "How are health conditions diagnosed in Ayurveda?",
            answer: "Diagnosis is based on dosha assessment, pulse examination, medical history, and symptom evaluation."),
        FAQ(question: "How does Ayurveda help in prevention and treatment?",
            answer: "Ayurveda focuses on balancing doshas through diet, herbs, therapies, and lifestyle modification.")
    ]

    // Default topics and FAQs for other specialists
    static let defaultTopics = [
        Topic(name: "Acne", iconName: "face.dashed", content: nil),
        Topic(name: "Eczema", iconName: "hand.raised", content: nil),
        Topic(name: "Psoriasis", iconName: "flame", content: nil),
        Topic(name: "Skin cancer", iconName: "sun.max.fill", content: nil),
        Topic(name: "Dermatitis", iconName: "hand.raised.slash", content: nil)
    ]

    static let defaultFAQs = [
        FAQ(question: "How can I prevent acne breakouts?", answer: "Clean your face twice a day, avoid touching your face, and use non-comedogenic products."),
        FAQ(question: "What are the common causes of skin rashes?", answer: "Allergies, irritants, genetic factors, and certain diseases can cause skin rashes."),
        FAQ(question: "How can I protect my skin from sun damage?", answer: "Sun protection measures include wearing sunscreen with SPF 30 or higher, seeking shade, wearing protective clothing, including hats and sunglasses, and avoiding sun exposure during peak hours."),
        FAQ(question: "What are the signs of skin cancer?", answer: "Look for changes in moles, new growths, or sores that don't heal."),
        FAQ(question: "How can I treat dry skin?", answer: "Use gentle cleansers, moisturize regularly, and avoid hot showers.")
    ]

    static let specialists = [
        Specialist(name: "Ayurveda Specialist", iconName: "leaf", topics: ayurvedaTopics, faqs: ayurvedaFAQs),
        Specialist(name: "Cardiologist", iconName: "heart.fill", topics: cardiologistTopics, faqs: cardiologistFAQs),
        Specialist(name: "Dental", iconName: "mouth", topics: dentalTopics, faqs: dentalFAQs),
        Specialist(name: "Dermatologist", iconName: "face.smiling", topics: defaultTopics, faqs: defaultFAQs),
        Specialist(name: "Endocrinologist", iconName: "cross.case", topics: endocrinologistTopics, faqs: endocrinologistFAQs),
        Specialist(name: "Gastroenterologist", iconName: "pills", topics: gastroenterologistTopics, faqs: gastroenterologistFAQs),
        Specialist(name: "Gynecologist", iconName: "figure.stand.dress", topics: gynecologistTopics, faqs: gynecologistFAQs),
        Specialist(name: "Hematologist", iconName: "drop.fill", topics: hematologistTopics, faqs: hematologistFAQs),
        Specialist(name: "Immunologist", iconName: "shield.fill", topics: immunologistTopics, faqs: immunologistFAQs),
        Specialist(name: "Nephrologist", iconName: "ivfluid.bag", topics: nephrologistTopics, faqs: nephrologistFAQs),
        Specialist(name: "Neurologist", iconName: "brain", topics: neurologistTopics, faqs: neurologistFAQs),
        Specialist(name: "Oncologist", iconName: "bandage", topics: oncologistTopics, faqs: oncologistFAQs),
        Specialist(name: "Ophthalmologist", iconName: "eye", topics: ophthalmologistTopics, faqs: ophthalmologistFAQs),
        Specialist(name: "Orthopedist", iconName: "figure.walk", topics: orthopedistTopics, faqs: orthopedistFAQs),
        Specialist(name: "Pediatrician", iconName: "figure.child", topics: pediatricianTopics, faqs: pediatricianFAQs),
        Specialist(name: "Psychiatrist", iconName: "person.fill.questionmark", topics: psychiatristTopics, faqs: psychiatristFAQs)
    ]
}

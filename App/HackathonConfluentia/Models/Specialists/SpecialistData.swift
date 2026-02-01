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
            ],
            images: ["cad1", "cad2"]
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
            ],
            images: ["ht1", "ht2"]
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
            ],
            images: ["hf1", "hf2"]
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
            ],
            images: ["arrhythmia1", "arrhythmia2"]
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
            ],
            images: ["ha1", "ha2"]
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
            ],
            images: ["td1", "td2"]
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
            ],
            images: ["gd1", "gd2"]
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
            ],
            images: ["oh1", "oh2"]
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
            ],
            images: ["di1", "di2"]
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
            ],
            images: ["ortho1", "ortho2"]
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
            complications: nil,
            images: ["diabetes1", "diabetes2"]
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
            ],
            images: ["thyroid disorders1", "thyroid disorders2"]
        )),
        Topic(name: "Osteoporosis", iconName: "figure.stand", content: TopicContent(
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
            ],
            images: ["osteoporosis1", "osteoporosis2"]
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
            ],
            images: ["pcos1", "pcos2"]
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
            ],
            images: ["adrenal disorder1", "adrenal disorder2"]
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
            ],
            images: ["gastroenterologist acid reflux", "gastroenterologist acid reflux2"]
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
            ],
            images: ["irritable bowl syndrome1", "irritable bowl syndrome2"]
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
            ],
            images: ["crohns disease1", "crohns disease2"]
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
            ],
            images: ["ulcerative colitis1", "ulcerative colitis2"]
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
            ],
            images: ["hepatitis1", "hepatitis2"]
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
            ],
            images: ["anaemia1", "anaemia2"]
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
            ],
            images: ["leukemia1", "leukemia2"]
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
            ],
            images: ["lymphoma1", "lymphoma2"]
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
            ],
            images: ["thrombocytopenia1", "thrombocytopenia2"]
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
            ],
            images: ["coagulation disorder1", "coagulation disorder2"]
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
            ],
            images: ["allergic rhinitis1", "allergic rhinitis2"]
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
            ],
            images: ["asthma1", "asthma2"]
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
            ],
            images: ["food allergy1", "food allergy2"]
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
            ],
            images: ["anaphylaxis1", "anaphylaxis2"]
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
            ],
            images: ["immunodeficiency disorders1", "immunodeficiency disorders2"]
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
            ],
            images: ["chronic kidney disorder1", "chronic kidney disorder2"]
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
            ],
            images: ["kidney stone1", "kidney stone2"]
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
            ],
            images: ["polycystic kidney disease1", "polycystic kidney disease2"]
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
            ],
            images: ["hypertension related kidney disease1", "hypertension related kidney disease2"]
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
            ],
            images: ["acute kidney injury1", "acute kidney injury2"]
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
            ],
            images: ["migraine1", "migraine2"]
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
            ],
            images: ["stroke1", "stroke2"]
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
            ],
            images: ["parkinson disease1", "parkinson disease2"]
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
            ],
            images: ["alzheimer disease1", "alzheimer disease2"]
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
            ],
            images: ["multiple sclerosis1", "multiple sclerosis2"]
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

    // Ophthalmologist Topics and FAQs
    static let ophthalmologistTopics = [
        Topic(name: "Cataracts", iconName: "eye.fill", content: TopicContent(
            overview: "A cataract is a condition in which the eye's natural lens becomes cloudy, leading to gradual loss of clear vision. It commonly develops with age and can interfere with daily activities if left untreated.",
            causesIntro: "Cataracts develop due to structural changes in the lens proteins, often influenced by aging and other medical or environmental factors.",
            causes: [
                "Aging: Natural aging causes lens proteins to clump together, leading to gradual clouding.",
                "Diabetes: Elevated blood sugar alters lens metabolism, accelerating cataract formation.",
                "Excessive sun exposure: Long-term ultraviolet exposure damages lens proteins and promotes clouding.",
                "Eye injury or trauma: Injury disrupts lens structure, causing early cataract development.",
                "Long-term steroid use: Prolonged corticosteroid therapy interferes with normal lens clarity.",
                "Smoking: Tobacco increases oxidative stress, speeding up lens degeneration.",
                "Genetic factors: Family history increases susceptibility to early cataract formation.",
                "Congenital causes: Infections or genetic issues during pregnancy can cause cataracts at birth."
            ],
            symptomsIntro: "Symptoms usually progress slowly and worsen over time, affecting visual clarity and comfort.",
            symptoms: [
                "Blurred or cloudy vision: Objects appear hazy or less sharp than normal.",
                "Increased glare: Bright lights cause discomfort and reduced visibility, especially at night.",
                "Poor night vision: Difficulty seeing in dim lighting or while driving at night.",
                "Faded or yellowed colors: Colors lose brightness and appear dull.",
                "Frequent change in glasses: Vision keeps changing as cataracts progress."
            ],
            diagnosis: "Cataracts are diagnosed through a detailed eye examination by an ophthalmologist. Tests include visual acuity test to measure the sharpness of vision for near and distance tasks, slit-lamp examination to allow detailed assessment of lens clouding and cataract type, dilated eye examination to enable thorough evaluation of the lens and retina, and retinal examination to rule out other eye diseases contributing to vision loss.",
            complicationsIntro: "If untreated, cataracts can significantly impact quality of life and lead to vision impairment. Early detection and treatment can restore vision.",
            complications: [
                "Vision loss: Progressive clouding leads to significant visual impairment.",
                "Increased fall risk: Poor vision increases risk of accidents, especially in elderly.",
                "Driving difficulties: Glare and blurred vision make driving dangerous.",
                "Surgical complications: Cataract surgery carries small risk of infection or retinal detachment.",
                "Posterior capsule opacity: Clouding may return after surgery, requiring laser treatment."
            ],
            images: ["cataract1", "cataract2"]
        )),
        Topic(name: "Glaucoma", iconName: "eye.circle.fill", content: TopicContent(
            overview: "Glaucoma is a group of eye conditions that damage the optic nerve, usually due to increased pressure inside the eye. If left untreated, it can lead to progressive and irreversible vision loss.",
            causesIntro: "Glaucoma occurs when the fluid (aqueous humor) inside the eye does not drain properly, leading to increased intraocular pressure and optic nerve damage.",
            causes: [
                "Increased eye pressure: Poor drainage of eye fluid raises pressure, damaging the optic nerve over time.",
                "Blocked drainage channels: Obstruction in the eye's drainage angle prevents normal fluid outflow.",
                "Genetic predisposition: Family history significantly increases the risk of developing glaucoma.",
                "Age-related changes: Risk increases with advancing age due to reduced drainage efficiency.",
                "Eye injuries: Trauma can disrupt fluid flow and increase eye pressure.",
                "Long-term steroid use: Prolonged steroid use raises intraocular pressure in some individuals.",
                "Medical conditions: Diabetes, hypertension, and heart disease increase glaucoma risk.",
                "Thin cornea: Structural eye variations may predispose to optic nerve damage."
            ],
            symptomsIntro: "Symptoms depend on the type of glaucoma and often go unnoticed in early stages, earning it the nickname 'silent thief of sight'.",
            symptoms: [
                "Gradual vision loss: Peripheral (side) vision is affected first in open-angle glaucoma.",
                "Tunnel vision: Advanced disease narrows the visual field significantly.",
                "Eye pain: Sudden severe pain occurs in angle-closure glaucoma.",
                "Blurred vision: Pressure changes affect visual clarity.",
                "Halos around lights: Especially noticeable in low-light conditions.",
                "Nausea and vomiting: Associated with acute angle-closure glaucoma."
            ],
            diagnosis: "Early diagnosis is critical, as vision loss from glaucoma is irreversible. Tests include intraocular pressure measurement using tonometry to measure pressure inside the eye, optic nerve examination using ophthalmoscopy to assess nerve damage, visual field testing to detect peripheral vision loss, gonioscopy to examine the drainage angle of the eye, and optical coherence tomography (OCT) to measure optic nerve fiber thickness.",
            complicationsIntro: "Glaucoma is a leading cause of irreversible blindness worldwide. Without treatment, it progressively damages the optic nerve and leads to permanent vision loss.",
            complications: [
                "Permanent vision loss: Optic nerve damage cannot be reversed.",
                "Blindness: Advanced glaucoma can cause complete loss of vision.",
                "Reduced quality of life: Vision impairment affects independence and daily activities.",
                "Side effects of treatment: Eye drops may cause redness, irritation, or systemic side effects.",
                "Surgical complications: Glaucoma surgery carries risk of infection, bleeding, or vision loss."
            ],
            images: ["glaucoma1", "glaucoma2"]
        )),
        Topic(name: "Macular Degeneration", iconName: "eye.circle", content: TopicContent(
            overview: "Macular degeneration is an eye disease that affects the macula, the central part of the retina responsible for sharp, detailed vision. It leads to gradual loss of central vision, making tasks like reading and recognizing faces difficult.",
            causesIntro: "Macular degeneration occurs due to damage or degeneration of retinal cells in the macula. Aging and vascular changes play a major role.",
            causes: [
                "Age-related changes: Aging leads to gradual breakdown of macular cells and supporting tissues.",
                "Reduced blood supply: Poor circulation deprives the macula of oxygen and nutrients.",
                "Oxidative stress: Free radical damage accelerates retinal cell degeneration.",
                "Genetic predisposition: Family history increases the risk of developing the condition.",
                "Smoking: Tobacco use significantly accelerates macular damage.",
                "Poor nutrition: Low intake of antioxidants affects retinal health.",
                "Cardiovascular disease: Hypertension and cholesterol affect retinal blood vessels.",
                "Excessive sun exposure: UV and blue light damage retinal cells over time."
            ],
            symptomsIntro: "Symptoms usually develop gradually and primarily affect central vision, which is crucial for detailed visual tasks.",
            symptoms: [
                "Blurred central vision: Difficulty seeing fine details clearly.",
                "Distorted vision: Straight lines may appear wavy or bent.",
                "Dark or empty spots: Blind spots develop in the center of vision.",
                "Difficulty reading: Trouble recognizing words or small print.",
                "Poor color perception: Colors appear dull or less vibrant."
            ],
            diagnosis: "Diagnosis involves detailed retinal examination and imaging tests to assess macular health. Tests include visual acuity test to measure sharpness of central vision, dilated eye examination to allow detailed view of the macula and retina, Amsler grid test to detect visual distortion and blind spots, optical coherence tomography (OCT) to provide cross-sectional images of the retina, and fluorescein angiography to identify abnormal blood vessel leakage in wet AMD.",
            complicationsIntro: "Macular degeneration is a leading cause of central vision loss in older adults. The wet form can progress rapidly and cause severe vision impairment.",
            complications: [
                "Central vision loss: Inability to see fine details, read, or recognize faces.",
                "Legal blindness: Advanced AMD can meet criteria for legal blindness.",
                "Depression: Vision loss significantly impacts mental health and independence.",
                "Falls and injuries: Poor central vision increases accident risk.",
                "Treatment side effects: Anti-VEGF injections may cause eye pain or rare serious complications."
            ],
            images: ["macular degeneration1", "macular degeneration2"]
        )),
        Topic(name: "Refractive Errors", iconName: "eyeglasses", content: TopicContent(
            overview: "Refractive errors are vision problems that occur when the eye cannot properly focus light onto the retina. This results in blurred vision and difficulty seeing clearly at near, far, or both distances.",
            causesIntro: "Refractive errors occur due to abnormalities in the shape of the eye or changes in the lens' focusing ability.",
            causes: [
                "Abnormal eye length: An eye that is too long or too short affects how light focuses on the retina.",
                "Irregular corneal shape: Uneven curvature of the cornea causes distorted vision.",
                "Lens flexibility changes: Aging reduces the lens's ability to focus on near objects.",
                "Genetic factors: Family history increases the likelihood of refractive errors.",
                "Excessive near work: Prolonged screen use may contribute to eye strain and myopia progression.",
                "Poor lighting conditions: Straining eyes in low light may worsen symptoms.",
                "Eye injury or surgery: Structural changes can alter focusing ability.",
                "Systemic conditions: Diabetes can temporarily change refractive power."
            ],
            symptomsIntro: "Symptoms vary depending on the type and severity of refractive error and may worsen with eye strain or prolonged visual tasks.",
            symptoms: [
                "Blurred vision: Difficulty seeing clearly at near, far, or both distances.",
                "Eye strain: Discomfort or fatigue after prolonged visual tasks.",
                "Headaches: Common after reading or screen use.",
                "Squinting: Attempt to improve focus temporarily.",
                "Difficulty night driving: Reduced clarity and increased glare."
            ],
            diagnosis: "Diagnosis is done through a comprehensive eye examination by an ophthalmologist or optometrist. Tests include visual acuity test to measure clarity of vision at different distances, refraction test to determine exact lens power needed for correction, retinoscopy to assess how light reflects from the retina, and eye health examination to rule out other eye diseases affecting vision.",
            complicationsIntro: "Uncorrected refractive errors can significantly impact daily activities, academic performance in children, and work productivity. Proper correction is essential for optimal vision.",
            complications: [
                "Academic difficulties: Poor vision in children affects learning and school performance.",
                "Reduced productivity: Blurred vision impairs work efficiency and safety.",
                "Eye strain: Prolonged uncorrected vision causes chronic discomfort and fatigue.",
                "Headaches: Straining to see causes tension headaches and migraines.",
                "Surgical risks: LASIK and refractive surgery carry small risk of complications or dissatisfaction."
            ],
            images: ["refractive error1", "refractive error2"]
        )),
        Topic(name: "Eye Infections", iconName: "eye.slash.fill", content: TopicContent(
            overview: "Eye infections occur when bacteria, viruses, fungi, or parasites infect different parts of the eye such as the conjunctiva, cornea, eyelids, or inner eye structures. They can range from mild irritation to severe vision-threatening conditions if not treated promptly.",
            causesIntro: "Eye infections develop when harmful microorganisms enter the eye and overcome its natural defense mechanisms.",
            causes: [
                "Bacterial infection: Common bacteria cause redness, discharge, and swelling of the eye.",
                "Viral infection: Viruses like adenovirus spread easily and cause contagious eye infections.",
                "Fungal infection: Fungi infect the eye after trauma or improper contact lens use.",
                "Parasitic infection: Rare parasites can cause severe inflammation and vision loss.",
                "Poor hygiene: Touching eyes with dirty hands introduces germs.",
                "Contact lens misuse: Improper cleaning or overuse increases infection risk.",
                "Eye injury: Cuts or scratches allow microorganisms to enter the eye.",
                "Weakened immunity: Diabetes or immune disorders increase susceptibility."
            ],
            symptomsIntro: "Symptoms may vary depending on the type and severity of infection, ranging from mild discomfort to severe pain and vision loss.",
            symptoms: [
                "Redness: Inflammation causes visible redness of the eye.",
                "Discharge: Pus or watery discharge may stick eyelids together.",
                "Pain or irritation: Ranges from mild discomfort to severe eye pain.",
                "Blurred vision: Infection interferes with clear vision.",
                "Sensitivity to light: Inflamed eyes become sensitive to bright light."
            ],
            diagnosis: "Accurate diagnosis helps determine the cause and appropriate treatment. Tests include clinical eye examination where ophthalmologist inspects eye structures for infection signs, slit-lamp examination to provide detailed view of cornea and inner eye, discharge testing where samples may be tested to identify the organism, and vision assessment to check impact of infection on eyesight.",
            complicationsIntro: "Eye infections, if untreated or improperly treated, can lead to serious complications including vision loss and spread of infection to other parts of the eye.",
            complications: [
                "Corneal ulcer: Infection can cause open sores on the cornea leading to scarring.",
                "Vision loss: Severe infections may permanently damage the cornea or inner eye.",
                "Spread of infection: Infection can spread from one eye to the other or to deeper eye structures.",
                "Chronic inflammation: Recurrent infections cause persistent eye problems.",
                "Contact lens complications: Infections in contact lens wearers may cause more severe disease."
            ],
            images: ["eye infection1", "eye infection2"]
        ))
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
        Topic(name: "Osteoarthritis", iconName: "figure.walk", content: TopicContent(
            overview: "Osteoarthritis is a degenerative joint disease that occurs when the protective cartilage cushioning the ends of bones wears down over time. It most commonly affects the knees, hips, hands, and spine, causing pain, stiffness, and reduced joint mobility.",
            causesIntro: "Osteoarthritis develops due to a combination of mechanical, genetic, and lifestyle factors that gradually damage joint cartilage.",
            causes: [
                "Aging: Cartilage naturally degenerates with age, losing its ability to repair itself.",
                "Joint injury: Previous fractures, ligament tears, or meniscus damage increase risk.",
                "Obesity: Excess body weight places added stress on weight-bearing joints like knees and hips.",
                "Overuse: Repetitive movements or occupations involving heavy lifting strain joints.",
                "Genetics: Family history increases susceptibility to osteoarthritis.",
                "Bone deformities: Irregular joint alignment or structure accelerates wear.",
                "Poor posture: Improper body mechanics contribute to joint stress.",
                "Metabolic disorders: Diabetes or excess iron can affect joint health."
            ],
            symptomsIntro: "Symptoms usually develop gradually and worsen over time, particularly with joint use.",
            symptoms: [
                "Joint pain: Aching pain during or after movement.",
                "Stiffness: Joint stiffness, especially in the morning or after inactivity.",
                "Tenderness: Joints feel tender when light pressure is applied.",
                "Loss of flexibility: Reduced range of motion in affected joints.",
                "Grating sensation: Feeling or hearing grinding when using the joint.",
                "Bone spurs: Hard lumps forming around the affected joint.",
                "Swelling: Inflammation around the joint area."
            ],
            diagnosis: "Diagnosis involves a physical examination to check for tenderness, swelling, and range of motion. X-rays reveal cartilage loss, bone spurs, and joint space narrowing. MRI provides detailed images of soft tissues. Arthrocentesis (joint fluid analysis) rules out other conditions like gout or infection.",
            complicationsIntro: "If untreated, osteoarthritis can progressively worsen and lead to chronic disability.",
            complications: [
                "Chronic pain: Persistent pain affecting daily activities and sleep.",
                "Joint deformity: Progressive damage can alter joint shape and function.",
                "Reduced mobility: Severe stiffness limits walking, climbing stairs, or grasping objects.",
                "Disability: Advanced disease may require joint replacement surgery.",
                "Fall risk: Knee or hip osteoarthritis increases risk of falls and fractures.",
                "Muscle weakness: Joint pain leads to reduced activity and muscle wasting."
            ],
            images: ["osteo arthritis1", "osteo arthritis2"]
        )),
        Topic(name: "Rheumatoid Arthritis", iconName: "figure.stand", content: TopicContent(
            overview: "Rheumatoid arthritis is an autoimmune disorder where the immune system mistakenly attacks the synovial lining of joints, causing inflammation, pain, and swelling. Unlike osteoarthritis, it often affects joints symmetrically and can involve multiple joints simultaneously.",
            causesIntro: "Rheumatoid arthritis occurs when the immune system targets the body's own joint tissues, though the exact trigger is not fully understood.",
            causes: [
                "Genetics: Certain genes (HLA-DRB1) increase susceptibility to RA.",
                "Gender: Women are more likely to develop RA than men.",
                "Age: Onset commonly occurs between 40 and 60 years.",
                "Smoking: Tobacco use significantly increases risk, especially in genetically predisposed individuals.",
                "Family history: Having relatives with RA raises personal risk.",
                "Obesity: Excess weight may increase risk and worsen symptoms.",
                "Hormonal factors: Changes in hormone levels may trigger RA.",
                "Environmental triggers: Exposure to certain bacteria, viruses, or silica dust may contribute."
            ],
            symptomsIntro: "Symptoms often begin in small joints and may vary in severity, with periods of flare-ups alternating with remission.",
            symptoms: [
                "Joint pain: Tender, warm, and swollen joints commonly in hands, wrists, and feet.",
                "Morning stiffness: Prolonged stiffness lasting more than 30 minutes.",
                "Fatigue: Persistent tiredness and lack of energy.",
                "Fever: Low-grade fever during flare-ups.",
                "Symmetrical symptoms: Both sides of the body are affected similarly.",
                "Nodules: Firm lumps under the skin (rheumatoid nodules).",
                "Weight loss: Unintentional weight loss due to chronic inflammation.",
                "Dry eyes and mouth: Associated with Sjögren's syndrome."
            ],
            diagnosis: "Diagnosis includes blood tests detecting rheumatoid factor (RF) and anti-CCP antibodies. Erythrocyte sedimentation rate (ESR) and C-reactive protein (CRP) indicate inflammation. X-rays, ultrasound, or MRI assess joint damage and synovitis. Clinical examination of joint patterns helps differentiate RA from other arthritides.",
            complicationsIntro: "Rheumatoid arthritis is a systemic disease that can affect organs and structures beyond joints.",
            complications: [
                "Joint damage: Progressive cartilage and bone erosion leads to deformity.",
                "Carpal tunnel syndrome: Wrist inflammation compresses median nerve.",
                "Lung disease: RA can cause scarring (fibrosis) or inflammation of lung lining.",
                "Heart problems: Increased risk of heart disease and pericarditis.",
                "Osteoporosis: RA and corticosteroid use weaken bones.",
                "Eye complications: Scleritis or dry eyes causing vision problems.",
                "Cervical spine instability: Joint damage can affect neck vertebrae."
            ],
            images: ["rheumatoid arthritis1", "rheumatoid arthritis2"]
        )),
        Topic(name: "Sports Injuries", iconName: "figure.run", content: TopicContent(
            overview: "Sports injuries are musculoskeletal injuries that occur during physical activity, exercise, or sports participation. They commonly affect muscles, tendons, ligaments, bones, and joints, ranging from minor sprains to severe fractures.",
            causesIntro: "Sports injuries result from acute trauma, overuse, or improper technique during athletic activities.",
            causes: [
                "Overuse: Repetitive motions cause stress fractures, tendonitis, or bursitis.",
                "Poor conditioning: Inadequate fitness or flexibility increases injury risk.",
                "Improper technique: Incorrect form during activities strains joints and muscles.",
                "Inadequate warm-up: Cold muscles and joints are more prone to injury.",
                "Equipment issues: Worn or ill-fitting shoes, protective gear fail to absorb shock.",
                "Collision or contact: Direct impact causes contusions, fractures, or dislocations.",
                "Sudden movements: Rapid pivoting, jumping, or changing direction tears ligaments.",
                "Fatigue: Tired muscles reduce coordination and reaction time."
            ],
            symptomsIntro: "Symptoms depend on the type and severity of injury but typically involve pain and functional impairment.",
            symptoms: [
                "Sudden pain: Sharp pain at the time of injury in acute trauma.",
                "Swelling: Inflammation around the injured area develops quickly.",
                "Bruising: Discoloration due to bleeding under the skin.",
                "Limited movement: Difficulty moving the affected limb or joint.",
                "Weakness: Reduced strength in the injured area.",
                "Instability: Joint feels loose or unable to bear weight.",
                "Popping sound: Audible snap or tear at injury time.",
                "Inability to continue: Immediate need to stop activity."
            ],
            diagnosis: "Diagnosis begins with a detailed history of how the injury occurred. Physical examination assesses tenderness, swelling, range of motion, and stability. X-rays identify fractures or dislocations. MRI, CT, or ultrasound provide detailed images of soft tissue injuries like ligament tears or muscle strains. Arthroscopy may be used for direct joint visualization.",
            complicationsIntro: "Untreated or improperly managed sports injuries can lead to chronic problems and recurrent damage.",
            complications: [
                "Chronic pain: Persistent pain lasting months or years after injury.",
                "Joint instability: Repeated sprains lead to loose, unstable joints.",
                "Early arthritis: Injured joints are at higher risk for osteoarthritis.",
                "Recurrent injuries: Incomplete healing predisposes to repeated damage.",
                "Muscle imbalances: Compensatory movements cause weakness or tightness.",
                "Reduced performance: Permanent decline in athletic ability.",
                "Psychological impact: Fear of re-injury affects confidence and participation."
            ],
            images: ["sports injury1", "sports injury2"]
        )),
        Topic(name: "Fractures", iconName: "figure.stand", content: TopicContent(
            overview: "A fracture is a break or crack in a bone, ranging from hairline fractures to complete breaks. Fractures can occur from trauma, overuse, or underlying bone weakness, and require prompt medical attention to ensure proper healing.",
            causesIntro: "Fractures occur when bone cannot withstand the force applied to it, or when disease has weakened bone structure.",
            causes: [
                "Trauma: Falls, car accidents, or sports collisions cause most fractures.",
                "Osteoporosis: Bone density loss makes bones fragile and prone to breaking.",
                "Overuse: Repetitive stress causes stress fractures, common in athletes.",
                "Pathology: Underlying conditions like cancer or infection weaken bones.",
                "Aging: Bones become more brittle with age.",
                "Poor nutrition: Calcium and vitamin D deficiency weaken bone structure.",
                "Medications: Long-term corticosteroid use reduces bone density.",
                "Genetics: Inherited bone disorders increase fracture risk."
            ],
            symptomsIntro: "Symptoms vary depending on fracture location and severity but typically involve immediate pain and loss of function.",
            symptoms: [
                "Severe pain: Intense pain at the fracture site, worsening with movement.",
                "Swelling: Rapid swelling around the injured area.",
                "Bruising: Discoloration appears hours after injury.",
                "Deformity: Affected limb may look crooked or out of place.",
                "Inability to move: Loss of function in the injured area.",
                "Tenderness: Extreme sensitivity to touch.",
                "Grating: Bone fragments rubbing against each other.",
                "Bleeding: Open fractures break through skin, causing bleeding."
            ],
            diagnosis: "Diagnosis involves physical examination assessing deformity, tenderness, and neurovascular status. X-rays confirm fracture type, location, and alignment. CT scans provide detailed images for complex fractures. MRI detects hidden fractures or soft tissue damage. Bone scans identify stress fractures not visible on X-rays.",
            complicationsIntro: "Fracture complications can be immediate or delayed, sometimes leading to permanent disability.",
            complications: [
                "Nonunion: Fracture fails to heal properly.",
                "Malunion: Bone heals in incorrect alignment.",
                "Infection: Open fractures are at risk for osteomyelitis.",
                "Nerve damage: Broken bone fragments may injure nearby nerves.",
                "Blood vessel injury: Fractures can damage arteries or veins.",
                "Compartment syndrome: Swelling increases pressure, risking tissue death.",
                "Joint stiffness: Immobilization leads to reduced range of motion.",
                "Deep vein thrombosis: Immobility increases blood clot risk."
            ],
            images: ["fracture1", "fracture2"]
        )),
        Topic(name: "Back Pain", iconName: "figure.stand", content: TopicContent(
            overview: "Back pain is a common condition affecting the lower, middle, or upper back. It can result from problems with muscles, ligaments, nerves, discs, or vertebrae. While most back pain improves with self-care, some cases require medical intervention.",
            causesIntro: "Back pain develops from structural, mechanical, or degenerative issues affecting the spine and supporting structures.",
            causes: [
                "Muscle strain: Heavy lifting, awkward movements, or overexertion strain back muscles.",
                "Bulging or ruptured discs: Disc material presses on nerves, causing pain.",
                "Arthritis: Osteoarthritis narrows spinal canal and affects facet joints.",
                "Skeletal irregularities: Scoliosis or kyphosis cause uneven stress on spine.",
                "Osteoporosis: Compression fractures occur when vertebrae become brittle.",
                "Poor posture: Slouching or improper ergonomics strain back structures.",
                "Sedentary lifestyle: Weak core muscles fail to support the spine properly.",
                "Obesity: Excess weight places added stress on the back."
            ],
            symptomsIntro: "Symptoms may range from a dull, constant ache to sudden, sharp pain that limits movement.",
            symptoms: [
                "Aching pain: Dull pain in the lower or upper back.",
                "Stiffness: Reduced flexibility and difficulty moving.",
                "Muscle spasms: Sudden, involuntary contractions cause intense pain.",
                "Radiating pain: Pain travels down the leg (sciatica).",
                "Numbness: Tingling or loss of sensation in legs or feet.",
                "Weakness: Difficulty standing straight or walking normally.",
                "Worse with movement: Pain increases with bending, lifting, or twisting.",
                "Better with rest: Pain may improve when lying down."
            ],
            diagnosis: "Diagnosis includes physical examination checking range of motion, reflexes, and strength. X-rays reveal fractures, arthritis, or alignment issues. MRI or CT scans provide detailed images of discs, nerves, and soft tissues. Bone scans detect infections or tumors. Electromyography (EMG) evaluates nerve function if radiating symptoms are present.",
            complicationsIntro: "Chronic back pain can significantly impact quality of life and lead to physical and emotional consequences.",
            complications: [
                "Chronic pain: Pain persists beyond 12 weeks, affecting daily activities.",
                "Reduced mobility: Stiffness limits bending, lifting, or walking.",
                "Nerve compression: Herniated discs cause sciatica or cauda equina syndrome.",
                "Depression: Chronic pain often leads to mood disorders.",
                "Sleep disturbances: Pain disrupts rest, affecting overall health.",
                "Weight gain: Reduced activity may lead to unwanted weight gain.",
                "Medication dependence: Long-term use of pain relievers risks addiction.",
                "Disability: Severe cases prevent work or normal activities."
            ],
            images: ["back pain1", "back pain2"]
        ))
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
        Topic(name: "Child Development", iconName: "figure.child", content: TopicContent(
            overview: "Child development refers to the progressive physical, cognitive, emotional, social, and language changes that occur from birth through adolescence. These changes are interconnected and influenced by genetics, environment, nutrition, health, and early life experiences.",
            causesIntro: "Child development is shaped by multiple biological and environmental factors that interact to determine developmental outcomes.",
            causes: [
                "Genetics: Inherited traits influence physical growth, intelligence, temperament, and developmental potential.",
                "Nutrition: Adequate intake of nutrients supports brain development, immunity, and physical growth.",
                "Environment: A safe, stable, and stimulating environment promotes learning and emotional security.",
                "Parenting and caregiving: Responsive and nurturing caregiving supports healthy emotional and social development.",
                "Health and medical conditions: Chronic illness, sensory impairment, or neurological conditions can affect milestones.",
                "Early life experiences: Positive stimulation enhances brain connections, while neglect or stress may cause delays.",
                "Socioeconomic factors: Access to resources and educational opportunities affects development.",
                "Cultural influences: Different cultural practices shape developmental expectations and behaviors."
            ],
            symptomsIntro: "Developmental milestones are age-related skills that help track a child's progress through key domains.",
            symptoms: [
                "Motor milestones: Include sitting, crawling, walking, running, and fine hand movements.",
                "Language milestones: Progress from babbling to words, sentences, and meaningful conversation.",
                "Social milestones: Include smiling, sharing, cooperative play, and forming friendships.",
                "Cognitive milestones: Involve memory development, problem-solving, and understanding cause and effect.",
                "Emotional milestones: Include emotional regulation, self-awareness, and empathy toward others.",
                "Growth patterns: Steady increases in height, weight, and head circumference.",
                "Behavioral changes: Development of independence, curiosity, and self-control.",
                "Learning abilities: Acquisition of academic skills and knowledge retention."
            ],
            diagnosis: "Developmental monitoring involves regular assessment using standardized screening tools to evaluate milestone achievement. Growth measurements track height, weight, and head circumference. Clinical neurological and physical examinations identify developmental concerns. Parental observations provide critical insights into daily functioning. Specialist referral is recommended when delays or disorders are suspected for comprehensive evaluation.",
            complicationsIntro: "Developmental delays, if left unaddressed, can lead to significant challenges that affect a child's overall functioning and future potential.",
            complications: [
                "Learning disabilities: Difficulties with reading, writing, mathematics, or information processing.",
                "Speech and language delays: Problems with communication, articulation, or language comprehension.",
                "Motor skill deficits: Poor coordination affecting daily activities and physical participation.",
                "Social difficulties: Challenges in forming relationships, understanding social cues, or interacting with peers.",
                "Behavioral disorders: ADHD, autism spectrum disorder, or conduct issues requiring intervention.",
                "Emotional problems: Anxiety, depression, or poor emotional regulation affecting well-being.",
                "Academic struggles: Poor performance in school due to cognitive or attentional issues.",
                "Low self-esteem: Negative self-perception resulting from developmental challenges."
            ],
            images: ["child development1", "child development2"]
        )),
        Topic(name: "Vaccination", iconName: "cross.case", content: TopicContent(
            overview: "Vaccination is a preventive medical practice that stimulates a child's immune system to develop protection against specific infectious diseases. It helps the body recognize and fight harmful germs without causing the actual illness.",
            causesIntro: "Vaccines work by training the immune system to respond quickly and effectively to infections through controlled exposure.",
            causes: [
                "Immune system stimulation: Vaccines introduce weakened or inactive components of germs.",
                "Antibody production: The body produces antibodies that recognize and neutralize pathogens.",
                "Immune memory formation: The immune system remembers the germ for faster future response.",
                "Herd immunity effect: High vaccination coverage limits disease outbreaks in the community.",
                "Pathogen exposure risk: Unvaccinated children face higher risk of serious infections.",
                "Waning immunity: Some vaccines require booster doses to maintain protection.",
                "Emerging variants: New pathogen strains may require updated vaccines.",
                "Vaccine hesitancy: Misinformation and lack of awareness reduce vaccination rates."
            ],
            symptomsIntro: "Most vaccines cause mild, temporary side effects indicating the immune system is responding appropriately.",
            symptoms: [
                "Mild fever: Common response as the immune system builds protection.",
                "Pain at injection site: Soreness, redness, or swelling where the vaccine was given.",
                "Fussiness: Irritability or crying in infants and young children.",
                "Fatigue: Feeling tired or lethargic for a day or two after vaccination.",
                "Poor appetite: Temporary reduction in food intake.",
                "Mild rash: Some vaccines may cause a localized or generalized rash.",
                "Headache: Occurs in older children after certain vaccines.",
                "Muscle aches: Mild body discomfort as immune response activates."
            ],
            diagnosis: "Vaccination status is assessed through review of medical records and immunization history. Pediatricians evaluate vaccine schedules, missed doses, and timing. Contra-indications are identified, such as severe allergies or immunocompromised status. Serological testing may confirm immunity in certain cases. Vaccination needs are individualized based on health status, age, and risk factors.",
            complicationsIntro: "While vaccines are generally safe, serious complications can rarely occur, and vaccine-preventable diseases pose significant risks.",
            complications: [
                "Severe allergic reaction: Anaphylaxis is rare but requires immediate medical attention.",
                "Vaccine-preventable diseases: Skipping vaccines increases risk of serious infections like measles or polio.",
                "Outbreak potential: Low vaccination rates can lead to disease outbreaks in communities.",
                "Herd immunity loss: When too few children are vaccinated, protection for vulnerable populations decreases.",
                "Complications from disease: Actual infections can cause severe disability or death.",
                "Long-term effects: Some diseases can cause chronic health problems if contracted.",
                "Community spread: Unvaccinated children can transmit infections to others.",
                "Missed school: Vaccine-preventable illnesses result in significant educational disruption."
            ],
            images: ["vaccination1", "vaccination2"]
        )),
        Topic(name: "Common Childhood Illnesses", iconName: "cross.case", content: TopicContent(
            overview: "Common childhood illnesses are health conditions frequently seen in infants and young children due to their developing immune systems. While most are mild and self-limiting, timely recognition and care are essential to prevent complications.",
            causesIntro: "Children are more susceptible to illnesses because their immune defenses are still maturing and they have frequent close contact with peers.",
            causes: [
                "Immature immune system: Young children have not yet developed full immunity against many viruses and bacteria.",
                "Close contact in group settings: Schools and daycare centers increase exposure to infectious agents.",
                "Poor hygiene habits: Children often touch their face, mouth, or nose with unwashed hands.",
                "First-time exposure to germs: Initial exposure to common pathogens leads to frequent infections.",
                "Incomplete vaccination: Missed or delayed vaccines increase vulnerability to preventable diseases.",
                "Seasonal variations: Certain illnesses peak during specific times of the year.",
                "Environmental factors: Pollution, allergens, and weather changes affect susceptibility.",
                "Malnutrition: Poor diet weakens immune system and increases infection risk."
            ],
            symptomsIntro: "Childhood illnesses present with various symptoms depending on the type of infection and affected body systems.",
            symptoms: [
                "Fever: Elevated temperature indicating immune response to infection.",
                "Cough and congestion: Respiratory symptoms common in viral infections.",
                "Runny nose: Nasal discharge accompanying colds and allergies.",
                "Vomiting and diarrhea: Gastrointestinal symptoms affecting hydration.",
                "Rash: Skin eruptions from viral illnesses like chickenpox or measles.",
                "Ear pain: Common symptom of otitis media or ear infections.",
                "Sore throat: Painful swallowing due to throat infections.",
                "Irritability: Behavioral change indicating discomfort or illness."
            ],
            diagnosis: "Diagnosis is mainly clinical, based on medical history and physical examination. Details of symptoms, duration, and exposure help identify the cause. Pediatricians assess vital signs and examine affected systems. Laboratory tests including blood, urine, or stool analysis confirm infection when required. Imaging studies like chest X-ray or ultrasound are used if complications are suspected. Follow-up assessment ensures proper recovery and treatment response.",
            complicationsIntro: "Most childhood illnesses resolve without complications, but some can lead to serious health issues if left untreated.",
            complications: [
                "Dehydration: Fluid loss from vomiting, diarrhea, or fever requires prompt treatment.",
                "Secondary bacterial infection: Viral illness may be followed by bacterial complications.",
                "Respiratory distress: Severe infections can cause breathing difficulties.",
                "Febrile seizures: High fever may trigger seizures in young children.",
                "Hospitalization: Severe illness or complications may require inpatient care.",
                "Chronic lung damage: Conditions like severe pneumonia can cause long-term effects.",
                "Hearing loss: Recurrent or untreated ear infections may affect hearing.",
                "Growth delays: Frequent illnesses can affect nutrition and development."
            ],
            images: ["common childhood illnesses1", "common childhood illnesses2"]
        )),
        Topic(name: "Nutrition and Feeding", iconName: "circle.fill", content: TopicContent(
            overview: "Nutrition and feeding refer to providing age-appropriate, balanced food and feeding practices that support a child's growth, brain development, immunity, and overall health. Proper nutrition from infancy through adolescence is essential for optimal physical and cognitive development.",
            causesIntro: "Proper nutrition is influenced by feeding practices, food availability, cultural habits, and parental awareness of nutritional needs.",
            causes: [
                "Poor feeding practices: Inadequate breastfeeding or inappropriate complementary foods.",
                "Limited dietary variety: Lack of diversity in food groups leads to nutrient deficiencies.",
                "Food insecurity: Economic constraints limit access to nutritious foods.",
                "Cultural beliefs: Traditional practices may affect feeding patterns and food choices.",
                "Parental knowledge gaps: Lack of awareness about age-appropriate nutrition.",
                "Picky eating: Child's refusal of certain foods causes nutritional imbalances.",
                "Marketing influences: Exposure to unhealthy food advertisements affects preferences.",
                "Medical conditions: Allergies, reflux, or chronic illnesses affect feeding and absorption."
            ],
            symptomsIntro: "Nutritional problems manifest through physical signs, behavioral changes, and growth patterns.",
            symptoms: [
                "Poor weight gain: Inadequate calorie or nutrient intake affects growth.",
                "Delayed growth: Height and developmental milestones may be affected.",
                "Frequent infections: Weak immunity due to inadequate nutrition.",
                "Fatigue and weakness: Common in iron or vitamin deficiencies.",
                "Poor concentration: Nutrient deficiencies affect cognitive function.",
                "Dental problems: Excessive sugar intake causes tooth decay.",
                "Digestive issues: Constipation or diarrhea related to diet quality.",
                "Behavioral changes: Irritability or poor concentration may occur."
            ],
            diagnosis: "Nutritional assessment involves regular growth monitoring tracking weight, height, and head circumference. Dietary history evaluates meal patterns, food variety, and feeding practices. Physical examination identifies signs of malnutrition or specific deficiencies. Laboratory tests including blood counts assess anemia or vitamin levels when needed. Parental counseling guides appropriate feeding practices. Growth charts track progress over time compared to standards.",
            complicationsIntro: "Poor nutrition in childhood can lead to serious immediate and long-term health consequences.",
            complications: [
                "Stunted growth: Chronic malnutrition permanently affects height and development.",
                "Micronutrient deficiencies: Lack of vitamins and minerals causes specific health problems.",
                "Weakened immunity: Poor nutrition increases susceptibility to infections.",
                "Cognitive impairment: Malnutrition affects brain development and learning ability.",
                "Obesity: Unhealthy eating habits lead to excessive weight gain.",
                "Type 2 diabetes: Poor diet increases risk of metabolic disorders.",
                "Eating disorders: Unhealthy relationships with food develop in childhood.",
                "Chronic disease risk: Early nutrition influences adult health outcomes."
            ],
            images: ["nutrition and feeding1", "nutrition and feeding2"]
        )),
        Topic(name: "Sleep Habits", iconName: "moon.zzz.fill", content: TopicContent(
            overview: "Sleep habits refer to a child's sleep duration, timing, routine, and quality of sleep from infancy through adolescence. Healthy sleep habits are essential for physical growth, brain development, emotional regulation, and overall well-being.",
            causesIntro: "Sleep problems in children can result from behavioral, environmental, medical, or developmental factors.",
            causes: [
                "Irregular sleep schedules: Inconsistent bedtime disrupts circadian rhythm.",
                "Excessive screen time: Blue light suppresses melatonin and delays sleep onset.",
                "Caffeine intake: Tea, coffee, or sugary drinks interfere with sleep quality.",
                "Stress or anxiety: Emotional concerns affect ability to fall or stay asleep.",
                "Medical conditions: Asthma, reflux, or sleep apnea disturb normal sleep.",
                "Poor sleep environment: Noise, light, or uncomfortable bedding affect rest.",
                "Overstimulation: Exciting activities before bedtime prevent relaxation.",
                "Developmental changes: Sleep regressions occur during growth phases."
            ],
            symptomsIntro: "Sleep deprivation in children manifests through behavioral, emotional, and physical changes.",
            symptoms: [
                "Irritability and mood swings: Poor sleep affects emotional regulation.",
                "Poor concentration: Reduced attention span impacts learning and behavior.",
                "Hyperactivity: Sleep deprivation may mimic attention deficit symptoms.",
                "Frequent illness: Weakened immunity increases infection risk.",
                "Academic difficulties: Learning and memory are impaired by lack of sleep.",
                "Daytime fatigue: Excessive tiredness despite adequate night sleep time.",
                "Morning grogginess: Difficulty waking up and starting the day.",
                "Behavioral problems: Increased tantrums, defiance, or emotional outbursts."
            ],
            diagnosis: "Sleep assessment begins with detailed sleep history reviewing bedtime routine, duration, and night awakenings. Sleep diaries track patterns over several days. Parental observations provide insight into night behaviors and routines. Physical examination identifies medical causes affecting sleep like enlarged tonsils. Specialist evaluation with sleep studies may be required for suspected sleep disorders. Growth and development assessment evaluate sleep impact on overall health.",
            complicationsIntro: "Chronic sleep problems can significantly affect a child's health, development, and quality of life.",
            complications: [
                "Growth impairment: Reduced growth hormone release affects physical development.",
                "Cognitive deficits: Poor sleep affects learning, memory, and academic performance.",
                "Behavioral disorders: Sleep problems contribute to ADHD-like symptoms.",
                "Emotional disturbances: Increased risk of anxiety and mood disorders.",
                "Obesity risk: Sleep deprivation affects hormones regulating appetite.",
                "Weakened immunity: Poor sleep reduces ability to fight infections.",
                "Safety concerns: Fatigue increases risk of accidents and injuries.",
                "Family stress: Child's sleep problems affect parental well-being."
            ],
            images: ["sleep habits1", "sleep habits2"]
        ))
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
        Topic(name: "Depression", iconName: "exclamationmark.circle", content: TopicContent(
            overview: "Depression is a common mental health disorder marked by persistent sadness, loss of interest in daily activities, and reduced emotional and physical functioning. It affects how a person thinks, feels, behaves, and manages everyday responsibilities, and requires clinical attention when symptoms persist.",
            causesIntro: "Depression develops from a complex interaction of biological, psychological, and environmental factors.",
            causes: [
                "Genetic predisposition: Family history of depression increases risk.",
                "Brain chemistry imbalance: Neurotransmitter dysregulation affects mood regulation.",
                "Hormonal changes: Thyroid problems, menopause, or postpartum changes trigger symptoms.",
                "Chronic stress: Prolonged stress overwhelms coping mechanisms.",
                "Trauma or abuse: Past emotional or physical trauma increases vulnerability.",
                "Chronic illness: Long-term medical conditions affect emotional health.",
                "Substance use: Alcohol or drugs can trigger or worsen depression.",
                "Social isolation: Loneliness and lack of support contribute to symptoms."
            ],
            symptomsIntro: "Depression symptoms vary in severity and duration, significantly affecting daily life.",
            symptoms: [
                "Persistent sadness: Empty, hopeless, or tearful mood most of the time.",
                "Loss of interest: Reduced pleasure in activities once enjoyed.",
                "Sleep changes: Insomnia or excessive sleeping.",
                "Appetite changes: Significant weight loss or gain.",
                "Fatigue: Lack of energy and feeling constantly tired.",
                "Difficulty concentrating: Trouble focusing or making decisions.",
                "Feelings of worthlessness: Excessive guilt or self-criticism.",
                "Physical symptoms: Unexplained aches or pains."
            ],
            diagnosis: "Depression diagnosis involves comprehensive clinical evaluation. Mental health professionals conduct detailed interviews about symptoms, duration, and impact. Structured questionnaires like PHQ-9 assess severity. Medical evaluation rules out physical causes like thyroid problems. Psychiatric assessment considers family history and life stressors. Diagnosis requires symptoms persisting for at least two weeks and causing functional impairment.",
            complicationsIntro: "Untreated depression can lead to severe consequences affecting all aspects of life.",
            complications: [
                "Chronic illness: Depression worsens conditions like heart disease or diabetes.",
                "Substance abuse: Self-medication with drugs or alcohol.",
                "Relationship problems: Strain on family and social connections.",
                "Work difficulties: Reduced productivity and job loss.",
                "Social isolation: Withdrawal from support networks.",
                "Self-harm risk: Increased risk of suicide attempts.",
                "Physical health decline: Neglect of health and self-care.",
                "Cognitive impairment: Long-term effects on memory and thinking."
            ],
            images: ["depression1", "depression2"]
        )),
        Topic(name: "Anxiety Disorders", iconName: "brain.head.profile", content: TopicContent(
            overview: "Anxiety disorders are a group of mental health conditions marked by excessive fear, worry, or nervousness that persists over time. These feelings are often disproportionate to actual situations and interfere with daily functioning, relationships, and quality of life.",
            causesIntro: "Anxiety disorders develop from a complex interaction of biological, psychological, and environmental factors.",
            causes: [
                "Genetic predisposition: Family history of anxiety increases susceptibility.",
                "Brain chemistry imbalance: Neurotransmitter dysregulation affects emotional regulation.",
                "Stressful life events: Trauma, abuse, chronic stress, or major life changes trigger symptoms.",
                "Personality traits: Highly sensitive or perfectionistic individuals are at higher risk.",
                "Chronic medical conditions: Long-term illnesses or hormonal imbalances contribute.",
                "Childhood experiences: Early adversity or overprotective parenting shapes anxiety responses.",
                "Substance use: Caffeine, alcohol, or drugs can induce or worsen anxiety.",
                "Learned behavior: Observing anxious responses in caregivers."
            ],
            symptomsIntro: "Anxiety symptoms can affect emotional state, physical health, and behavior.",
            symptoms: [
                "Excessive worry: Persistent and uncontrollable concern about future events.",
                "Restlessness: Feeling constantly on edge or unable to relax.",
                "Palpitations: Rapid heartbeat or chest discomfort during anxiety episodes.",
                "Shortness of breath: Sensation of not getting enough air.",
                "Sleep disturbances: Difficulty falling or staying asleep.",
                "Muscle tension: Physical tightness and body aches.",
                "Sweating: Excessive perspiration without physical exertion.",
                "Avoidance behavior: Avoiding anxiety-triggering situations."
            ],
            diagnosis: "Anxiety diagnosis begins with comprehensive clinical assessment. Mental health professionals conduct detailed interviews about worry patterns, physical symptoms, and avoidance behaviors. Standardized tools like GAD-7 measure severity. Medical evaluation excludes physical conditions like hyperthyroidism. Psychological assessment differentiates anxiety from depression or other disorders. Diagnosis requires symptoms persisting for six months and causing significant functional impairment.",
            complicationsIntro: "Untreated anxiety disorders can progressively worsen and affect multiple life areas.",
            complications: [
                "Depression development: Chronic anxiety often leads to secondary depression.",
                "Substance abuse: Alcohol or drugs used to self-medicate.",
                "Physical health problems: Chronic stress affects cardiovascular and immune systems.",
                "Work impairment: Reduced performance and absenteeism.",
                "Social isolation: Withdrawal from relationships and activities.",
                "Sleep disorders: Chronic insomnia affecting overall health.",
                "Suicide risk: Severe anxiety increases suicidal ideation.",
                "Quality of life decline: Persistent limitation of daily activities."
            ],
            images: ["anxiety1", "anxiety2"]
        )),
        Topic(name: "Bipolar Disorder", iconName: "circle.dashed", content: TopicContent(
            overview: "Bipolar disorder is a chronic mental health condition characterized by extreme mood swings that include episodes of elevated mood (mania or hypomania) and episodes of depression. These mood changes affect energy levels, thinking, behavior, and daily functioning.",
            causesIntro: "Bipolar disorder develops due to a combination of biological and environmental factors.",
            causes: [
                "Genetic predisposition: Family history significantly increases risk.",
                "Neurochemical imbalance: Dysregulation of neurotransmitters affects mood stability.",
                "Brain structure changes: Differences in emotion regulation regions.",
                "Stressful life events: Trauma, loss, or major stress trigger mood episodes.",
                "Substance use: Alcohol or drugs worsen symptoms or precipitate episodes.",
                "Sleep disruption: Irregular sleep patterns trigger mood changes.",
                "Circadian rhythm abnormalities: Biological clock dysfunction contributes.",
                "Hormonal influences: Endocrine system changes affect mood regulation."
            ],
            symptomsIntro: "Bipolar disorder involves alternating episodes of mania/hypomania and depression.",
            symptoms: [
                "Elevated mood: Unusually high energy, excitement, or irritability.",
                "Increased activity: Excessive goal-directed behavior or restlessness.",
                "Reduced sleep need: Feeling rested after very little sleep.",
                "Racing thoughts: Rapid thinking and difficulty focusing.",
                "Impulsive behavior: Risky decisions involving spending, sex, or substances.",
                "Inflated self-esteem: Unrealistic confidence or grandiose beliefs.",
                "Depressive episodes: Persistent low mood, loss of interest, fatigue.",
                "Suicidal thoughts: Thoughts of death during depressive phases."
            ],
            diagnosis: "Bipolar disorder diagnosis requires comprehensive psychiatric evaluation. Mood disorder assessment includes detailed history of mood episodes, sleep patterns, and behavior. Mood questionnaires like MDQ help identify symptoms. Collateral history from family provides crucial behavioral observations. Medical evaluation excludes substance-induced or medical causes. Longitudinal observation confirms diagnosis through symptom patterns over time, often requiring several months of monitoring.",
            complicationsIntro: "Untreated bipolar disorder can lead to severe life disruption and health risks.",
            complications: [
                "Suicide risk: High mortality rate especially during depressive episodes.",
                "Substance abuse: High rates of alcohol and drug misuse.",
                "Relationship breakdown: Impulsive behavior strains connections.",
                "Financial problems: Excessive spending during manic episodes.",
                "Occupational instability: Mood episodes affect job performance.",
                "Legal issues: Risky behaviors may lead to legal consequences.",
                "Physical health decline: Poor self-care during mood episodes.",
                "Social stigma: Misunderstanding leads to isolation."
            ],
            images: ["bipolar disorder1", "bipolar disorder2"]
        )),
        Topic(name: "Schizophrenia", iconName: "cross.case", content: TopicContent(
            overview: "Schizophrenia is a chronic and severe mental health disorder that affects how a person thinks, feels, perceives reality, and behaves. It often leads to difficulty distinguishing reality from hallucinations or delusions and significantly impacts daily functioning.",
            causesIntro: "Schizophrenia develops due to a complex interaction of genetic, biological, and environmental factors.",
            causes: [
                "Genetic vulnerability: Family history significantly increases risk.",
                "Neurochemical imbalance: Abnormal dopamine and glutamate activity affects perception.",
                "Brain structure differences: Alterations in cognition and emotion regulation regions.",
                "Prenatal factors: Infections, malnutrition, or stress during pregnancy increase risk.",
                "Psychosocial stress: Trauma, social isolation, or major stressors trigger onset.",
                "Drug use: Certain substances particularly cannabis may precipitate psychosis.",
                "Neurodevelopmental abnormalities: Early brain development disruptions.",
                "Immune system dysfunction: Autoimmune factors may contribute."
            ],
            symptomsIntro: "Schizophrenia symptoms are categorized into positive, negative, and cognitive symptoms.",
            symptoms: [
                "Hallucinations: Seeing or hearing things that are not present.",
                "Delusions: Strong false beliefs despite contrary evidence.",
                "Disorganized speech: Incoherent or illogical speech patterns.",
                "Emotional flatness: Reduced emotional expression and reactions.",
                "Social withdrawal: Loss of interest in relationships.",
                "Reduced motivation: Difficulty initiating activities.",
                "Impaired concentration: Trouble focusing or maintaining attention.",
                "Memory problems: Difficulty remembering information."
            ],
            diagnosis: "Schizophrenia diagnosis involves comprehensive psychiatric assessment. Clinical interviews explore symptoms, duration, and functional impairment in detail. Mental status examination assesses thought processes, perception, and insight. Collateral history from family identifies behavioral changes. Medical evaluation including neuroimaging excludes neurological causes. Long-term observation confirms diagnosis through symptom persistence, typically requiring six months of psychotic symptoms for definitive diagnosis.",
            complicationsIntro: "Schizophrenia, if untreated, leads to profound impairment in multiple life domains.",
            complications: [
                "Social isolation: Withdrawal from family and community.",
                "Unemployment: Difficulty maintaining competitive employment.",
                "Homelessness: Loss of support systems and financial stability.",
                "Substance abuse: High rates of alcohol and drug misuse.",
                "Physical health decline: Poor nutrition and self-care neglect.",
                "Self-harm risk: Increased suicide and self-injury rates.",
                "Cognitive decline: Progressive impairment in thinking abilities.",
                "Victimization: Vulnerability to exploitation and abuse."
            ],
            images: ["schizophrenia1", "schizophrenia2"]
        )),
        Topic(name: "Post-Traumatic Stress Disorder", iconName: "exclamationmark.triangle.fill", content: TopicContent(
            overview: "Post-Traumatic Stress Disorder (PTSD) is a mental health condition that develops after exposure to a traumatic or life-threatening event. It causes persistent psychological distress, intrusive memories, emotional changes, and functional impairment long after the event has passed.",
            causesIntro: "PTSD develops after exposure to severe trauma, with various factors influencing risk.",
            causes: [
                "Physical or sexual assault: Violence overwhelms coping mechanisms.",
                "Accidents or disasters: Sudden psychological shock from events.",
                "War or combat: Military or conflict-related trauma carries high risk.",
                "Childhood abuse: Early trauma disrupts neurological development.",
                "Medical trauma: Life-threatening illness or procedures.",
                "Severity of trauma: Intense or prolonged trauma increases risk.",
                "Lack of social support: Absence of emotional support worsens outcomes.",
                "Previous mental health issues: Pre-existing anxiety or depression increases vulnerability."
            ],
            symptomsIntro: "PTSD symptoms are grouped into four major clusters affecting daily life.",
            symptoms: [
                "Flashbacks: Feeling as if trauma is happening again.",
                "Distressing memories: Unwanted recurrent memories interfere with life.",
                "Nightmares: Trauma-related dreams disrupt sleep.",
                "Avoiding reminders: Avoiding trauma-linked people, places, or situations.",
                "Emotional avoidance: Suppressing trauma-related thoughts and feelings.",
                "Negative beliefs: Persistent guilt, shame, or self-blame.",
                "Hypervigilance: Constant feeling of being in danger.",
                "Irritability: Increased anger outbursts and aggression."
            ],
            diagnosis: "PTSD diagnosis requires detailed trauma history and symptom assessment. Clinical interviews explore trauma exposure, symptom duration, and functional impact. Standardized tools like PCL-5 measure symptom severity. Mental status examination evaluates emotional state and thought processes. Collateral information from family provides behavioral observations. Medical evaluation excludes neurological or substance-related causes. Diagnosis requires symptoms lasting more than one month after trauma and causing significant impairment.",
            complicationsIntro: "Untreated PTSD can severely disrupt all aspects of life and health.",
            complications: [
                "Chronic depression: Trauma-related mood disorders develop.",
                "Substance abuse: Drugs or alcohol used to cope with symptoms.",
                "Relationship problems: Emotional numbness strains connections.",
                "Employment difficulties: Symptoms affect work performance.",
                "Physical health decline: Chronic stress affects body systems.",
                "Social isolation: Withdrawal from support networks.",
                "Suicide risk: Increased risk of self-harm behaviors.",
                "Secondary traumatization: Family members affected by symptoms."
            ],
            images: ["post traumatic stress disorder1", "post traumatic stress disorder2"]
        ))
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

    // Oncologist Topics and FAQs
    static let oncologistTopics = [
        Topic(name: "Breast Cancer", iconName: "heart.fill", content: TopicContent(
            overview: "Breast cancer is a malignant condition in which abnormal cells in the breast tissue grow uncontrollably and form a tumor. It most commonly develops in the milk ducts or lobules and can spread to nearby lymph nodes or distant organs if untreated.",
            causesIntro: "Breast cancer develops due to genetic mutations that cause abnormal cell growth in breast tissue. Multiple factors contribute to these genetic changes and cancer development.",
            causes: [
                "Female gender: Women are at significantly higher risk than men.",
                "Increasing age: Risk rises significantly after 40 years of age.",
                "Family history: BRCA1 and BRCA2 gene mutations increase risk.",
                "Hormonal exposure: Early menstruation or late menopause increases estrogen exposure.",
                "Obesity: Excess body fat increases estrogen levels after menopause.",
                "Alcohol consumption: Regular intake raises breast cancer risk.",
                "Radiation exposure: Chest radiation at a young age increases risk.",
                "Sedentary lifestyle: Lack of physical activity contributes to risk."
            ],
            symptomsIntro: "Symptoms may vary depending on the stage and type of breast cancer. Early stages may be asymptomatic, highlighting the importance of screening.",
            symptoms: [
                "Breast lump: A painless, hard lump with irregular edges is the most common sign.",
                "Change in breast shape or size: One breast may appear larger or differently shaped.",
                "Skin changes: Dimpling, redness, or thickening of the breast skin.",
                "Nipple changes: Nipple inversion, discharge, or crusting.",
                "Pain or discomfort: Persistent pain in the breast or armpit."
            ],
            diagnosis: "Diagnosis involves clinical evaluation and imaging followed by tissue confirmation. Tests include clinical breast examination to detect lumps or abnormalities, mammography as the primary screening and diagnostic imaging tool, breast ultrasound or MRI to further evaluate suspicious areas, and biopsy to confirm cancer type and receptor status.",
            complicationsIntro: "If untreated, breast cancer can spread to other parts of the body and cause serious complications. Early detection significantly improves outcomes.",
            complications: [
                "Metastasis: Cancer can spread to lymph nodes, bones, lungs, liver, or brain.",
                "Lymphedema: Swelling in arms due to lymph node removal or damage.",
                "Recurrence: Cancer may return in the same breast or other parts of the body.",
                "Side effects of treatment: Chemotherapy and radiation cause fatigue, nausea, and hair loss.",
                "Psychological impact: Diagnosis and treatment cause significant emotional distress."
            ]
        )),
        Topic(name: "Lung Cancer", iconName: "lungs.fill", content: TopicContent(
            overview: "Lung cancer is a malignant disease in which abnormal cells grow uncontrollably in the lung tissue, interfering with normal breathing and oxygen exchange. It is one of the leading causes of cancer-related deaths worldwide, often diagnosed at an advanced stage.",
            causesIntro: "Lung cancer develops when genetic mutations cause normal lung cells to grow uncontrollably. These mutations are often triggered by exposure to carcinogens, particularly tobacco smoke.",
            causes: [
                "Smoking: Primary risk factor responsible for most lung cancer cases.",
                "Secondhand smoke exposure: Increases risk even in non-smokers.",
                "Air pollution: Long-term exposure damages lung tissue.",
                "Occupational hazards: Asbestos, radon, and chemical fumes increase risk.",
                "Family history: Genetic susceptibility plays a role.",
                "Previous lung disease: Conditions like COPD or pulmonary fibrosis increase risk.",
                "Radiation exposure: Prior chest radiation raises cancer risk."
            ],
            symptomsIntro: "Symptoms may develop gradually and are often mistaken for common respiratory conditions in early stages. Many symptoms only appear when the disease is advanced.",
            symptoms: [
                "Persistent cough: A long-lasting or worsening cough is a common early sign.",
                "Chest pain: Pain may worsen with coughing, breathing, or laughing.",
                "Shortness of breath: Tumor growth limits normal lung expansion.",
                "Coughing up blood: Blood-stained sputum indicates airway involvement.",
                "Unexplained weight loss: Cancer-related metabolic changes cause weight loss.",
                "Fatigue: Persistent tiredness due to reduced oxygen levels and cancer burden."
            ],
            diagnosis: "Diagnosis aims to confirm cancer presence and determine its type and spread. Tests include chest X-ray as initial imaging to detect lung abnormalities, CT scan to provide detailed view of tumor size and location, bronchoscopy to allow direct visualization and biopsy of lung tissue, biopsy to confirm cancer type through tissue examination, and molecular testing to identify genetic mutations for targeted therapy.",
            complicationsIntro: "Lung cancer complications can be severe and life-threatening, especially when diagnosed at advanced stages. Early detection significantly improves prognosis.",
            complications: [
                "Metastasis: Cancer commonly spreads to brain, bones, liver, and adrenal glands.",
                "Respiratory failure: Tumors block airways or cause fluid accumulation around lungs.",
                "Hemoptysis: Severe coughing up of blood can be life-threatening.",
                "Superior vena cava syndrome: Tumor compresses the large vein returning blood to the heart.",
                "Treatment side effects: Chemotherapy and radiation cause significant toxicity."
            ]
        )),
        Topic(name: "Prostate Cancer", iconName: "circle.fill", content: TopicContent(
            overview: "Prostate cancer is a malignant growth that develops in the prostate gland, a small gland in men that produces seminal fluid. It often grows slowly but can become aggressive and spread to other parts of the body if not detected early.",
            causesIntro: "Prostate cancer begins when cells in the prostate gland develop mutations in their DNA. These mutated cells grow and divide more rapidly than normal cells and continue living when other cells would die.",
            causes: [
                "Age: Risk increases significantly after the age of 50.",
                "Family history: Having a close relative with prostate cancer increases risk.",
                "Genetic mutations: BRCA1 and BRCA2 mutations elevate risk.",
                "Ethnicity: Higher incidence seen in African ancestry populations.",
                "Diet: High-fat diets may contribute to increased risk.",
                "Hormonal factors: Androgens play a role in prostate cancer growth.",
                "Obesity: Linked to aggressive forms of prostate cancer."
            ],
            symptomsIntro: "Early-stage prostate cancer may not cause noticeable symptoms. Symptoms usually appear as the disease progresses and the gland enlarges.",
            symptoms: [
                "Difficulty urinating: Weak urine stream or trouble starting and stopping urination.",
                "Frequent urination: Increased need to urinate, especially at night.",
                "Blood in urine or semen: Indicates prostate or urinary tract involvement.",
                "Pelvic or lower back pain: Suggests advanced or spreading disease.",
                "Erectile dysfunction: Difficulty achieving or maintaining erection."
            ],
            diagnosis: "Diagnosis focuses on early detection and confirmation through imaging and biopsy. Tests include prostate-specific antigen (PSA) test to measure PSA levels in blood, digital rectal examination (DRE) to detect prostate abnormalities, prostate biopsy to confirm cancer diagnosis and grade, and imaging studies like MRI, CT, or bone scan to assess spread.",
            complicationsIntro: "If untreated or advanced, prostate cancer can spread to other parts of the body and cause significant complications. Early detection provides the best chance for successful treatment.",
            complications: [
                "Metastasis: Cancer commonly spreads to bones, lymph nodes, and other organs.",
                "Urinary incontinence: Treatment can affect bladder control.",
                "Erectile dysfunction: Surgery or radiation affects sexual function.",
                "Bone complications: Bone metastases can cause pain and fractures.",
                "Emotional impact: Diagnosis and treatment effects affect mental health and relationships."
            ]
        )),
        Topic(name: "Colorectal Cancer", iconName: "circle.circle.fill", content: TopicContent(
            overview: "Colorectal cancer is a malignant condition that develops in the colon or rectum, parts of the large intestine. It usually begins as a benign polyp that gradually transforms into cancer over time if not detected early.",
            causesIntro: "Colorectal cancer develops when cells in the colon or rectum develop genetic mutations that cause them to grow uncontrollably. These mutations accumulate over time due to various risk factors.",
            causes: [
                "Increasing age: Risk rises significantly after age 50.",
                "Family history: Colorectal cancer or polyps in close relatives increase risk.",
                "Genetic syndromes: Conditions like Lynch syndrome or FAP increase risk.",
                "Diet: High intake of red or processed meats increases risk.",
                "Sedentary lifestyle: Physical inactivity contributes to cancer development.",
                "Obesity: Excess body weight is linked to higher risk.",
                "Smoking and alcohol: Both increase colorectal cancer risk.",
                "Inflammatory bowel disease: Long-standing ulcerative colitis or Crohn's disease raises risk."
            ],
            symptomsIntro: "Symptoms may be mild or absent in early stages and become more noticeable as the disease progresses. Many symptoms relate to changes in bowel habits.",
            symptoms: [
                "Change in bowel habits: Persistent diarrhea, constipation, or change in stool consistency.",
                "Blood in stool: Bright red or dark-colored blood due to tumor bleeding.",
                "Abdominal pain or cramping: Ongoing discomfort or bloating.",
                "Unexplained weight loss: Cancer-related metabolic changes cause weight loss.",
                "Fatigue and weakness: Often due to chronic blood loss and anemia.",
                "Feeling of incomplete bowel emptying: Persistent urge after passing stool."
            ],
            diagnosis: "Diagnosis focuses on detecting cancer early and confirming it through tissue analysis. Tests include colonoscopy as the gold standard test to detect tumors and remove polyps, biopsy to confirm cancer through tissue examination, stool tests to detect occult blood or abnormal DNA, and imaging studies like CT or MRI scans to assess tumor spread.",
            complicationsIntro: "Colorectal cancer can cause serious complications if not detected early or if it spreads to other organs. Regular screening is highly effective at prevention.",
            complications: [
                "Intestinal obstruction: Tumor blocks normal passage of stool.",
                "Metastasis: Cancer commonly spreads to liver and lungs.",
                "Perforation: Tumor growth can cause bowel wall perforation.",
                "Anemia: Chronic blood loss leads to severe iron deficiency.",
                "Treatment effects: Surgery may require colostomy, affecting quality of life."
            ]
        )),
        Topic(name: "Leukemia", iconName: "drop.fill", content: TopicContent(
            overview: "Leukemia is a type of cancer that affects the blood and bone marrow, where blood cells are produced. It causes abnormal white blood cells to grow uncontrollably, interfering with the production of healthy blood cells.",
            causesIntro: "Leukemia develops when genetic mutations occur in the DNA of blood cells, particularly white blood cells. These mutations cause the cells to grow and divide abnormally while failing to die when they should.",
            causes: [
                "Genetic disorders: Conditions like Down syndrome increase risk.",
                "Radiation exposure: High-dose radiation damages bone marrow cells.",
                "Chemical exposure: Benzene exposure is strongly linked to leukemia.",
                "Previous cancer treatment: Chemotherapy or radiation can cause secondary leukemia.",
                "Family history: Rarely increases susceptibility.",
                "Smoking: Raises risk, especially for acute myeloid leukemia."
            ],
            symptomsIntro: "Symptoms may develop gradually or suddenly and often result from low levels of normal blood cells. Different types of leukemia may cause different symptom patterns.",
            symptoms: [
                "Persistent fatigue: Caused by anemia due to reduced red blood cells.",
                "Frequent infections: Abnormal white cells weaken immune defense.",
                "Easy bruising or bleeding: Low platelet count leads to nosebleeds or bleeding gums.",
                "Fever and night sweats: Result from cancer-related inflammation.",
                "Bone or joint pain: Due to bone marrow expansion.",
                "Unexplained weight loss: Increased metabolic demand of cancer cells."
            ],
            diagnosis: "Diagnosis confirms abnormal blood cell production and identifies leukemia type. Tests include complete blood count (CBC) to show abnormal white cells and low normal cells, bone marrow biopsy to confirm leukemia and determine subtype, cytogenetic and molecular tests to identify genetic mutations guiding treatment, and imaging studies to detect organ enlargement or disease spread.",
            complicationsIntro: "Leukemia and its treatment can lead to serious complications affecting multiple body systems. Modern treatments have significantly improved outcomes for many patients.",
            complications: [
                "Severe infections: Weakened immune system increases infection risk.",
                "Anemia and bleeding: Low red cells and platelets cause fatigue and bleeding risk.",
                "Organ damage: Leukemia cells infiltrate liver, spleen, and lymph nodes.",
                "Treatment toxicity: Chemotherapy causes nausea, hair loss, and organ damage.",
                "Graft-versus-host disease: Stem cell transplant complication where donor cells attack host tissue."
            ]
        ))
    ]

    static let oncologistFAQs = [
        FAQ(question: "What are the warning signs of cancer?",
            answer: "Unexplained weight loss, fatigue, persistent pain, lumps, changes in bowel or bladder habits, or unusual bleeding should be evaluated."),
        FAQ(question: "What causes cancer?",
            answer: "Cancer is caused by genetic mutations that may be inherited or acquired due to tobacco, radiation, chemicals, inflammation, viruses, or hormones."),
        FAQ(question: "When should I consult an oncologist?",
            answer: "If diagnosed with cancer or if screening tests suggest possible malignancy. Early specialist consultation improves outcomes."),
        FAQ(question: "How is cancer diagnosed?",
            answer: "Diagnosis involves imaging scans, biopsy, blood tests, and molecular studies to confirm cancer type and stage."),
        FAQ(question: "What are the treatment options for cancer?",
            answer: "Treatment may include surgery, chemotherapy, radiation therapy, immunotherapy, targeted therapy, or hormone therapy depending on cancer type and stage.")
    ]

    // Ayurveda Specialist Topics and FAQs
    static let ayurvedaTopics = [
        Topic(name: "Doshas", iconName: "circle.dashed", content: TopicContent(
            overview: "Doshas are the three fundamental energies or bio-forces in Ayurveda that govern all physical and mental processes. Known as Vata (air and space), Pitta (fire and water), and Kapha (earth and water), they determine an individual's physical constitution, temperament, and susceptibility to diseases. Health is maintained when these doshas are in balance, while illness arises from their imbalance.",
            causesIntro: "Dosha imbalance occurs due to various lifestyle, dietary, and environmental factors that disturb the natural equilibrium of the three energies.",
            causes: [
                "Improper diet: Eating foods that aggravate your dominant dosha creates imbalance.",
                "Seasonal changes: Different seasons influence specific doshas—Vata in autumn, Pitta in summer, Kapha in spring.",
                "Stress and anxiety: Mental stress particularly aggravates Vata dosha.",
                "Irregular sleep: Disrupted sleep patterns disturb all three doshas.",
                "Sedentary lifestyle: Lack of movement increases Kapha dosha.",
                "Excessive activity: Overexertion and multitasking increase Vata dosha.",
                "Emotional suppression: Repressed emotions particularly disturb Pitta dosha.",
                "Environmental toxins: Pollutants and chemicals can aggravate Pitta dosha."
            ],
            symptomsIntro: "Dosha imbalance manifests through various physical, mental, and emotional symptoms depending on which dosha is aggravated.",
            symptoms: [
                "Vata imbalance: Dry skin, constipation, bloating, anxiety, insomnia, and joint pain.",
                "Pitta imbalance: Acid reflux, skin rashes, excessive body heat, anger, and inflammation.",
                "Kapha imbalance: Weight gain, lethargy, congestion, depression, and fluid retention.",
                "Digestive issues: Weak digestion, gas, and irregular appetite.",
                "Sleep disturbances: Difficulty sleeping or excessive sleeping.",
                "Mood changes: Irritability, anxiety, or emotional instability.",
                "Fatigue: Persistent tiredness and lack of energy.",
                "Mental fog: Difficulty concentrating and memory problems."
            ],
            diagnosis: "Ayurvedic diagnosis involves comprehensive assessment of dosha imbalance through traditional methods. Pulse diagnosis (Nadi Pariksha) evaluates the qualities of pulse at the radial artery. Tongue examination reveals digestive health and dosha status. Physical assessment includes body structure, skin characteristics, and voice quality. Questionnaires assess prakriti (natural constitution) and vikriti (current imbalance). Lifestyle and dietary history help identify causative factors. Overall, the practitioner determines which dosha is aggravated and the degree of imbalance.",
            complicationsIntro: "Chronic dosha imbalance, if left unaddressed, can lead to various health complications and progressive deterioration of well-being.",
            complications: [
                "Chronic diseases: Long-term imbalance may lead to arthritis, diabetes, or hypertension.",
                "Digestive disorders: Imbalanced digestion causes IBS, ulcers, or metabolic issues.",
                "Mental health issues: Anxiety, depression, or cognitive decline may develop.",
                "Autoimmune conditions: Severe Pitta imbalance may trigger autoimmune responses.",
                "Hormonal disturbances: Dosha imbalance affects endocrine function.",
                "Weakened immunity: Ongoing imbalance reduces ojas (vital energy) and immunity.",
                "Skin disorders: Eczema, psoriasis, or acne from specific dosha aggravation.",
                "Quality of life decline: Progressive imbalance affects physical and mental well-being."
            ],
            images: ["doshas1", "doshas2"]
        )),
        Topic(name: "Herbs", iconName: "leaf.fill", content: TopicContent(
            overview: "Ayurvedic herbs are natural medicinal plants used for thousands of years to promote health, prevent disease, and treat various conditions. These herbs work by balancing the doshas, strengthening digestion (agni), and eliminating toxins (ama) from the body. Popular herbs include Ashwagandha for stress, Tulsi for immunity, Triphala for digestion, and Brahmi for cognitive function.",
            causesIntro: "Herbal remedies are used to address health issues caused by dosha imbalance, weak digestion, toxin accumulation, and diminished vitality.",
            causes: [
                "Vata aggravation: Ashwagandha, Bala, and Shatavari ground and nourish.",
                "Pitta aggravation: Amalaki, Guduchi, and Neem cool and detoxify.",
                "Kapha aggravation: Trikatu, Pippali, and Punarnava stimulate and reduce excess.",
                "Weak digestion: Ginger, Triphala, and Hing enhance digestive fire.",
                "Toxin accumulation: Guduchi, Neem, and Turmeric purify the blood.",
                "Stress and anxiety: Ashwagandha, Brahmi, and Jatamansi calm the nervous system.",
                "Low immunity: Tulsi, Amalaki, and Guduchi strengthen immune response.",
                "Inflammation: Turmeric, Boswellia, and Guggulu reduce inflammatory conditions."
            ],
            symptomsIntro: "Herbal treatments are indicated for a wide range of symptoms and health conditions affecting various body systems.",
            symptoms: [
                "Digestive issues: Indigestion, bloating, constipation, or acidity.",
                "Respiratory problems: Cough, cold, congestion, or breathing difficulties.",
                "Stress-related symptoms: Fatigue, insomnia, anxiety, or burnout.",
                "Joint pain: Arthritis, muscle pain, or inflammatory conditions.",
                "Skin disorders: Acne, eczema, psoriasis, or premature aging.",
                "Low energy: Chronic fatigue, weakness, or lack of vitality.",
                "Hormonal imbalance: Menstrual issues, low libido, or thyroid problems.",
                "Cognitive decline: Poor memory, concentration, or learning difficulties."
            ],
            diagnosis: "Ayurvedic herb selection is based on careful assessment of dosha imbalance and specific health concerns. Practitioners evaluate the individual's constitution (prakriti) and current imbalance (vikriti). Pulse and tongue diagnosis reveal underlying dosha disturbance. Symptoms are analyzed in terms of dosha involvement. Digestive capacity (agni) and toxin level (ama) are assessed. Existing conditions and medications are reviewed to avoid herb-drug interactions. The practitioner then prescribes single herbs or polyherbal formulations tailored to restore balance.",
            complicationsIntro: "While Ayurvedic herbs are generally safe when used correctly, improper use can lead to complications and adverse effects.",
            complications: [
                "Allergic reactions: Some individuals may be sensitive to specific herbs.",
                "Digestive upset: Certain herbs may cause nausea or stomach discomfort.",
                "Drug interactions: Herbs may interfere with conventional medications.",
                "Heavy metal contamination: Improperly prepared herbs may contain toxic metals.",
                "Dosha aggravation: Wrong herb choice can worsen existing imbalance.",
                "Pregnancy risks: Some herbs are contraindicated during pregnancy.",
                "Kidney or liver stress: Excessive or prolonged use may affect organ function.",
                "Misdiagnosis delay: Relying solely on herbs may delay needed medical treatment."
            ],
            images: ["herbs1", "herbs2"]
        )),
        Topic(name: "Lifestyle", iconName: "figure.walk", content: TopicContent(
            overview: "Ayurvedic lifestyle (Dinacharya) focuses on daily and seasonal routines that align with natural rhythms to maintain health and prevent disease. It includes practices such as oil massage (abhyanga), tongue scraping, nasal cleansing (nasya), and mindful eating. These practices help balance the doshas, strengthen digestion, eliminate toxins, and promote overall well-being.",
            causesIntro: "Lifestyle-related diseases develop from disregarding natural rhythms, improper daily routines, and habits that disturb dosha balance.",
            causes: [
                "Irregular daily routine: Inconsistent sleep and meal times disturb all doshas.",
                "Improper sleep: Late nights, poor sleep quality, or excessive sleep create imbalance.",
                "Poor eating habits: Irregular meals, overeating, or incompatible food combinations.",
                "Sedentary lifestyle: Lack of physical activity increases Kapha and reduces digestion.",
                "Excessive screen time: Overstimulation aggravates Vata and Pitta doshas.",
                "Stressful work: High-pressure environments disturb all three doshas.",
                "Seasonal disregard: Not adjusting lifestyle according to seasonal changes.",
                "Suppression of natural urges: Ignoring urges for hunger, thirst, sleep, or elimination."
            ],
            symptomsIntro: "Poor lifestyle habits manifest through various physical and mental symptoms indicating dosha imbalance.",
            symptoms: [
                "Low energy: Fatigue, lethargy, or lack of vitality.",
                "Poor digestion: Gas, bloating, indigestion, or irregular appetite.",
                "Sleep problems: Insomnia, difficulty waking, or unrefreshing sleep.",
                "Mental stress: Anxiety, irritability, or difficulty concentrating.",
                "Physical discomfort: Muscle stiffness, joint pain, or body aches.",
                "Weakened immunity: Frequent illnesses or slow recovery.",
                "Skin issues: Dull skin, acne, or premature aging.",
                "Weight imbalance: Unintended weight gain or difficulty maintaining weight."
            ],
            diagnosis: "Ayurvedic lifestyle assessment evaluates daily routines, habits, and their impact on dosha balance. Practitioners review sleep patterns, meal timing, and work schedule. Physical assessment examines signs of imbalance such as pulse, tongue, and skin condition. Questionnaires assess current lifestyle practices and stress levels. Digestive capacity and bowel habits are evaluated. The practitioner identifies which dosha is disturbed and which lifestyle factors are contributing. Personalized recommendations are then provided to restore balance through routine modifications.",
            complicationsIntro: "Neglecting proper lifestyle practices can lead to chronic health issues and progressive deterioration of well-being.",
            complications: [
                "Chronic fatigue: Long-term poor routines deplete energy reserves.",
                "Metabolic disorders: Poor lifestyle leads to diabetes, obesity, or thyroid issues.",
                "Digestive diseases: IBS, ulcers, or inflammatory conditions may develop.",
                "Mental health disorders: Anxiety, depression, or burnout from chronic stress.",
                "Cardiovascular problems: Hypertension and heart disease from poor habits.",
                "Autoimmune conditions: Chronic inflammation may trigger immune dysfunction.",
                "Premature aging: Accelerated aging from toxin accumulation and stress.",
                "Reduced quality of life: Overall health deterioration affecting daily functioning."
            ],
            images: ["lifestyle1", "lifestyle2"]
        )),
        Topic(name: "Wellness", iconName: "heart.fill", content: TopicContent(
            overview: "Ayurvedic wellness is a holistic approach to health that focuses on prevention and promotion of well-being through personalized practices. It emphasizes maintaining harmony between body, mind, and spirit through proper diet, lifestyle, herbs, yoga, meditation, and detoxification. The goal is to preserve health, prevent disease, and achieve optimal vitality and longevity.",
            causesIntro: "Wellness disorders arise from neglecting self-care, ignoring body signals, and living in disharmony with natural rhythms and individual constitution.",
            causes: [
                "Poor self-care: Neglecting daily practices that maintain health.",
                "Ignoring body signals: Disregarding early warning signs of imbalance.",
                "Improper diet: Eating foods unsuitable for your constitution or season.",
                "Lack of preventive care: Waiting for illness before addressing health.",
                "Mental-emotional neglect: Ignoring mental health and emotional needs.",
                "Environmental disharmony: Living in ways that conflict with natural rhythms.",
                "Social imbalance: Unhealthy relationships and social stress affect well-being.",
                "Spiritual disconnection: Lack of purpose or meaning in daily life."
            ],
            symptomsIntro: "Reduced wellness manifests through subtle signs of imbalance that, if addressed early, can prevent more serious conditions.",
            symptoms: [
                "Low vitality: Feeling generally unwell or lacking enthusiasm.",
                "Poor sleep: Not feeling rested despite adequate sleep hours.",
                "Mild digestive issues: Occasional bloating or irregular digestion.",
                "Mood fluctuations: Minor emotional instability or irritability.",
                "Reduced resilience: Taking longer to recover from stress or illness.",
                "Skin changes: Dull complexion or minor skin issues.",
                "Minor aches: Occasional headaches or body discomfort.",
                "Cognitive fog: Slight difficulty with focus or memory."
            ],
            diagnosis: "Ayurvedic wellness assessment evaluates overall health status and identifies early signs of imbalance. Comprehensive consultation reviews physical, mental, and emotional well-being. Pulse and tongue diagnosis detect subtle dosha disturbances. Questionnaires assess current lifestyle, diet, stress levels, and sleep patterns. Digestive capacity and elimination are evaluated. Mental and emotional state is assessed through conversation. The practitioner identifies areas of weakness and provides personalized recommendations for diet, lifestyle, herbs, and practices to restore and maintain optimal wellness.",
            complicationsIntro: "Ignoring wellness needs can lead to gradual health decline and increased susceptibility to chronic diseases.",
            complications: [
                "Progressive imbalance: Minor issues develop into more serious conditions.",
                "Chronic diseases: Diabetes, hypertension, or arthritis may emerge.",
                "Mental health disorders: Anxiety, depression, or cognitive decline.",
                "Autoimmune conditions: Systemic inflammation may trigger immune dysfunction.",
                "Hormonal disorders: Endocrine system disruption from chronic stress.",
                "Reduced longevity: Accelerated aging and shortened lifespan.",
                "Poor quality of life: Gradual deterioration affects daily functioning.",
                "Increased healthcare costs: Preventable conditions require expensive treatment."
            ],
            images: ["wellness1", "wellness2"]
        )),
        Topic(name: "Balance", iconName: "staroflife.fill", content: TopicContent(
            overview: "Balance in Ayurveda refers to the harmonious state of the three doshas (Vata, Pitta, Kapha), proper digestion (agni), healthy tissues (dhatus), and proper elimination (malas). When these elements are balanced, the individual experiences health, vitality, and clarity. Ayurveda provides personalized guidelines for diet, lifestyle, and seasonal routines to maintain this unique equilibrium for each person.",
            causesIntro: "Imbalance develops from living contrary to one's constitution, improper diet, inappropriate lifestyle, seasonal changes, and environmental factors.",
            causes: [
                "Constitutional disregard: Living in ways that oppose your natural dosha type.",
                "Incompatible diet: Eating foods that disturb your specific dosha balance.",
                "Improper routines: Daily activities that don't align with natural cycles.",
                "Seasonal variation: Changes in weather affect different doshas.",
                "Age-related changes: Life stages naturally shift dosha predominance.",
                "Emotional factors: Stress, grief, or trauma disturb dosha equilibrium.",
                "Environmental influences: Climate, pollution, and geography affect balance.",
                "Relationship dynamics: Unhealthy connections create mental and emotional imbalance."
            ],
            symptomsIntro: "Loss of balance manifests through various physical and mental symptoms depending on which dosha is primarily affected.",
            symptoms: [
                "Vata imbalance: Anxiety, dryness, constipation, bloating, and irregular appetite.",
                "Pitta imbalance: Anger, inflammation, acid reflux, skin rashes, and excessive hunger.",
                "Kapha imbalance: Lethargy, weight gain, congestion, depression, and sluggish digestion.",
                "Sleep disruption: Insomnia, disturbed sleep, or excessive sleeping.",
                "Emotional instability: Mood swings, irritability, or emotional numbness.",
                "Physical discomfort: Pain, stiffness, or general malaise.",
                "Cognitive issues: Poor focus, memory problems, or mental fog.",
                "Energy fluctuations: Hyperactivity or fatigue at inappropriate times."
            ],
            diagnosis: "Ayurvedic balance assessment determines which doshas are aggravated or deficient. Comprehensive evaluation includes pulse diagnosis to assess dosha states. Tongue examination reveals digestive health and toxin accumulation. Physical assessment includes body structure, skin quality, and energy levels. Questionnaires evaluate current symptoms relative to constitution. Lifestyle and diet history identify causative factors. Seasonal influences and age-related changes are considered. The practitioner then prescribes personalized diet, lifestyle, herbs, and treatments to restore balance.",
            complicationsIntro: "Prolonged imbalance, if not corrected, can lead to serious health consequences and chronic disease development.",
            complications: [
                "Chronic diseases: Long-term imbalance may cause diabetes, arthritis, or autoimmune disorders.",
                "Mental health disorders: Severe anxiety, depression, or cognitive decline.",
                "Digestive diseases: IBS, ulcers, or inflammatory bowel conditions.",
                "Hormonal disorders: Endocrine disruption affecting metabolism and reproduction.",
                "Cardiovascular disease: Hypertension, high cholesterol, or heart disease.",
                "Respiratory conditions: Asthma, allergies, or chronic bronchitis.",
                "Severe fatigue: Chronic exhaustion and depleted energy reserves.",
                "Quality of life decline: Progressive deterioration affecting all life aspects."
            ],
            images: ["balance1", "balance2"]
        ))
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

    // Default topics and FAQs for other specialists (Dermatologist)
    static let defaultTopics = [
        Topic(name: "Acne", iconName: "face.dashed", content: TopicContent(
            overview: "Acne is a common skin condition that occurs when hair follicles become clogged with oil and dead skin cells. It causes whiteheads, blackheads, pimples, and in severe cases, cysts or nodules. Acne most commonly affects teenagers during puberty but can occur at any age, leading to emotional distress and permanent scarring if untreated.",
            causesIntro: "Acne develops when excess oil production, dead skin cells, and bacteria clog hair follicles, creating an inflammatory response.",
            causes: [
                "Excess oil production: Sebaceous glands produce too much sebum due to hormonal changes.",
                "Dead skin cells: Skin cells don't shed properly and clog hair follicles.",
                "Bacteria: Propionibacterium acnes bacteria multiply in clogged follicles.",
                "Hormonal changes: Androgens increase during puberty, pregnancy, or menstrual cycles.",
                "Genetics: Family history increases susceptibility to acne.",
                "Diet: High-glycemic foods and dairy may worsen acne in some people.",
                "Stress: Stress hormones can increase oil production and inflammation.",
                "Medications: Certain drugs like corticosteroids or lithium can trigger acne."
            ],
            symptomsIntro: "Acne symptoms vary in severity and typically appear on the face, forehead, chest, upper back, and shoulders.",
            symptoms: [
                "Whiteheads: Closed plugged pores beneath the skin surface.",
                "Blackheads: Open plugged pores with dark surface appearance.",
                "Papules: Small red, tender bumps.",
                "Pustules: Pimples with pus at their tips.",
                "Nodules: Large, solid, painful lumps beneath the skin.",
                "Cysts: Painful, pus-filled lumps beneath the skin.",
                "Oily skin: Excessive oiliness and shiny appearance.",
                "Scarring: Dark spots or permanent scars from severe acne."
            ],
            diagnosis: "Dermatologists diagnose acne through physical examination of the skin. The type and severity of lesions are assessed to determine acne grade. Medical history includes age of onset, previous treatments, and aggravating factors. Women may be asked about menstrual cycles and hormonal influences. Skin conditions are evaluated to rule out similar disorders like rosacea or folliculitis. In severe cases, hormonal blood tests may be conducted. Treatment is tailored based on acne severity and patient characteristics.",
            complicationsIntro: "Untreated or severe acne can lead to both physical and psychological complications affecting quality of life.",
            complications: [
                "Scarring: Deep scars, pockmarks, or raised tissue from severe acne.",
                "Hyperpigmentation: Dark spots that persist after acne heals.",
                "Low self-esteem: Acne appearance affects confidence and body image.",
                "Social anxiety: Embarrassment about skin condition affects social interactions.",
                "Depression: Severe acne associated with increased depression risk.",
                "Infection: Picking at acne can introduce bacteria causing secondary infection.",
                "Emotional distress: Acne significantly impacts mental health and well-being.",
                "Permanent skin damage: Severe nodulocystic acne causes lasting skin changes."
            ],
            images: ["acne1", "acne2"]
        )),
        Topic(name: "Eczema", iconName: "hand.raised", content: TopicContent(
            overview: "Eczema (atopic dermatitis) is a chronic inflammatory skin condition causing dry, itchy, and inflamed skin. It commonly begins in childhood but can occur at any age. Eczema results from a combination of genetic, immune system, and environmental factors that impair the skin's barrier function, leading to increased sensitivity and moisture loss.",
            causesIntro: "Eczema develops from a complex interaction of genetic predisposition, immune dysfunction, and environmental triggers.",
            causes: [
                "Genetic factors: Filaggrin gene mutation impairs skin barrier function.",
                "Immune system dysfunction: Overactive immune response triggers inflammation.",
                "Dry skin: Impaired skin barrier leads to moisture loss and irritant entry.",
                "Environmental irritants: Soaps, detergents, and fragrances trigger flare-ups.",
                "Allergens: Pollen, pet dander, dust mites, or mold worsen symptoms.",
                "Stress: Emotional stress triggers or exacerbates eczema flares.",
                "Temperature changes: Heat, cold, or humidity changes irritate skin.",
                "Food allergies: Certain foods like dairy, eggs, or nuts may trigger symptoms."
            ],
            symptomsIntro: "Eczema symptoms vary from person to person and may appear anywhere on the body, commonly affecting elbows, knees, and face.",
            symptoms: [
                "Dry skin: Persistent skin dryness and scaling.",
                "Itching: Intense itching, often worse at night.",
                "Red to brownish-gray patches: Discolored skin patches on hands, feet, ankles, wrists, neck, or eyelids.",
                "Small raised bumps: Bumps that may leak fluid when scratched.",
                "Thickened skin: Leather-like patches from chronic scratching (lichenification).",
                "Cracked skin: Painful cracks that may bleed.",
                "Raw sensitive skin: Inflamed and tender skin areas.",
                "Oozing or crusting: Weeping sores from scratched skin."
            ],
            diagnosis: "Dermatologists diagnose eczema through comprehensive clinical evaluation. Detailed medical history includes family history of allergies or asthma. Physical examination identifies characteristic skin lesions and distribution. Patch testing may identify specific allergens causing reactions. Skin biopsy may be performed to rule out other conditions. Allergy tests detect triggering substances. Evaluation assesses severity and impact on quality of life. Diagnosis is based on chronic or relapsing itchy dermatitis with characteristic distribution and morphology.",
            complicationsIntro: "Eczema complications can significantly affect skin health, quality of life, and increase susceptibility to other conditions.",
            complications: [
                "Chronic itchy skin: Persistent, severe itching affecting sleep and daily activities.",
                "Skin infections: Scratching breaks skin allowing bacterial or viral entry.",
                "Neurodermatitis: Chronic, itchy skin from habitual scratching.",
                "Sleep problems: Itching interferes with restful sleep.",
                "Psychological effects: Anxiety, depression, or social withdrawal from appearance.",
                "Contact dermatitis: Increased sensitivity to substances.",
                "Asthma and hay fever: Eczema associated with increased allergic condition risk.",
                "Impaired quality of life: Chronic condition affects emotional well-being and relationships."
            ],
            images: ["eczema1", "eczema2"]
        )),
        Topic(name: "Psoriasis", iconName: "flame", content: TopicContent(
            overview: "Psoriasis is a chronic autoimmune condition that accelerates skin cell growth, causing thick, scaly patches on the skin's surface. It occurs when the immune system mistakenly attacks healthy skin cells, triggering rapid skin cell production. These excess cells form scales and red patches that can be itchy and painful, significantly impacting quality of life.",
            causesIntro: "Psoriasis develops from immune system dysfunction combined with genetic and environmental triggers.",
            causes: [
                "Immune system dysfunction: T cells attack healthy skin cells by mistake.",
                "Genetics: Family history significantly increases psoriasis risk.",
                "Stress: High stress levels trigger or worsen psoriasis flares.",
                "Infections: Streptococcal throat infections trigger guttate psoriasis.",
                "Skin injury: Cuts, scrapes, or sunburn can trigger new lesions (Koebner phenomenon).",
                "Cold weather: Dry, cold conditions worsen psoriasis symptoms.",
                "Smoking: Tobacco use increases risk and severity of psoriasis.",
                "Certain medications: Lithium, antimalarials, and beta-blockers can trigger flares."
            ],
            symptomsIntro: "Psoriasis symptoms vary depending on the type and can range from mild to severe, affecting any part of the body.",
            symptoms: [
                "Red patches: Red skin covered with thick, silvery scales.",
                "Dry cracked skin: Skin that may bleed when irritated.",
                "Itching or burning: Sensations ranging from mild to severe.",
                "Thickened nails: Pitted, ridged, or crumbling nails.",
                "Swollen joints: Psoriatic arthritis causes joint pain and stiffness.",
                "Scalp psoriasis: Scaly plaques on the scalp.",
                "Nail changes: Pitting, discoloration, or separation from nail bed.",
                "Joint pain: Stiffness, swelling, and reduced range of motion."
            ],
            diagnosis: "Dermatologists diagnose psoriasis through clinical examination and medical history. Physical examination identifies characteristic scaly plaques and distribution patterns. Skin biopsy may confirm diagnosis and rule out other conditions. Blood tests assess for psoriatic arthritis markers. Joint evaluation examines for arthritic changes. Family history of psoriasis is reviewed. Nail examination checks for characteristic pitting or separation. Diagnosis is primarily based on appearance of skin lesions, with biopsy or imaging used for confirmation when needed.",
            complicationsIntro: "Psoriasis complications extend beyond the skin, affecting joints, cardiovascular health, and emotional well-being.",
            complications: [
                "Psoriatic arthritis: Joint damage and progressive deformity.",
                "Eye conditions: Conjunctivitis, blepharitis, or uveitis.",
                "Cardiovascular disease: Increased risk of heart disease and stroke.",
                "Metabolic syndrome: Obesity, high blood pressure, and diabetes.",
                "Mental health: Depression, anxiety, and social isolation.",
                "Low self-esteem: Visible skin plaques affect confidence.",
                "Skin cancer: Increased risk from certain psoriasis treatments.",
                "Reduced quality of life: Chronic condition impacts daily functioning and relationships."
            ],
            images: ["psoriasis1", "psoriasis2"]
        )),
        Topic(name: "Skin Cancer", iconName: "sun.max.fill", content: TopicContent(
            overview: "Skin cancer is the abnormal growth of skin cells, primarily caused by ultraviolet (UV) radiation from the sun or tanning beds. The three main types are basal cell carcinoma, squamous cell carcinoma, and melanoma. While basal and squamous cell cancers are common and highly treatable, melanoma is the most dangerous and can spread to other organs if not detected early.",
            causesIntro: "Skin cancer develops when DNA damage in skin cells triggers uncontrolled cell growth, primarily from UV radiation exposure.",
            causes: [
                "UV radiation exposure: Excessive sun exposure or tanning bed use.",
                "Fair skin: Less melanin provides less UV protection.",
                "Sunburns: History of severe, blistering sunburns increases risk.",
                "Family history: Genetic predisposition to skin cancer.",
                "Immune suppression: Weakened immune system increases cancer risk.",
                "Radiation therapy: Previous radiation treatment damages skin DNA.",
                "Arsenic exposure: Environmental or occupational arsenic exposure.",
                "Certain moles: Having many moles or abnormal moles (dysplastic nevi)."
            ],
            symptomsIntro: "Skin cancer symptoms vary by type but typically involve changes in the appearance of skin, moles, or new growths.",
            symptoms: [
                "Basal cell carcinoma: Pearly or waxy bump, often with visible blood vessels.",
                "Squamous cell carcinoma: Firm red nodule or flat lesion with scaly crust.",
                "Melanoma: Large brownish spot with darker speckles or changing mole.",
                "Asymmetry: One half of mole doesn't match the other half.",
                "Border irregularity: Edges are ragged, notched, or blurred.",
                "Color changes: Uneven color with shades of brown, black, or pink.",
                "Diameter: Lesions larger than 6mm (quarter inch) across.",
                "Evolving: Moles or lesions that change in size, shape, or color over time."
            ],
            diagnosis: "Dermatologists diagnose skin cancer through comprehensive skin examination. Visual inspection uses dermoscopy for detailed lesion examination. Skin biopsy removes suspicious tissue for laboratory analysis. Biopsy determines cancer type, depth, and characteristics. For melanoma, sentinel lymph node biopsy may assess spread. Imaging tests like CT or MRI scan for advanced cancer staging. Regular skin checks monitor for new or changing lesions. Early detection is crucial for successful treatment, especially for melanoma.",
            complicationsIntro: "Untreated or advanced skin cancer can lead to serious complications including spread to other organs and significant tissue damage.",
            complications: [
                "Metastasis: Cancer spreads to lymph nodes, bones, or internal organs.",
                "Tissue destruction: Cancer invades and destroys surrounding healthy tissue.",
                "Disfigurement: Surgical removal may affect appearance and function.",
                "Recurrent cancer: Cancer returns after treatment.",
                "Nerve damage: Tumor growth affects sensory nerves.",
                "Infection: Ulcerated tumors are prone to secondary infection.",
                "Psychological impact: Cancer diagnosis causes anxiety and distress.",
                "Treatment side effects: Surgery, radiation, or chemotherapy cause various complications."
            ],
            images: ["sc1", "sc2"]
        )),
        Topic(name: "Dermatitis", iconName: "hand.raised.slash", content: TopicContent(
            overview: "Dermatitis is a general term for skin inflammation causing red, swollen, and itchy skin. It encompasses various conditions including atopic dermatitis (eczema), contact dermatitis, seborrheic dermatitis, and stasis dermatitis. Different types have different causes but share similar symptoms of inflammation, itching, and skin barrier disruption.",
            causesIntro: "Dermatitis develops from various internal and external factors that trigger skin inflammation and barrier dysfunction.",
            causes: [
                "Contact dermatitis: Direct contact with allergens or irritants like poison ivy or nickel.",
                "Atopic tendency: Genetic predisposition to allergic conditions and sensitive skin.",
                "Seborrheic factors: Yeast overgrowth (Malassezia) and excessive oil production.",
                "Stasis dermatitis: Poor circulation and venous insufficiency in legs.",
                "Dry skin: Environmental factors and aging reduce skin moisture.",
                "Immune response: Allergic reactions to foods, pollen, or other allergens.",
                "Irritants: Soaps, detergents, solvents, or harsh chemicals.",
                "Stress: Emotional stress exacerbates inflammatory skin responses."
            ],
            symptomsIntro: "Dermatitis symptoms vary by type but commonly include redness, itching, and skin lesions that may blister or ooze.",
            symptoms: [
                "Redness: Inflamed, reddened skin areas.",
                "Itching: Pruritus ranging from mild to severe.",
                "Dryness: Scaly, flaking, or cracked skin.",
                "Blisters: Fluid-filled blisters that may ooze or crust.",
                "Swelling: Edema and puffiness in affected areas.",
                "Thickened skin: Lichenification from chronic scratching.",
                "Pain or tenderness: Discomfort in inflamed areas.",
                "Crusting: Yellow or honey-colored crusts from oozing lesions."
            ],
            diagnosis: "Dermatologists diagnose dermatitis through clinical evaluation and diagnostic testing. Detailed history includes exposure to potential irritants or allergens. Physical examination identifies lesion characteristics and distribution. Patch testing applies small amounts of allergens to skin to identify contact allergens. Skin biopsy may differentiate from similar conditions. Allergy tests identify triggering substances. Microscopic examination (KOH prep) rules out fungal infections. Blood tests may assess for allergic sensitization. Diagnosis determines specific dermatitis type for targeted treatment.",
            complicationsIntro: "Chronic or untreated dermatitis can lead to complications affecting skin integrity, quality of life, and overall health.",
            complications: [
                "Chronic itching: Persistent pruritus affecting sleep and daily activities.",
                "Skin infection: Scratching breaks skin allowing bacterial or viral entry.",
                "Neurodermatitis: Thickened, leathery skin from chronic scratching.",
                "Scarring: Requent scratching or inflammation causes permanent marks.",
                "Sleep disruption: Itching interferes with restful sleep patterns.",
                "Psychological impact: Visible skin condition affects confidence and mental health.",
                "Contact sensitization: Increased sensitivity to more substances over time.",
                "Impaired quality of life: Chronic condition affects social interactions and well-being."
            ],
            images: ["dermatitis1", "dermatitis2"]
        ))
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

import streamlit as st
import pandas as pd
import numpy as np


st.title("Hello World! \n from streamlit")

number = st.slider("Pick a number", 0, 100)

import streamlit as st
import pandas as pd
import numpy as np

# Generate some random data
chart_data = pd.DataFrame(np.random.randn(10, 3), columns=["a", "b", "c"])

st.bar_chart(chart_data)

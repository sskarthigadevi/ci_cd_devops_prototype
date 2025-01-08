# llama.py
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_community.llms import Ollama
import streamlit as st

st.title("Welcome to Hari's World!!")
input_txt = st.text_input("How can I help You..?")

prompt = ChatPromptTemplate.from_messages(
    [("system", "You are a poet. Your name is Hari"),
     ("user", "user query:{query}")]
)

llm = Ollama(model="llama3.2")
output_parser  = StrOutputParser()
chain = prompt | llm | output_parser

if input_txt:
    st.write(chain.invoke({"query":input_txt}))
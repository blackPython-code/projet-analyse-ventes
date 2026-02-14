import plotly.express as px
import pandas as pd

df = pd.read_csv('https://docs.google.com/spreadsheets/d/e/2PACX-1vSC4KusfFzvOsr8WJRgozzsCxrELW4G4PopUkiDbvrrV2lg0S19-zeryp02MC9WYSVBuzGCUtn8ucZW/pub?output=csv')
 
#Ventes par produit

ventes_par_produit = df.groupby("produit")["qte"].sum().reset_index()

figure1 = px.pie(ventes_par_produit, values='qte', names='produit', title='Ventes par produit')

figure1.write_html('ventes-par-produit.html')

#Chiffre d'affaire
df["chiffre_affaire_par_produit"] = df["prix"] * df["qte"]

ch_a_prod = df.groupby("produit")["chiffre_affaire_par_produit"].sum().reset_index()

figure2 = px.pie(ch_a_prod, values="chiffre_affaire_par_produit", names='produit', title="Chiffre d'affaire par produit")

figure2.write_html('Chiffre-affaire-par-produit.html')

(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    109940,       2700]
NotebookOptionsPosition[    109791,       2671]
NotebookOutlinePosition[    110231,       2690]
CellTagsIndexPosition[    110188,       2687]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Exploring the Shape of Utility Functions", "Title",
 InitializationCell->True],

Cell[TextData[StyleBox["Indifference Curves", "Section"]], "Text"],

Cell[TextData[{
 "In the graphic below, the dotted lines illustrate the indifference curves \
passing through points of equal consumption of the two goods for a \
Cobb-Douglas utility function with both exponents equal to ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox["1", "2"], ".", " "}], TraditionalForm]]],
 " As you drag the top slider, the relative preference for good x versus good \
y changes. As you drag the lower slider, the degree to which the good are \
substitutes or complements for each other changes as illustrated with the \
blue lines. Note with Cobb-Douglas utility, the goods are neither substitutes \
or complements because changing the price of y does not impact the \
consumption of x and vice versa. In the later parts of the simulation, you \
can see the impact these changes have on the demand and Engel curves and on \
income and substitution effects of price changes. Note that the changes you \
make with the sliders in each pictures are independent of what happens in the \
other sections."
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"paramIC0", "=", 
     RowBox[{"{", 
      RowBox[{".5", ",", ".9999"}], "}"}]}], ";", 
    RowBox[{"paramIC1", "=", 
     RowBox[{"{", 
      RowBox[{"alpha1", ",", "sigma1"}], "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"LegendEntries", "=", 
     RowBox[{"{", 
      RowBox[{"\"\<\[Alpha]=0.50, \[Sigma]\[Rule]1.00\>\"", ",", 
       RowBox[{"\"\<\[Alpha]=\>\"", "<>", 
        RowBox[{"ToString", "[", "alpha1", "]"}], "<>", "\"\< ,\[Sigma]=\>\"",
         "<>", 
        RowBox[{"ToString", "[", "sigma1", "]"}]}]}], "}"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Array", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"ICYVal", "[", 
            RowBox[{"x", ",", 
             RowBox[{"Utility", "[", 
              RowBox[{"#", ",", "#", ",", "paramIC0"}], "]"}], ",", 
             "paramIC0"}], "]"}], "&"}], ",", "4", ",", 
          RowBox[{"{", 
           RowBox[{"0.2", ",", ".8"}], "}"}]}], "]"}], ",", 
        RowBox[{"Array", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"ICYVal", "[", 
            RowBox[{"x", ",", 
             RowBox[{"Utility", "[", 
              RowBox[{"#", ",", "#", ",", "paramIC1"}], "]"}], ",", 
             "paramIC1"}], "]"}], "&"}], ",", "4", ",", 
          RowBox[{"{", 
           RowBox[{".2", ",", ".8"}], "}"}]}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
      RowBox[{"AspectRatio", "\[Rule]", 
       FractionBox["1", "1"]}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Black", ",", "Dashed", ",", "Thin"}], "}"}], ",", "Blue"}],
         "}"}]}], ",", 
      RowBox[{"PlotLegends", "\[Rule]", 
       RowBox[{"LineLegend", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Black", ",", "Dashed", ",", "Thin"}], "}"}], ",", 
           "Blue"}], "}"}], ",", "LegendEntries"}], "]"}]}], ",", 
      RowBox[{"Ticks", "\[Rule]", "None"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<Consumption of x\>\"", ",", "\"\<Consumption of y\>\""}],
         "}"}]}]}], "]"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"alpha1", ",", "0.5", ",", "\"\<\[Alpha]\>\""}], "}"}], ",", 
     ".05", ",", ".95", ",", ".05"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sigma1", ",", "0.99", ",", "\"\<\[Sigma]\>\""}], "}"}], ",", 
     ".01", ",", "5", ",", ".05"}], "}"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"Utility", "[", 
        RowBox[{"x_", ",", "y_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "*", 
           RowBox[{"y", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"1000", "/;", 
        RowBox[{
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
         RowBox[{
          RowBox[{"uVal", "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"0", "/;", 
        RowBox[{
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
         RowBox[{
          RowBox[{"uVal", "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"1", "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"uVal", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"1", "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"uVal", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"BudgetYVal", "[", 
        RowBox[{"x_", ",", "px_", ",", "py_", ",", "income_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"income", "/", "py"}], "-", 
        RowBox[{
         RowBox[{"px", "/", "py"}], "*", "x"}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xDemand", "[", 
        RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "/", "px"}], ")"}], "^", 
         RowBox[{"params", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "*", 
        RowBox[{"income", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"yDemand", "[", 
        RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", "py"}], ")"}], 
         "^", 
         RowBox[{"params", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "*", 
        RowBox[{"income", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Expenditure", "[", 
        RowBox[{"px_", ",", "py_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"uVal", "*", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{"1", "/", 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ")"}]}]}]}]}], 
     "}"}]}]}], "]"}]], "Input"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`alpha1$$ = 0.5, $CellContext`sigma1$$ = 
      0.99, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`alpha1$$], 0.5, "\[Alpha]"}, 0.05, 0.95, 0.05}, {{
         Hold[$CellContext`sigma1$$], 0.99, "\[Sigma]"}, 0.01, 5, 0.05}}, 
      Typeset`size$$ = {522., {123., 130.}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      False, $CellContext`alpha1$330$$ = 0, $CellContext`sigma1$335$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`alpha1$$ = 0.5, $CellContext`sigma1$$ = 
          0.99}, "ControllerVariables" :> {
          Hold[$CellContext`alpha1$$, $CellContext`alpha1$330$$, 0], 
          Hold[$CellContext`sigma1$$, $CellContext`sigma1$335$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`paramIC0 = {0.5, 
           0.9999}; $CellContext`paramIC1 = {$CellContext`alpha1$$, \
$CellContext`sigma1$$}; $CellContext`LegendEntries = {
           "\[Alpha]=0.50, \[Sigma]\[Rule]1.00", 
            StringJoin["\[Alpha]=", 
             ToString[$CellContext`alpha1$$], " ,\[Sigma]=", 
             ToString[$CellContext`sigma1$$]]}; Plot[{
            Array[$CellContext`ICYVal[$CellContext`x, 
              $CellContext`Utility[#, #, $CellContext`paramIC0], \
$CellContext`paramIC0]& , 4, {0.2, 0.8}], 
            Array[$CellContext`ICYVal[$CellContext`x, 
              $CellContext`Utility[#, #, $CellContext`paramIC1], \
$CellContext`paramIC1]& , 4, {0.2, 0.8}]}, {$CellContext`x, 0, 1}, 
           PlotRange -> {{0, 1}, {0, 1}}, AspectRatio -> 1/1, 
           PlotStyle -> {{Black, Dashed, Thin}, Blue}, PlotLegends -> 
           LineLegend[{{Black, Dashed, Thin}, 
              Blue}, $CellContext`LegendEntries], Ticks -> None, 
           AxesLabel -> {"Consumption of x", "Consumption of y"}]), 
        "Specifications" :> {{{$CellContext`alpha1$$, 0.5, "\[Alpha]"}, 0.05, 
           0.95, 0.05}, {{$CellContext`sigma1$$, 0.99, "\[Sigma]"}, 0.01, 5, 
           0.05}}, "Options" :> {}, "DefaultOptions" :> {}],
       ImageSizeCache->{573., {184., 191.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`Utility[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (
           Part[$CellContext`params, 
              1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) + (1 - 
             Part[$CellContext`params, 
              1]) $CellContext`y^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
           Part[$CellContext`params, 2] - 1)), $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[1000, 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[0, 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`BudgetYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            
            Blank[]]] := $CellContext`income/$CellContext`py - \
($CellContext`px/$CellContext`py) $CellContext`x, $CellContext`xDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (Part[$CellContext`params, 1]/$CellContext`px)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`yDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := ((1 - Part[$CellContext`params, 1])/$CellContext`py)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`Expenditure[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := $CellContext`uVal (
            Part[$CellContext`params, 1]^
              Part[$CellContext`params, 2] $CellContext`px^(1 - 
               Part[$CellContext`params, 2]) + (1 - 
               Part[$CellContext`params, 1])^
              Part[$CellContext`params, 2] $CellContext`py^(1 - 
               Part[$CellContext`params, 2]))^(1/(1 - 
            Part[$CellContext`params, 2]))}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output"]
}, {2}]],

Cell[CellGroupData[{

Cell["Demand and Engel Curves", "Section"],

Cell["\<\
The next set of graphics illustrate the demand and Engel curves for both \
goods. Once you move the sliders for other variables, the dashed lines \
illustrate the demand curve for baseline values of the income and the price \
of the other good, while the blue lines illustrate the demand curve for the \
new values of incomes and the price of the other good. Similarly, the dashed \
lines indicate the Engel curves for baseline values of the prices and the \
blue lines illustrate the Engel curves for altered levels of the prices. As \
you\[CloseCurlyQuote]ll see if you move the sliders around, the utility \
function form these simulations are based off implies that both goods are \
always normal goods.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"px0", " ", "=", " ", "1"}], ";", " ", 
    RowBox[{"py0", " ", "=", " ", "1"}], ";", " ", 
    RowBox[{"income0", "=", "1"}], ";", " ", 
    RowBox[{"paramDE0", "=", 
     RowBox[{"{", 
      RowBox[{".5", ",", ".99"}], "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"paramDE1", "=", 
     RowBox[{"{", 
      RowBox[{"alpha2", ",", "sigma2"}], "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"LineSpecs", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Black", ",", "Thin", ",", "Dashed"}], "}"}], ",", "Blue"}], 
      "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"IDPointXD", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"xDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], "]"}],
          ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"xDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], "]"}],
          ",", "px1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "px1"}], "}"}]}], "}"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"IDPointYD", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"yDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], "]"}],
          ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"yDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], "]"}],
          ",", "py1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "py1"}], "}"}]}], "}"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"IDPointXE", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"income1", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"income1", ",", 
         RowBox[{"xDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], 
          "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", 
         RowBox[{"xDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], 
          "]"}]}], "}"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"IDPointYE", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"income1", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"income1", ",", 
         RowBox[{"yDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], 
          "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", 
         RowBox[{"yDemand", "[", 
          RowBox[{"px1", ",", "py1", ",", "income1", ",", "paramDE1"}], 
          "]"}]}], "}"}]}], "}"}]}], ";", "\n", 
    RowBox[{"GraphicsGrid", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"xDemand", "[", 
                RowBox[{"px", ",", "py0", ",", "income0", ",", "paramDE1"}], 
                "]"}], ",", "px"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"xDemand", "[", 
                RowBox[{"px", ",", "py1", ",", "income1", ",", "paramDE1"}], 
                "]"}], ",", "px"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"px", ",", "0.01", ",", "5"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "LineSpecs"}], ",", 
           RowBox[{"PlotLabel", "\[Rule]", "\"\<Demand for x\>\""}], ",", 
           RowBox[{"PlotRange", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "5"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
             "\"\<x\>\"", ",", "\"\<\!\(\*SubscriptBox[\(p\), \(x\)]\)\>\""}],
              "}"}]}], ",", 
           RowBox[{"Ticks", "\[Rule]", " ", "None"}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "250"}], ",", 
           RowBox[{"Epilog", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
                RowBox[{"Point", "[", 
                 RowBox[{"IDPointXD", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "}"}], ",", 
              "Dotted", ",", "Thin", ",", 
              RowBox[{"Line", "[", "IDPointXD", "]"}]}], "}"}]}]}], "]"}], 
         ",", "\n", 
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"yDemand", "[", 
                RowBox[{"px0", ",", "py", ",", "income0", ",", "paramDE1"}], 
                "]"}], ",", "py"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"yDemand", "[", 
                RowBox[{"px1", ",", "py", ",", "income1", ",", "paramDE1"}], 
                "]"}], ",", "py"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"py", ",", "0.01", ",", "5"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "LineSpecs"}], ",", 
           RowBox[{"PlotLabel", "\[Rule]", "\"\<Demand for y\>\""}], ",", 
           RowBox[{"PlotRange", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "5"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"AspectRatio", "\[Rule]", 
            RowBox[{"1", "/", "1"}]}], ",", " ", 
           RowBox[{"AxesLabel", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
             "\"\<y\>\"", ",", "\"\<\!\(\*SubscriptBox[\(p\), \(y\)]\)\>\""}],
              "}"}]}], ",", 
           RowBox[{"Ticks", "\[Rule]", " ", "None"}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "250"}], ",", 
           RowBox[{"Epilog", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
                RowBox[{"Point", "[", 
                 RowBox[{"IDPointYD", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "}"}], ",", 
              "Dotted", ",", "Thin", ",", 
              RowBox[{"Line", "[", "IDPointYD", "]"}]}], "}"}]}]}], "]"}]}], 
        "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"xDemand", "[", 
              RowBox[{"px0", ",", "py0", ",", "income", ",", "paramDE1"}], 
              "]"}], ",", 
             RowBox[{"xDemand", "[", 
              RowBox[{"px1", ",", "py1", ",", "income", ",", "paramDE1"}], 
              "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"income", ",", "0", ",", "2"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "LineSpecs"}], ",", 
           RowBox[{"PlotLabel", "\[Rule]", " ", "\"\<Engel curve for x\>\""}],
            ",", 
           RowBox[{"PlotRange", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "2"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "2"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"\"\<Income\>\"", ",", "\"\<x\>\""}], "}"}]}], ",", 
           RowBox[{"Ticks", "\[Rule]", " ", "None"}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "250"}], ",", 
           RowBox[{"Epilog", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
                RowBox[{"Point", "[", 
                 RowBox[{"IDPointXE", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "}"}], ",", 
              "Dotted", ",", "Thin", ",", 
              RowBox[{"Line", "[", "IDPointXE", "]"}]}], "}"}]}]}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"yDemand", "[", 
              RowBox[{"px0", ",", "py0", ",", "income", ",", "paramDE1"}], 
              "]"}], ",", 
             RowBox[{"yDemand", "[", 
              RowBox[{"px1", ",", "py1", ",", "income", ",", "paramDE1"}], 
              "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"income", ",", "0", ",", "2"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "LineSpecs"}], ",", 
           RowBox[{"PlotLabel", "\[Rule]", " ", "\"\<Engel curve for y\>\""}],
            ",", 
           RowBox[{"PlotRange", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "2"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "2"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"\"\<Income\>\"", ",", "\"\<y\>\""}], "}"}]}], ",", 
           RowBox[{"Ticks", "\[Rule]", " ", "None"}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "250"}], ",", 
           RowBox[{"Epilog", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
                RowBox[{"Point", "[", 
                 RowBox[{"IDPointYE", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "}"}], ",", 
              "Dotted", ",", "Thin", ",", 
              RowBox[{"Line", "[", "IDPointYE", "]"}]}], "}"}]}]}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"LineLegend", "[", 
          RowBox[{"LineSpecs", ",", 
           RowBox[{"{", 
            RowBox[{"\"\<Baseline\>\"", ",", "\"\<Changed\>\""}], "}"}]}], 
          "]"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], "]"}]}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"alpha2", ",", ".5", ",", "\"\<\[Alpha]\>\""}], "}"}], ",", 
     ".1", ",", ".9", ",", ".025", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sigma2", ",", "0.99", ",", "\"\<\[Sigma]\>\""}], "}"}], ",", 
     ".01", ",", "5", ",", ".05"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "py1", ",", "1", ",", 
       "\"\<New \!\(\*SubscriptBox[\(p\), \(y\)]\)\>\""}], "}"}], ",", ".1", 
     ",", "2", ",", ".1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "px1", ",", "1", ",", 
       "\"\<New \!\(\*SubscriptBox[\(p\), \(x\)]\)\>\""}], "}"}], ",", ".1", 
     ",", "2", ",", ".1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"income1", ",", "1", ",", "\"\<New income\>\""}], "}"}], ",", 
     ".5", ",", "2", ",", ".1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"Utility", "[", 
        RowBox[{"x_", ",", "y_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "*", 
           RowBox[{"y", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"1000", "/;", 
        RowBox[{
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
         RowBox[{
          RowBox[{"uVal", "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"0", "/;", 
        RowBox[{
         RowBox[{
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
         RowBox[{
          RowBox[{"uVal", "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "*", 
           RowBox[{"x", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"1", "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"uVal", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ICYVal", "[", 
        RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"1", "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"uVal", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"BudgetYVal", "[", 
        RowBox[{"x_", ",", "px_", ",", "py_", ",", "income_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"income", "/", "py"}], "-", 
        RowBox[{
         RowBox[{"px", "/", "py"}], "*", "x"}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xDemand", "[", 
        RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "/", "px"}], ")"}], "^", 
         RowBox[{"params", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "*", 
        RowBox[{"income", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"yDemand", "[", 
        RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", "py"}], ")"}], 
         "^", 
         RowBox[{"params", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "*", 
        RowBox[{"income", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Expenditure", "[", 
        RowBox[{"px_", ",", "py_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
       RowBox[{"uVal", "*", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"px", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "*", 
            RowBox[{"py", "^", 
             RowBox[{"(", 
              RowBox[{"1", "-", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{"1", "/", 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ")"}]}]}]}]}], 
     "}"}]}]}], "]"}]], "Input"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`alpha2$$ = 0.5, $CellContext`income1$$ = 
      1, $CellContext`px1$$ = 1, $CellContext`py1$$ = 
      1, $CellContext`sigma2$$ = 0.99, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`alpha2$$], 0.5, "\[Alpha]"}, 0.1, 0.9, 0.025}, {{
         Hold[$CellContext`sigma2$$], 0.99, "\[Sigma]"}, 0.01, 5, 0.05}, {{
         Hold[$CellContext`py1$$], 1, 
         "New \!\(\*SubscriptBox[\(p\), \(y\)]\)"}, 0.1, 2, 0.1}, {{
         Hold[$CellContext`px1$$], 1, 
         "New \!\(\*SubscriptBox[\(p\), \(x\)]\)"}, 0.1, 2, 0.1}, {{
         Hold[$CellContext`income1$$], 1, "New income"}, 0.5, 2, 0.1}}, 
      Typeset`size$$ = {818., {270., 275.}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      False, $CellContext`alpha2$789$$ = 0, $CellContext`sigma2$790$$ = 
      0, $CellContext`py1$791$$ = 0, $CellContext`px1$792$$ = 
      0, $CellContext`income1$793$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`alpha2$$ = 0.5, $CellContext`income1$$ = 
          1, $CellContext`px1$$ = 1, $CellContext`py1$$ = 
          1, $CellContext`sigma2$$ = 0.99}, "ControllerVariables" :> {
          Hold[$CellContext`alpha2$$, $CellContext`alpha2$789$$, 0], 
          Hold[$CellContext`sigma2$$, $CellContext`sigma2$790$$, 0], 
          Hold[$CellContext`py1$$, $CellContext`py1$791$$, 0], 
          Hold[$CellContext`px1$$, $CellContext`px1$792$$, 0], 
          Hold[$CellContext`income1$$, $CellContext`income1$793$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`px0 = 1; $CellContext`py0 = 
          1; $CellContext`income0 = 
          1; $CellContext`paramDE0 = {0.5, 
           0.99}; $CellContext`paramDE1 = {$CellContext`alpha2$$, \
$CellContext`sigma2$$}; $CellContext`LineSpecs = {{Black, Thin, Dashed}, 
            Blue}; $CellContext`IDPointXD = {{
             $CellContext`xDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1], 0}, {
             $CellContext`xDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1], $CellContext`px1$$}, {
            0, $CellContext`px1$$}}; $CellContext`IDPointYD = {{
             $CellContext`yDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1], 0}, {
             $CellContext`yDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1], $CellContext`py1$$}, {
            0, $CellContext`py1$$}}; $CellContext`IDPointXE = \
{{$CellContext`income1$$, 0}, {$CellContext`income1$$, 
             $CellContext`xDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1]}, {0, 
             $CellContext`xDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1]}}; $CellContext`IDPointYE = \
{{$CellContext`income1$$, 0}, {$CellContext`income1$$, 
             $CellContext`yDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1]}, {0, 
             $CellContext`yDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1]}}; GraphicsGrid[{{
             ParametricPlot[{{
                $CellContext`xDemand[$CellContext`px, $CellContext`py0, \
$CellContext`income0, $CellContext`paramDE1], $CellContext`px}, {
                $CellContext`xDemand[$CellContext`px, $CellContext`py1$$, \
$CellContext`income1$$, $CellContext`paramDE1], $CellContext`px}}, \
{$CellContext`px, 0.01, 5}, PlotStyle -> $CellContext`LineSpecs, PlotLabel -> 
              "Demand for x", PlotRange -> {{0, 1}, {0, 5}}, AspectRatio -> 1,
               AxesLabel -> {"x", "\!\(\*SubscriptBox[\(p\), \(x\)]\)"}, 
              Ticks -> None, ImageSize -> 250, Epilog -> {{
                 PointSize[Large], Blue, 
                 Point[
                  Part[$CellContext`IDPointXD, 2]]}, Dotted, Thin, 
                Line[$CellContext`IDPointXD]}], 
             ParametricPlot[{{
                $CellContext`yDemand[$CellContext`px0, $CellContext`py, \
$CellContext`income0, $CellContext`paramDE1], $CellContext`py}, {
                $CellContext`yDemand[$CellContext`px1$$, $CellContext`py, \
$CellContext`income1$$, $CellContext`paramDE1], $CellContext`py}}, \
{$CellContext`py, 0.01, 5}, PlotStyle -> $CellContext`LineSpecs, PlotLabel -> 
              "Demand for y", PlotRange -> {{0, 1}, {0, 5}}, AspectRatio -> 
              1/1, AxesLabel -> {"y", "\!\(\*SubscriptBox[\(p\), \(y\)]\)"}, 
              Ticks -> None, ImageSize -> 250, Epilog -> {{
                 PointSize[Large], Blue, 
                 Point[
                  Part[$CellContext`IDPointYD, 2]]}, Dotted, Thin, 
                Line[$CellContext`IDPointYD]}]}, {
             Plot[{
               $CellContext`xDemand[$CellContext`px0, $CellContext`py0, \
$CellContext`income, $CellContext`paramDE1], 
               $CellContext`xDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income, $CellContext`paramDE1]}, {$CellContext`income, 0, 2}, 
              PlotStyle -> $CellContext`LineSpecs, PlotLabel -> 
              "Engel curve for x", PlotRange -> {{0, 2}, {0, 2}}, 
              AxesLabel -> {"Income", "x"}, Ticks -> None, ImageSize -> 250, 
              Epilog -> {{
                 PointSize[Large], Blue, 
                 Point[
                  Part[$CellContext`IDPointXE, 2]]}, Dotted, Thin, 
                Line[$CellContext`IDPointXE]}], 
             Plot[{
               $CellContext`yDemand[$CellContext`px0, $CellContext`py0, \
$CellContext`income, $CellContext`paramDE1], 
               $CellContext`yDemand[$CellContext`px1$$, $CellContext`py1$$, \
$CellContext`income, $CellContext`paramDE1]}, {$CellContext`income, 0, 2}, 
              PlotStyle -> $CellContext`LineSpecs, PlotLabel -> 
              "Engel curve for y", PlotRange -> {{0, 2}, {0, 2}}, 
              AxesLabel -> {"Income", "y"}, Ticks -> None, ImageSize -> 250, 
              Epilog -> {{
                 PointSize[Large], Blue, 
                 Point[
                  Part[$CellContext`IDPointYE, 2]]}, Dotted, Thin, 
                Line[$CellContext`IDPointYE]}], 
             LineLegend[$CellContext`LineSpecs, {"Baseline", "Changed"}]}}]), 
        "Specifications" :> {{{$CellContext`alpha2$$, 0.5, "\[Alpha]"}, 0.1, 
           0.9, 0.025, Appearance -> 
           "Labeled"}, {{$CellContext`sigma2$$, 0.99, "\[Sigma]"}, 0.01, 5, 
           0.05}, {{$CellContext`py1$$, 1, 
            "New \!\(\*SubscriptBox[\(p\), \(y\)]\)"}, 0.1, 2, 0.1, 
           Appearance -> 
           "Labeled"}, {{$CellContext`px1$$, 1, 
            "New \!\(\*SubscriptBox[\(p\), \(x\)]\)"}, 0.1, 2, 0.1, 
           Appearance -> 
           "Labeled"}, {{$CellContext`income1$$, 1, "New income"}, 0.5, 2, 
           0.1, Appearance -> "Labeled"}}, "Options" :> {}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{869., {370., 377.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`Utility[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (
           Part[$CellContext`params, 
              1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) + (1 - 
             Part[$CellContext`params, 
              1]) $CellContext`y^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
           Part[$CellContext`params, 2] - 1)), $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[1000, 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[0, 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`BudgetYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            
            Blank[]]] := $CellContext`income/$CellContext`py - \
($CellContext`px/$CellContext`py) $CellContext`x, $CellContext`xDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (Part[$CellContext`params, 1]/$CellContext`px)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`yDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := ((1 - Part[$CellContext`params, 1])/$CellContext`py)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`Expenditure[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := $CellContext`uVal (
            Part[$CellContext`params, 1]^
              Part[$CellContext`params, 2] $CellContext`px^(1 - 
               Part[$CellContext`params, 2]) + (1 - 
               Part[$CellContext`params, 1])^
              Part[$CellContext`params, 2] $CellContext`py^(1 - 
               Part[$CellContext`params, 2]))^(1/(1 - 
            Part[$CellContext`params, 2]))}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output"]
}, {2}]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Income and Substitution Effects", "Section"]], \
"Subsection"],

Cell["\<\
In the simulation below, we can again adjust the shapes of the indifference \
curves by dragging the top two sliders. The blue indifference curve and \
budget are the original point and the red indifference curve and budget are \
the new point. The When you drag the price slider, you can see the effects of \
the price change decomposed into an income effect and a substitution effect. \
Note that the goods are always normal in this example.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"Px0", " ", "=", "1"}], ";", 
     RowBox[{"Py0", "=", "1"}], ";", 
     RowBox[{"Income0", "=", "1"}], ";", " ", 
     RowBox[{"Param", "=", " ", 
      RowBox[{"{", 
       RowBox[{"alphaVal", ",", "sigmaVal"}], "}"}]}], ";", 
     RowBox[{"Income1", "=", "1"}], ";", 
     RowBox[{"Py1", "=", "1"}], ";", "\[IndentingNewLine]", 
     RowBox[{"x0", " ", "=", 
      RowBox[{"xDemand", "[", 
       RowBox[{"Px0", ",", "Py0", ",", "Income0", ",", "Param"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"y0", " ", "=", " ", 
      RowBox[{"yDemand", "[", 
       RowBox[{"Px0", ",", "Py0", ",", "Income0", ",", "Param"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"u0", " ", "=", " ", 
      RowBox[{"Utility", "[", 
       RowBox[{"x0", ",", "y0", ",", "Param"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"x1", " ", "=", " ", 
      RowBox[{"xDemand", "[", 
       RowBox[{"Px1", ",", "Py1", ",", "Income1", ",", "Param"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"y1", "=", 
      RowBox[{"yDemand", "[", 
       RowBox[{"Px1", ",", "Py1", ",", "Income1", ",", "Param"}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"u1", "=", 
      RowBox[{"Utility", "[", 
       RowBox[{"x1", ",", "y1", ",", "Param"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"IHat", " ", "=", " ", 
      RowBox[{"Expenditure", "[", 
       RowBox[{"Px1", ",", "Py1", ",", "u0", ",", "Param"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"xHat", "=", 
      RowBox[{"xDemand", "[", 
       RowBox[{"Px1", ",", "Py1", ",", "IHat", ",", "Param"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"yHat", " ", "=", " ", 
      RowBox[{"yDemand", "[", 
       RowBox[{"Px1", ",", "Py1", ",", "IHat", ",", "Param"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"xMax", " ", "=", 
      RowBox[{"2", "*", 
       RowBox[{"Max", "[", 
        RowBox[{"x0", ",", "x1", ",", "xHat"}], "]"}]}]}], ";", " ", 
     RowBox[{"xMax", " ", "=", " ", "1.5"}], ";", "\[IndentingNewLine]", 
     RowBox[{"yMax", " ", "=", " ", 
      RowBox[{"2", "*", 
       RowBox[{"Max", "[", 
        RowBox[{"y0", ",", "y1", ",", "yHat"}], "]"}]}]}], ";", " ", 
     RowBox[{"yMax", " ", "=", " ", "1.5"}], ";", "\[IndentingNewLine]", 
     RowBox[{"xArrow1", " ", "=", 
      RowBox[{".025", "*", "yMax"}]}], ";", 
     RowBox[{"yArrow1", "=", 
      RowBox[{".025", "*", "xMax"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"xArrow2", " ", "=", " ", 
      RowBox[{"2", "*", "xArrow1"}]}], ";", 
     RowBox[{"yArrow2", " ", "=", 
      RowBox[{"2", "*", "yArrow1"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Lines", "=", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"x0", ",", "y0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "y0"}], "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x1", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "y1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "y1"}], "}"}]}], "}"}], "]"}], ",", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"xHat", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"xHat", ",", "yHat"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "yHat"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"LineStyles", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"{", 
         RowBox[{"Blue", ",", "Dashed"}], "}"}], ",", "Red", ",", 
        RowBox[{"{", 
         RowBox[{"Red", ",", "Dashed"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Darker", "[", "Green", "]"}], ",", "Dashed"}], "}"}]}], 
       "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Legend1", "=", 
      RowBox[{"LineLegend", "[", 
       RowBox[{"LineStyles", ",", "LineNames"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Legend2", " ", "=", " ", 
      RowBox[{"PointLegend", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Darker", "[", "Green", "]"}], ",", "Red"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
         "\"\<Substitution Effect\>\"", ",", "\"\<Income Effect\>\""}], "}"}],
         ",", 
        RowBox[{"LegendMarkers", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<\[LongRightArrow]\>\"", ",", "\"\<\[LongRightArrow]\>\""}], 
          "}"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"LineNames", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
       "\"\<Initial Utility\>\"", ",", "\"\<Initial Budget\>\"", ",", 
        "\"\<New Utility\>\"", ",", "\"\<New Budget\>\"", ",", 
        "\"\<Hypothetical Budget\>\""}], "}"}]}], ";", "\n", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"ICYVal", "[", 
          RowBox[{"x", ",", "u1", ",", "Param"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"BudgetYVal", "[", 
          RowBox[{"x", ",", "Px1", ",", "Py1", ",", "Income1"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"BudgetYVal", "[", 
          RowBox[{"x", ",", "Px1", ",", "Py1", ",", "IHat"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"ICYVal", "[", 
          RowBox[{"x", ",", "u0", ",", "Param"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"BudgetYVal", "[", 
          RowBox[{"x", ",", "Px0", ",", "Py0", ",", "Income0"}], "]"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"x", ",", ".01", ",", "2"}], "}"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "xMax"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "yMax"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"AspectRatio", "\[Rule]", 
        FractionBox["1", "1"]}], ",", 
       RowBox[{"Ticks", "\[Rule]", "None"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"LineStyles", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", 
          RowBox[{"LineStyles", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", 
          RowBox[{"LineStyles", "[", 
           RowBox[{"[", "5", "]"}], "]"}], ",", 
          RowBox[{"LineStyles", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"LineStyles", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"PlotLegends", "\[Rule]", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Placed", "[", 
            RowBox[{"#", ",", "Right"}], "]"}], "&"}], "/@", 
          RowBox[{"{", 
           RowBox[{"Legend1", ",", "Legend2"}], "}"}]}], ")"}]}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", " ", 
        RowBox[{"{", 
         RowBox[{"\"\<x\>\"", ",", "\"\<y\>\""}], "}"}]}], ",", 
       RowBox[{"Epilog", "\[Rule]", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Darker", "[", "Green", "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x0", ",", "xArrow1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"xHat", ",", "xArrow1"}], "}"}]}], "}"}], "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"yArrow1", ",", "y0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"yArrow1", ",", "yHat"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Red", ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"xHat", ",", "xArrow2"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x1", ",", "xArrow2"}], "}"}]}], "}"}], "]"}], ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"yArrow2", ",", "yHat"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"yArrow2", ",", "y1"}], "}"}]}], "}"}], "]"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Darker", "[", "Green", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"xHat", ",", "yHat"}], "}"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"x1", ",", "y1"}], "}"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Blue", ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"x0", ",", "y0"}], "}"}], "]"}]}], "}"}]}], "}"}], 
          ",", "\[IndentingNewLine]", "Dotted", ",", 
          RowBox[{"{", 
           RowBox[{"Red", ",", 
            RowBox[{"Lines", "[", 
             RowBox[{"[", 
              RowBox[{"1", ",", "2"}], "]"}], "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Darker", "[", "Green", "]"}], ",", 
            RowBox[{"Lines", "[", 
             RowBox[{"[", 
              RowBox[{"1", ",", "3"}], "]"}], "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", 
            RowBox[{"Lines", "[", 
             RowBox[{"[", 
              RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "}"}]}], "}"}]}]}], 
      "]"}]}], ",", "\n", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"alphaVal", ",", ".5", ",", "\"\<\[Alpha]\>\""}], "}"}], ",", 
      ".1", ",", ".9", ",", ".025", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"sigmaVal", ",", "0.99", ",", "\"\<\[Sigma]\>\""}], "}"}], ",",
       ".01", ",", "5", ",", ".05"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "Px1", ",", "1", ",", 
        "\"\<New \!\(\*SubscriptBox[\(p\), \(x\)]\)\>\""}], "}"}], ",", ".1", 
      ",", "2", ",", ".1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    RowBox[{"Initialization", "\[RuleDelayed]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Utility", "[", 
         RowBox[{"x_", ",", "y_", ",", "params_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "*", 
            RowBox[{"y", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "/", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}]}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ICYVal", "[", 
         RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
        RowBox[{"1000", "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ICYVal", "[", 
         RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
        RowBox[{"0", "/;", 
         RowBox[{
          RowBox[{
           RowBox[{"params", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
          RowBox[{
           RowBox[{"uVal", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "\[LessEqual]", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "*", 
            RowBox[{"x", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ICYVal", "[", 
         RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"1", "/", 
               RowBox[{"(", 
                RowBox[{"1", "-", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
              RowBox[{"uVal", "^", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"params", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
             RowBox[{
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "/", 
               RowBox[{"(", 
                RowBox[{"1", "-", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
              RowBox[{"x", "^", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"params", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "/", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], 
          "/;", 
          RowBox[{
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], "&&", 
           RowBox[{
            RowBox[{"uVal", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ICYVal", "[", 
         RowBox[{"x_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"1", "/", 
               RowBox[{"(", 
                RowBox[{"1", "-", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
              RowBox[{"uVal", "^", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"params", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "-", 
             RowBox[{
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "/", 
               RowBox[{"(", 
                RowBox[{"1", "-", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "*", 
              RowBox[{"x", "^", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"params", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "/", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}]}], ")"}]}], 
          "/;", 
          RowBox[{
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "2", "]"}], "]"}], ">", "1"}], "&&", 
           RowBox[{
            RowBox[{"uVal", "^", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"params", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
               RowBox[{"params", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ">", 
            RowBox[{
             RowBox[{"params", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "*", 
             RowBox[{"x", "^", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"params", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ")"}], "/", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}]}]}], ")"}]}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"BudgetYVal", "[", 
         RowBox[{"x_", ",", "px_", ",", "py_", ",", "income_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{"income", "/", "py"}], "-", 
         RowBox[{
          RowBox[{"px", "/", "py"}], "*", "x"}]}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"xDemand", "[", 
         RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"params", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "/", "px"}], ")"}], "^", 
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "*", 
         RowBox[{"income", "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"px", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"py", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"yDemand", "[", 
         RowBox[{"px_", ",", "py_", ",", "income_", ",", "params_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", "py"}], ")"}], 
          "^", 
          RowBox[{"params", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "*", 
         RowBox[{"income", "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"px", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"py", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}]}]}]}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Expenditure", "[", 
         RowBox[{"px_", ",", "py_", ",", "uVal_", ",", "params_"}], "]"}], ":=", 
        RowBox[{"uVal", "*", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"params", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"px", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "+", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "*", 
             RowBox[{"py", "^", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"params", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}]}], ")"}], "^", 
          RowBox[{"(", 
           RowBox[{"1", "/", 
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"params", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ")"}]}]}]}]}], 
      "}"}]}]}], "]"}]}]], "Input"],

Cell[BoxData[
 FormBox[
  TagBox[
   FormBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`alphaVal$$ = 0.5, $CellContext`Px1$$ = 
      1, $CellContext`sigmaVal$$ = 0.99, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`alphaVal$$], 0.5, "\[Alpha]"}, 0.1, 0.9, 0.025}, {{
         Hold[$CellContext`sigmaVal$$], 0.99, "\[Sigma]"}, 0.01, 5, 0.05}, {{
         Hold[$CellContext`Px1$$], 1, 
         "New \!\(\*SubscriptBox[\(p\), \(x\)]\)"}, 0.1, 2, 0.1}}, 
      Typeset`size$$ = {543., {182., 188.}}, Typeset`update$$ = 0, 
      Typeset`initDone$$, Typeset`skipInitDone$$ = 
      False, $CellContext`alphaVal$1719$$ = 0, $CellContext`sigmaVal$1720$$ = 
      0, $CellContext`Px1$1721$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       1, TraditionalForm, 
        "Variables" :> {$CellContext`alphaVal$$ = 0.5, $CellContext`Px1$$ = 
          1, $CellContext`sigmaVal$$ = 0.99}, "ControllerVariables" :> {
          Hold[$CellContext`alphaVal$$, $CellContext`alphaVal$1719$$, 0], 
          Hold[$CellContext`sigmaVal$$, $CellContext`sigmaVal$1720$$, 0], 
          Hold[$CellContext`Px1$$, $CellContext`Px1$1721$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`Px0 = 1; $CellContext`Py0 = 
          1; $CellContext`Income0 = 
          1; $CellContext`Param = {$CellContext`alphaVal$$, \
$CellContext`sigmaVal$$}; $CellContext`Income1 = 1; $CellContext`Py1 = 
          1; $CellContext`x0 = $CellContext`xDemand[$CellContext`Px0, \
$CellContext`Py0, $CellContext`Income0, $CellContext`Param]; $CellContext`y0 = \
$CellContext`yDemand[$CellContext`Px0, $CellContext`Py0, \
$CellContext`Income0, $CellContext`Param]; $CellContext`u0 = \
$CellContext`Utility[$CellContext`x0, $CellContext`y0, $CellContext`Param]; \
$CellContext`x1 = $CellContext`xDemand[$CellContext`Px1$$, $CellContext`Py1, \
$CellContext`Income1, $CellContext`Param]; $CellContext`y1 = \
$CellContext`yDemand[$CellContext`Px1$$, $CellContext`Py1, \
$CellContext`Income1, $CellContext`Param]; $CellContext`u1 = \
$CellContext`Utility[$CellContext`x1, $CellContext`y1, $CellContext`Param]; \
$CellContext`IHat = $CellContext`Expenditure[$CellContext`Px1$$, \
$CellContext`Py1, $CellContext`u0, $CellContext`Param]; $CellContext`xHat = \
$CellContext`xDemand[$CellContext`Px1$$, $CellContext`Py1, $CellContext`IHat, \
$CellContext`Param]; $CellContext`yHat = \
$CellContext`yDemand[$CellContext`Px1$$, $CellContext`Py1, $CellContext`IHat, \
$CellContext`Param]; $CellContext`xMax = 
          2 Max[$CellContext`x0, $CellContext`x1, $CellContext`xHat]; \
$CellContext`xMax = 1.5; $CellContext`yMax = 
          2 Max[$CellContext`y0, $CellContext`y1, $CellContext`yHat]; \
$CellContext`yMax = 1.5; $CellContext`xArrow1 = 
          0.025 $CellContext`yMax; $CellContext`yArrow1 = 
          0.025 $CellContext`xMax; $CellContext`xArrow2 = 
          2 $CellContext`xArrow1; $CellContext`yArrow2 = 
          2 $CellContext`yArrow1; $CellContext`Lines = {{
             
             Line[{{$CellContext`x0, 0}, {$CellContext`x0, $CellContext`y0}, {
               0, $CellContext`y0}}], 
             
             Line[{{$CellContext`x1, 0}, {$CellContext`x1, $CellContext`y1}, {
               0, $CellContext`y1}}], 
             
             Line[{{$CellContext`xHat, 
                0}, {$CellContext`xHat, $CellContext`yHat}, {
               0, $CellContext`yHat}}]}}; $CellContext`LineStyles = {
           Blue, {Blue, Dashed}, Red, {Red, Dashed}, {
             Darker[Green], Dashed}}; $CellContext`Legend1 = 
          LineLegend[$CellContext`LineStyles, $CellContext`LineNames]; \
$CellContext`Legend2 = PointLegend[{
             Darker[Green], Red}, {"Substitution Effect", "Income Effect"}, 
            LegendMarkers -> {
             "\[LongRightArrow]", 
              "\[LongRightArrow]"}]; $CellContext`LineNames = {
           "Initial Utility", "Initial Budget", "New Utility", "New Budget", 
            "Hypothetical Budget"}; Plot[{
            $CellContext`ICYVal[$CellContext`x, $CellContext`u1, \
$CellContext`Param], 
            $CellContext`BudgetYVal[$CellContext`x, $CellContext`Px1$$, \
$CellContext`Py1, $CellContext`Income1], 
            $CellContext`BudgetYVal[$CellContext`x, $CellContext`Px1$$, \
$CellContext`Py1, $CellContext`IHat], 
            $CellContext`ICYVal[$CellContext`x, $CellContext`u0, \
$CellContext`Param], 
            $CellContext`BudgetYVal[$CellContext`x, $CellContext`Px0, \
$CellContext`Py0, $CellContext`Income0]}, {$CellContext`x, 0.01, 2}, 
           PlotRange -> {{0, $CellContext`xMax}, {0, $CellContext`yMax}}, 
           AspectRatio -> 1/1, Ticks -> None, PlotStyle -> {
             Part[$CellContext`LineStyles, 3], 
             Part[$CellContext`LineStyles, 4], 
             Part[$CellContext`LineStyles, 5], 
             Part[$CellContext`LineStyles, 1], 
             Part[$CellContext`LineStyles, 2]}, PlotLegends -> 
           Map[Placed[#, 
              Right]& , {$CellContext`Legend1, $CellContext`Legend2}], 
           AxesLabel -> {"x", "y"}, Epilog -> {{
              Darker[Green], 
              
              Arrow[{{$CellContext`x0, $CellContext`xArrow1}, \
{$CellContext`xHat, $CellContext`xArrow1}}], 
              
              Arrow[{{$CellContext`yArrow1, $CellContext`y0}, \
{$CellContext`yArrow1, $CellContext`yHat}}]}, {Red, 
              
              Arrow[{{$CellContext`xHat, $CellContext`xArrow2}, \
{$CellContext`x1, $CellContext`xArrow2}}], 
              
              Arrow[{{$CellContext`yArrow2, $CellContext`yHat}, \
{$CellContext`yArrow2, $CellContext`y1}}]}, {
              PointSize[Large], {
               Darker[Green], 
               Point[{$CellContext`xHat, $CellContext`yHat}]}, {Red, 
               Point[{$CellContext`x1, $CellContext`y1}]}, {Blue, 
               Point[{$CellContext`x0, $CellContext`y0}]}}, Dotted, {Red, 
              Part[$CellContext`Lines, 1, 2]}, {
              Darker[Green], 
              Part[$CellContext`Lines, 1, 3]}, {Blue, 
              Part[$CellContext`Lines, 1, 1]}}]), 
        "Specifications" :> {{{$CellContext`alphaVal$$, 0.5, "\[Alpha]"}, 0.1,
            0.9, 0.025, Appearance -> 
           "Labeled"}, {{$CellContext`sigmaVal$$, 0.99, "\[Sigma]"}, 0.01, 5, 
           0.05}, {{$CellContext`Px1$$, 1, 
            "New \!\(\*SubscriptBox[\(p\), \(x\)]\)"}, 0.1, 2, 0.1, 
           Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
       ImageSizeCache->{594., {255., 262.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`Utility[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (
           Part[$CellContext`params, 
              1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) + (1 - 
             Part[$CellContext`params, 
              1]) $CellContext`y^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
           Part[$CellContext`params, 2] - 1)), $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[1000, 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := Condition[0, 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) <= 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] < 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`ICYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := 
         Condition[((1/(1 - 
              Part[$CellContext`params, 
               1])) $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2]) - (Part[$CellContext`params, 1]/(
             1 - Part[$CellContext`params, 
              1])) $CellContext`x^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]))^(Part[$CellContext`params, 2]/(
            Part[$CellContext`params, 2] - 1)), 
           And[
           Part[$CellContext`params, 2] > 
            1, $CellContext`uVal^((Part[$CellContext`params, 2] - 1)/
              Part[$CellContext`params, 2]) > 
            Part[$CellContext`params, 
               1] $CellContext`x^((Part[$CellContext`params, 2] - 1)/
               Part[$CellContext`params, 2])]], $CellContext`BudgetYVal[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            
            Blank[]]] := $CellContext`income/$CellContext`py - \
($CellContext`px/$CellContext`py) $CellContext`x, $CellContext`xDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := (Part[$CellContext`params, 1]/$CellContext`px)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`yDemand[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`income, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := ((1 - Part[$CellContext`params, 1])/$CellContext`py)^
           Part[$CellContext`params, 2] ($CellContext`income/(
           Part[$CellContext`params, 1]^
             Part[$CellContext`params, 2] $CellContext`px^(1 - 
              Part[$CellContext`params, 2]) + (1 - 
              Part[$CellContext`params, 1])^
             Part[$CellContext`params, 2] $CellContext`py^(1 - 
              Part[$CellContext`params, 2]))), $CellContext`Expenditure[
           Pattern[$CellContext`px, 
            Blank[]], 
           Pattern[$CellContext`py, 
            Blank[]], 
           Pattern[$CellContext`uVal, 
            Blank[]], 
           Pattern[$CellContext`params, 
            Blank[]]] := $CellContext`uVal (
            Part[$CellContext`params, 1]^
              Part[$CellContext`params, 2] $CellContext`px^(1 - 
               Part[$CellContext`params, 2]) + (1 - 
               Part[$CellContext`params, 1])^
              Part[$CellContext`params, 2] $CellContext`py^(1 - 
               Part[$CellContext`params, 2]))^(1/(1 - 
            Part[$CellContext`params, 2]))}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    TraditionalForm],
   Manipulate`InterpretManipulate[1]], TraditionalForm]], "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1680, 1008},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Microsoft Windows (64-bit) (February 25, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 84, 1, 101, "Title",
 InitializationCell->True],
Cell[1573, 38, 66, 0, 53, "Text"],
Cell[1642, 40, 1044, 18, 99, "Text"],
Cell[CellGroupData[{
Cell[2711, 62, 16991, 464, 459, "Input"],
Cell[19705, 528, 9295, 194, 392, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[29034, 727, 42, 0, 70, "Section"],
Cell[29079, 729, 731, 11, 68, "Text"],
Cell[CellGroupData[{
Cell[29835, 744, 25873, 678, 772, "Input"],
Cell[55711, 1424, 14215, 277, 764, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[69960, 1706, 86, 1, 59, "Subsection"],
Cell[70049, 1709, 467, 7, 49, "Text"],
Cell[CellGroupData[{
Cell[70541, 1720, 25604, 669, 1039, "Input"],
Cell[96148, 2391, 13594, 274, 534, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature wxTV#pO3eyZOaAKTi1lOGwJf *)

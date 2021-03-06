�

��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
training/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *#
shared_nametraining/Adam/iter
q
&training/Adam/iter/Read/ReadVariableOpReadVariableOptraining/Adam/iter*
_output_shapes
: *
dtype0	
|
training/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_1
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
|
training/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_2
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
_output_shapes
: *
dtype0
z
training/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nametraining/Adam/decay
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
_output_shapes
: *
dtype0
�
training/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nametraining/Adam/learning_rate
�
/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
training/Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d/kernel/m
�
1training/Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
�
training/Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nametraining/Adam/conv2d/bias/m
�
/training/Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/bias/m*
_output_shapes
:@*
dtype0
�
training/Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_1/kernel/m
�
3training/Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/kernel/m*&
_output_shapes
:@@*
dtype0
�
training/Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_1/bias/m
�
1training/Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
training/Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_2/kernel/m
�
3training/Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/kernel/m*&
_output_shapes
:@@*
dtype0
�
training/Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_2/bias/m
�
1training/Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
training/Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nametraining/Adam/dense/kernel/m
�
0training/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/m*
_output_shapes
:	�*
dtype0
�
training/Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/dense/bias/m
�
.training/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d/kernel/v
�
1training/Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
�
training/Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nametraining/Adam/conv2d/bias/v
�
/training/Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d/bias/v*
_output_shapes
:@*
dtype0
�
training/Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_1/kernel/v
�
3training/Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/kernel/v*&
_output_shapes
:@@*
dtype0
�
training/Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_1/bias/v
�
1training/Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
training/Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!training/Adam/conv2d_2/kernel/v
�
3training/Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/kernel/v*&
_output_shapes
:@@*
dtype0
�
training/Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametraining/Adam/conv2d_2/bias/v
�
1training/Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
training/Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nametraining/Adam/dense/kernel/v
�
0training/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/v*
_output_shapes
:	�*
dtype0
�
training/Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/dense/bias/v
�
.training/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�?
value�?B�? B�?
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
 	keras_api
h

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'trainable_variables
(	variables
)regularization_losses
*	keras_api
R
+trainable_variables
,	variables
-regularization_losses
.	keras_api
h

/kernel
0bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api
R
5trainable_variables
6	variables
7regularization_losses
8	keras_api
R
9trainable_variables
:	variables
;regularization_losses
<	keras_api
R
=trainable_variables
>	variables
?regularization_losses
@	keras_api
h

Akernel
Bbias
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
R
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
�
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem�m�!m�"m�/m�0m�Am�Bm�v�v�!v�"v�/v�0v�Av�Bv�
8
0
1
!2
"3
/4
05
A6
B7
8
0
1
!2
"3
/4
05
A6
B7
 
�
Player_regularization_losses
trainable_variables

Qlayers
	variables
Rmetrics
Snon_trainable_variables
Tlayer_metrics
regularization_losses
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
Ulayer_regularization_losses
trainable_variables

Vlayers
	variables
Wmetrics
Xnon_trainable_variables
Ylayer_metrics
regularization_losses
 
 
 
�
Zlayer_regularization_losses
trainable_variables

[layers
	variables
\metrics
]non_trainable_variables
^layer_metrics
regularization_losses
 
 
 
�
_layer_regularization_losses
trainable_variables

`layers
	variables
ametrics
bnon_trainable_variables
clayer_metrics
regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
�
dlayer_regularization_losses
#trainable_variables

elayers
$	variables
fmetrics
gnon_trainable_variables
hlayer_metrics
%regularization_losses
 
 
 
�
ilayer_regularization_losses
'trainable_variables

jlayers
(	variables
kmetrics
lnon_trainable_variables
mlayer_metrics
)regularization_losses
 
 
 
�
nlayer_regularization_losses
+trainable_variables

olayers
,	variables
pmetrics
qnon_trainable_variables
rlayer_metrics
-regularization_losses
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
�
slayer_regularization_losses
1trainable_variables

tlayers
2	variables
umetrics
vnon_trainable_variables
wlayer_metrics
3regularization_losses
 
 
 
�
xlayer_regularization_losses
5trainable_variables

ylayers
6	variables
zmetrics
{non_trainable_variables
|layer_metrics
7regularization_losses
 
 
 
�
}layer_regularization_losses
9trainable_variables

~layers
:	variables
metrics
�non_trainable_variables
�layer_metrics
;regularization_losses
 
 
 
�
 �layer_regularization_losses
=trainable_variables
�layers
>	variables
�metrics
�non_trainable_variables
�layer_metrics
?regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

A0
B1
 
�
 �layer_regularization_losses
Ctrainable_variables
�layers
D	variables
�metrics
�non_trainable_variables
�layer_metrics
Eregularization_losses
 
 
 
�
 �layer_regularization_losses
Gtrainable_variables
�layers
H	variables
�metrics
�non_trainable_variables
�layer_metrics
Iregularization_losses
QO
VARIABLE_VALUEtraining/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtraining/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtraining/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtraining/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEtraining/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
V
0
1
2
3
4
5
6
7
	8

9
10
11

�0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
��
VARIABLE_VALUEtraining/Adam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEtraining/Adam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEtraining/Adam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEtraining/Adam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEtraining/Adam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEtraining/Adam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:���������22*
dtype0*$
shape:���������22
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_signature_wrapper_800
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp&training/Adam/iter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1training/Adam/conv2d/kernel/m/Read/ReadVariableOp/training/Adam/conv2d/bias/m/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_1/bias/m/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/m/Read/ReadVariableOp1training/Adam/conv2d_2/bias/m/Read/ReadVariableOp0training/Adam/dense/kernel/m/Read/ReadVariableOp.training/Adam/dense/bias/m/Read/ReadVariableOp1training/Adam/conv2d/kernel/v/Read/ReadVariableOp/training/Adam/conv2d/bias/v/Read/ReadVariableOp3training/Adam/conv2d_1/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_1/bias/v/Read/ReadVariableOp3training/Adam/conv2d_2/kernel/v/Read/ReadVariableOp1training/Adam/conv2d_2/bias/v/Read/ReadVariableOp0training/Adam/dense/kernel/v/Read/ReadVariableOp.training/Adam/dense/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_1135
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biastraining/Adam/itertraining/Adam/beta_1training/Adam/beta_2training/Adam/decaytraining/Adam/learning_ratetotalcounttraining/Adam/conv2d/kernel/mtraining/Adam/conv2d/bias/mtraining/Adam/conv2d_1/kernel/mtraining/Adam/conv2d_1/bias/mtraining/Adam/conv2d_2/kernel/mtraining/Adam/conv2d_2/bias/mtraining/Adam/dense/kernel/mtraining/Adam/dense/bias/mtraining/Adam/conv2d/kernel/vtraining/Adam/conv2d/bias/vtraining/Adam/conv2d_1/kernel/vtraining/Adam/conv2d_1/bias/vtraining/Adam/conv2d_2/kernel/vtraining/Adam/conv2d_2/bias/vtraining/Adam/dense/kernel/vtraining/Adam/dense/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_1238�
�
d
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_498

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
G
+__inference_max_pooling2d_layer_call_fn_475

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_4722
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_874

inputs.
*conv2d_conv2d_readvariableop_conv2d_kernel-
)conv2d_biasadd_readvariableop_conv2d_bias2
.conv2d_1_conv2d_readvariableop_conv2d_1_kernel1
-conv2d_1_biasadd_readvariableop_conv2d_1_bias2
.conv2d_2_conv2d_readvariableop_conv2d_2_kernel1
-conv2d_2_biasadd_readvariableop_conv2d_2_bias,
(dense_matmul_readvariableop_dense_kernel+
'dense_biasadd_readvariableop_dense_bias
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp*conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@*
paddingVALID*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp)conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@2
conv2d/BiasAdd}
activation/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������00@2
activation/Relu�
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp.conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp-conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
conv2d_1/BiasAdd�
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
activation_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp.conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:@@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@*
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp-conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@2
conv2d_2/BiasAdd�
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������		@2
activation_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdd�
activation_3/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_3/Sigmoid�
IdentityIdentityactivation_3/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
(__inference_sequential_layer_call_fn_887

inputs
conv2d_kernel
conv2d_bias
conv2d_1_kernel
conv2d_1_bias
conv2d_2_kernel
conv2d_2_bias
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_biasconv2d_1_kernelconv2d_1_biasconv2d_2_kernelconv2d_2_biasdense_kernel
dense_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_7372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�

�
A__inference_conv2d_1_layer_call_and_return_conditional_losses_564

inputs)
%conv2d_readvariableop_conv2d_1_kernel(
$biasadd_readvariableop_conv2d_1_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_1_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
\
@__inference_flatten_layer_call_and_return_conditional_losses_642

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_464

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
F
*__inference_activation_2_layer_call_fn_981

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_2_layer_call_and_return_conditional_losses_6222
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������		@:W S
/
_output_shapes
:���������		@
 
_user_specified_nameinputs
�
D
(__inference_activation_layer_call_fn_927

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_activation_layer_call_and_return_conditional_losses_5402
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������00@:W S
/
_output_shapes
:���������00@
 
_user_specified_nameinputs
�	
�
?__inference_conv2d_layer_call_and_return_conditional_losses_910

inputs'
#conv2d_readvariableop_conv2d_kernel&
"biasadd_readvariableop_conv2d_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp#conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv2d_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������22::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�

�
A__inference_conv2d_1_layer_call_and_return_conditional_losses_937

inputs)
%conv2d_readvariableop_conv2d_1_kernel(
$biasadd_readvariableop_conv2d_1_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_1_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_1_layer_call_fn_492

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4892
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_1002

inputs&
"matmul_readvariableop_dense_kernel%
!biasadd_readvariableop_dense_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_activation_3_layer_call_and_return_conditional_losses_1014

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_conv2d_2_layer_call_and_return_conditional_losses_964

inputs)
%conv2d_readvariableop_conv2d_2_kernel(
$biasadd_readvariableop_conv2d_2_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_737

inputs
conv2d_conv2d_kernel
conv2d_conv2d_bias
conv2d_1_conv2d_1_kernel
conv2d_1_conv2d_1_bias
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
dense_dense_kernel
dense_dense_bias
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_5232 
conv2d/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_activation_layer_call_and_return_conditional_losses_5402
activation/PartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_4722
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_5642"
 conv2d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_1_layer_call_and_return_conditional_losses_5812
activation_1/PartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4892!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_6052"
 conv2d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_2_layer_call_and_return_conditional_losses_6222
activation_2/PartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5062!
max_pooling2d_2/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_6422
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_6602
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_3_layer_call_and_return_conditional_losses_6772
activation_3/PartitionedCall�
IdentityIdentity%activation_3/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
(__inference_sequential_layer_call_fn_785
conv2d_input
conv2d_kernel
conv2d_bias
conv2d_1_kernel
conv2d_1_bias
conv2d_2_kernel
conv2d_2_bias
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasconv2d_1_kernelconv2d_1_biasconv2d_2_kernelconv2d_2_biasdense_kernel
dense_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_7742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�
�
(__inference_sequential_layer_call_fn_748
conv2d_input
conv2d_kernel
conv2d_bias
conv2d_1_kernel
conv2d_1_bias
conv2d_2_kernel
conv2d_2_bias
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasconv2d_1_kernelconv2d_1_biasconv2d_2_kernelconv2d_2_biasdense_kernel
dense_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_7372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_710
conv2d_input
conv2d_conv2d_kernel
conv2d_conv2d_bias
conv2d_1_conv2d_1_kernel
conv2d_1_conv2d_1_bias
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
dense_dense_kernel
dense_dense_bias
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_5232 
conv2d/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_activation_layer_call_and_return_conditional_losses_5402
activation/PartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_4722
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_5642"
 conv2d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_1_layer_call_and_return_conditional_losses_5812
activation_1/PartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4892!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_6052"
 conv2d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_2_layer_call_and_return_conditional_losses_6222
activation_2/PartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5062!
max_pooling2d_2/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_6422
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_6602
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_3_layer_call_and_return_conditional_losses_6772
activation_3/PartitionedCall�
IdentityIdentity%activation_3/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_774

inputs
conv2d_conv2d_kernel
conv2d_conv2d_bias
conv2d_1_conv2d_1_kernel
conv2d_1_conv2d_1_bias
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
dense_dense_kernel
dense_dense_bias
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_5232 
conv2d/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_activation_layer_call_and_return_conditional_losses_5402
activation/PartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_4722
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_5642"
 conv2d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_1_layer_call_and_return_conditional_losses_5812
activation_1/PartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4892!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_6052"
 conv2d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_2_layer_call_and_return_conditional_losses_6222
activation_2/PartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5062!
max_pooling2d_2/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_6422
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_6602
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_3_layer_call_and_return_conditional_losses_6772
activation_3/PartitionedCall�
IdentityIdentity%activation_3/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_2_layer_call_fn_509

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5062
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
E__inference_activation_3_layer_call_and_return_conditional_losses_677

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_conv2d_1_layer_call_fn_944

inputs
conv2d_1_kernel
conv2d_1_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_kernelconv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_5642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
a
E__inference_activation_1_layer_call_and_return_conditional_losses_581

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
a
E__inference_activation_2_layer_call_and_return_conditional_losses_976

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������		@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������		@:W S
/
_output_shapes
:���������		@
 
_user_specified_nameinputs
�
b
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_472

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_489

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
_
C__inference_activation_layer_call_and_return_conditional_losses_540

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������00@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������00@:W S
/
_output_shapes
:���������00@
 
_user_specified_nameinputs
�
a
E__inference_activation_2_layer_call_and_return_conditional_losses_622

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������		@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������		@:W S
/
_output_shapes
:���������		@
 
_user_specified_nameinputs
�
A
%__inference_flatten_layer_call_fn_992

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_6422
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_506

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
A__inference_conv2d_2_layer_call_and_return_conditional_losses_605

inputs)
%conv2d_readvariableop_conv2d_2_kernel(
$biasadd_readvariableop_conv2d_2_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp%conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
$__inference_conv2d_layer_call_fn_917

inputs
conv2d_kernel
conv2d_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_5232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������22::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
F
*__inference_activation_1_layer_call_fn_954

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_1_layer_call_and_return_conditional_losses_5812
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
a
E__inference_activation_1_layer_call_and_return_conditional_losses_949

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
&__inference_conv2d_2_layer_call_fn_971

inputs
conv2d_2_kernel
conv2d_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_kernelconv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_6052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_837

inputs.
*conv2d_conv2d_readvariableop_conv2d_kernel-
)conv2d_biasadd_readvariableop_conv2d_bias2
.conv2d_1_conv2d_readvariableop_conv2d_1_kernel1
-conv2d_1_biasadd_readvariableop_conv2d_1_bias2
.conv2d_2_conv2d_readvariableop_conv2d_2_kernel1
-conv2d_2_biasadd_readvariableop_conv2d_2_bias,
(dense_matmul_readvariableop_dense_kernel+
'dense_biasadd_readvariableop_dense_bias
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp*conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@*
paddingVALID*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp)conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@2
conv2d/BiasAdd}
activation/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������00@2
activation/Relu�
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp.conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp-conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
conv2d_1/BiasAdd�
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
activation_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp.conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:@@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@*
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp-conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@2
conv2d_2/BiasAdd�
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������		@2
activation_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdd�
activation_3/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_3/Sigmoid�
IdentityIdentityactivation_3/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�:
�
__inference__wrapped_model_458
conv2d_input9
5sequential_conv2d_conv2d_readvariableop_conv2d_kernel8
4sequential_conv2d_biasadd_readvariableop_conv2d_bias=
9sequential_conv2d_1_conv2d_readvariableop_conv2d_1_kernel<
8sequential_conv2d_1_biasadd_readvariableop_conv2d_1_bias=
9sequential_conv2d_2_conv2d_readvariableop_conv2d_2_kernel<
8sequential_conv2d_2_biasadd_readvariableop_conv2d_2_bias7
3sequential_dense_matmul_readvariableop_dense_kernel6
2sequential_dense_biasadd_readvariableop_dense_bias
identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp5sequential_conv2d_conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp�
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@*
paddingVALID*
strides
2
sequential/conv2d/Conv2D�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_biasadd_readvariableop_conv2d_bias*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@2
sequential/conv2d/BiasAdd�
sequential/activation/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������00@2
sequential/activation/Relu�
 sequential/max_pooling2d/MaxPoolMaxPool(sequential/activation/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPool�
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_1_conv2d_readvariableop_conv2d_1_kernel*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp�
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_1_biasadd_readvariableop_conv2d_1_bias*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
sequential/conv2d_1/BiasAdd�
sequential/activation_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
sequential/activation_1/Relu�
"sequential/max_pooling2d_1/MaxPoolMaxPool*sequential/activation_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool�
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp9sequential_conv2d_2_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp�
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8sequential_conv2d_2_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:@*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������		@2
sequential/conv2d_2/BiasAdd�
sequential/activation_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������		@2
sequential/activation_2/Relu�
"sequential/max_pooling2d_2/MaxPoolMaxPool*sequential/activation_2/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool�
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
sequential/flatten/Const�
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_2/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:����������2
sequential/flatten/Reshape�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp3sequential_dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	�*
dtype02(
&sequential/dense/MatMul/ReadVariableOp�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/MatMul�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/BiasAdd�
sequential/activation_3/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2!
sequential/activation_3/Sigmoid�
IdentityIdentity#sequential/activation_3/Sigmoid:y:0)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�	
�
?__inference_conv2d_layer_call_and_return_conditional_losses_523

inputs'
#conv2d_readvariableop_conv2d_kernel&
"biasadd_readvariableop_conv2d_bias
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOp#conv2d_readvariableop_conv2d_kernel*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv2d_bias*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������22::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�/
�
C__inference_sequential_layer_call_and_return_conditional_losses_686
conv2d_input
conv2d_conv2d_kernel
conv2d_conv2d_bias
conv2d_1_conv2d_1_kernel
conv2d_1_conv2d_1_bias
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
dense_dense_kernel
dense_dense_bias
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_conv2d_kernelconv2d_conv2d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_5232 
conv2d/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_activation_layer_call_and_return_conditional_losses_5402
activation/PartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_4722
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_conv2d_1_kernelconv2d_1_conv2d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_5642"
 conv2d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_1_layer_call_and_return_conditional_losses_5812
activation_1/PartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4892!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_6052"
 conv2d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_2_layer_call_and_return_conditional_losses_6222
activation_2/PartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5062!
max_pooling2d_2/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_6422
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_6602
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_3_layer_call_and_return_conditional_losses_6772
activation_3/PartitionedCall�
IdentityIdentity%activation_3/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�
�
(__inference_sequential_layer_call_fn_900

inputs
conv2d_kernel
conv2d_bias
conv2d_1_kernel
conv2d_1_bias
conv2d_2_kernel
conv2d_2_bias
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_kernelconv2d_biasconv2d_1_kernelconv2d_1_biasconv2d_2_kernelconv2d_2_biasdense_kernel
dense_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_7742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
!__inference_signature_wrapper_800
conv2d_input
conv2d_kernel
conv2d_bias
conv2d_1_kernel
conv2d_1_bias
conv2d_2_kernel
conv2d_2_bias
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_kernelconv2d_biasconv2d_1_kernelconv2d_1_biasconv2d_2_kernelconv2d_2_biasdense_kernel
dense_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_4582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:���������22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������22
&
_user_specified_nameconv2d_input
�
_
C__inference_activation_layer_call_and_return_conditional_losses_922

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������00@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������00@:W S
/
_output_shapes
:���������00@
 
_user_specified_nameinputs
͆
�
 __inference__traced_restore_1238
file_prefix"
assignvariableop_conv2d_kernel"
assignvariableop_1_conv2d_bias&
"assignvariableop_2_conv2d_1_kernel$
 assignvariableop_3_conv2d_1_bias&
"assignvariableop_4_conv2d_2_kernel$
 assignvariableop_5_conv2d_2_bias#
assignvariableop_6_dense_kernel!
assignvariableop_7_dense_bias)
%assignvariableop_8_training_adam_iter+
'assignvariableop_9_training_adam_beta_1,
(assignvariableop_10_training_adam_beta_2+
'assignvariableop_11_training_adam_decay3
/assignvariableop_12_training_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count5
1assignvariableop_15_training_adam_conv2d_kernel_m3
/assignvariableop_16_training_adam_conv2d_bias_m7
3assignvariableop_17_training_adam_conv2d_1_kernel_m5
1assignvariableop_18_training_adam_conv2d_1_bias_m7
3assignvariableop_19_training_adam_conv2d_2_kernel_m5
1assignvariableop_20_training_adam_conv2d_2_bias_m4
0assignvariableop_21_training_adam_dense_kernel_m2
.assignvariableop_22_training_adam_dense_bias_m5
1assignvariableop_23_training_adam_conv2d_kernel_v3
/assignvariableop_24_training_adam_conv2d_bias_v7
3assignvariableop_25_training_adam_conv2d_1_kernel_v5
1assignvariableop_26_training_adam_conv2d_1_bias_v7
3assignvariableop_27_training_adam_conv2d_2_kernel_v5
1assignvariableop_28_training_adam_conv2d_2_bias_v4
0assignvariableop_29_training_adam_dense_kernel_v2
.assignvariableop_30_training_adam_dense_bias_v
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_training_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp'assignvariableop_9_training_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_training_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_training_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_training_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp1assignvariableop_15_training_adam_conv2d_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_training_adam_conv2d_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp3assignvariableop_17_training_adam_conv2d_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp1assignvariableop_18_training_adam_conv2d_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp3assignvariableop_19_training_adam_conv2d_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_training_adam_conv2d_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_training_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp.assignvariableop_22_training_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp1assignvariableop_23_training_adam_conv2d_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp/assignvariableop_24_training_adam_conv2d_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp3assignvariableop_25_training_adam_conv2d_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp1assignvariableop_26_training_adam_conv2d_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp3assignvariableop_27_training_adam_conv2d_2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp1assignvariableop_28_training_adam_conv2d_2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp0assignvariableop_29_training_adam_dense_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp.assignvariableop_30_training_adam_dense_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31�
Identity_32IdentityIdentity_31:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_32"#
identity_32Identity_32:output:0*�
_input_shapes�
~: :::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

$__inference_dense_layer_call_fn_1009

inputs
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_6602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�H
�
__inference__traced_save_1135
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop1
-savev2_training_adam_iter_read_readvariableop	3
/savev2_training_adam_beta_1_read_readvariableop3
/savev2_training_adam_beta_2_read_readvariableop2
.savev2_training_adam_decay_read_readvariableop:
6savev2_training_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_training_adam_conv2d_kernel_m_read_readvariableop:
6savev2_training_adam_conv2d_bias_m_read_readvariableop>
:savev2_training_adam_conv2d_1_kernel_m_read_readvariableop<
8savev2_training_adam_conv2d_1_bias_m_read_readvariableop>
:savev2_training_adam_conv2d_2_kernel_m_read_readvariableop<
8savev2_training_adam_conv2d_2_bias_m_read_readvariableop;
7savev2_training_adam_dense_kernel_m_read_readvariableop9
5savev2_training_adam_dense_bias_m_read_readvariableop<
8savev2_training_adam_conv2d_kernel_v_read_readvariableop:
6savev2_training_adam_conv2d_bias_v_read_readvariableop>
:savev2_training_adam_conv2d_1_kernel_v_read_readvariableop<
8savev2_training_adam_conv2d_1_bias_v_read_readvariableop>
:savev2_training_adam_conv2d_2_kernel_v_read_readvariableop<
8savev2_training_adam_conv2d_2_bias_v_read_readvariableop;
7savev2_training_adam_dense_kernel_v_read_readvariableop9
5savev2_training_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop-savev2_training_adam_iter_read_readvariableop/savev2_training_adam_beta_1_read_readvariableop/savev2_training_adam_beta_2_read_readvariableop.savev2_training_adam_decay_read_readvariableop6savev2_training_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_training_adam_conv2d_kernel_m_read_readvariableop6savev2_training_adam_conv2d_bias_m_read_readvariableop:savev2_training_adam_conv2d_1_kernel_m_read_readvariableop8savev2_training_adam_conv2d_1_bias_m_read_readvariableop:savev2_training_adam_conv2d_2_kernel_m_read_readvariableop8savev2_training_adam_conv2d_2_bias_m_read_readvariableop7savev2_training_adam_dense_kernel_m_read_readvariableop5savev2_training_adam_dense_bias_m_read_readvariableop8savev2_training_adam_conv2d_kernel_v_read_readvariableop6savev2_training_adam_conv2d_bias_v_read_readvariableop:savev2_training_adam_conv2d_1_kernel_v_read_readvariableop8savev2_training_adam_conv2d_1_bias_v_read_readvariableop:savev2_training_adam_conv2d_2_kernel_v_read_readvariableop8savev2_training_adam_conv2d_2_bias_v_read_readvariableop7savev2_training_adam_dense_kernel_v_read_readvariableop5savev2_training_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@@:@:@@:@:	�:: : : : : : : :@:@:@@:@:@@:@:	�::@:@:@@:@:@@:@:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	�: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	�: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	�: 

_output_shapes
:: 

_output_shapes
: 
�	
�
>__inference_dense_layer_call_and_return_conditional_losses_660

inputs&
"matmul_readvariableop_dense_kernel%
!biasadd_readvariableop_dense_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_activation_3_layer_call_fn_1019

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_3_layer_call_and_return_conditional_losses_6772
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
\
@__inference_flatten_layer_call_and_return_conditional_losses_987

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
conv2d_input=
serving_default_conv2d_input:0���������22@
activation_30
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�M
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
�_default_save_signature
�__call__
+�&call_and_return_all_conditional_losses"�I
_tf_keras_sequential�I{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy"], "loss_weights": null, "sample_weight_mode": null, "weighted_metrics": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}}
�
trainable_variables
	variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
trainable_variables
	variables
regularization_losses
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
�
'trainable_variables
(	variables
)regularization_losses
*	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
+trainable_variables
,	variables
-regularization_losses
.	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

/kernel
0bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 64]}}
�
5trainable_variables
6	variables
7regularization_losses
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
9trainable_variables
:	variables
;regularization_losses
<	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�
=trainable_variables
>	variables
?regularization_losses
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

Akernel
Bbias
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
�
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Activation", "name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
�
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem�m�!m�"m�/m�0m�Am�Bm�v�v�!v�"v�/v�0v�Av�Bv�"
	optimizer
X
0
1
!2
"3
/4
05
A6
B7"
trackable_list_wrapper
X
0
1
!2
"3
/4
05
A6
B7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Player_regularization_losses
trainable_variables

Qlayers
	variables
Rmetrics
Snon_trainable_variables
Tlayer_metrics
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
':%@2conv2d/kernel
:@2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ulayer_regularization_losses
trainable_variables

Vlayers
	variables
Wmetrics
Xnon_trainable_variables
Ylayer_metrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Zlayer_regularization_losses
trainable_variables

[layers
	variables
\metrics
]non_trainable_variables
^layer_metrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
_layer_regularization_losses
trainable_variables

`layers
	variables
ametrics
bnon_trainable_variables
clayer_metrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dlayer_regularization_losses
#trainable_variables

elayers
$	variables
fmetrics
gnon_trainable_variables
hlayer_metrics
%regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ilayer_regularization_losses
'trainable_variables

jlayers
(	variables
kmetrics
lnon_trainable_variables
mlayer_metrics
)regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
nlayer_regularization_losses
+trainable_variables

olayers
,	variables
pmetrics
qnon_trainable_variables
rlayer_metrics
-regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
slayer_regularization_losses
1trainable_variables

tlayers
2	variables
umetrics
vnon_trainable_variables
wlayer_metrics
3regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
xlayer_regularization_losses
5trainable_variables

ylayers
6	variables
zmetrics
{non_trainable_variables
|layer_metrics
7regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
}layer_regularization_losses
9trainable_variables

~layers
:	variables
metrics
�non_trainable_variables
�layer_metrics
;regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
 �layer_regularization_losses
=trainable_variables
�layers
>	variables
�metrics
�non_trainable_variables
�layer_metrics
?regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	�2dense/kernel
:2
dense/bias
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
 �layer_regularization_losses
Ctrainable_variables
�layers
D	variables
�metrics
�non_trainable_variables
�layer_metrics
Eregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
 �layer_regularization_losses
Gtrainable_variables
�layers
H	variables
�metrics
�non_trainable_variables
�layer_metrics
Iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2training/Adam/iter
: (2training/Adam/beta_1
: (2training/Adam/beta_2
: (2training/Adam/decay
%:# (2training/Adam/learning_rate
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
5:3@2training/Adam/conv2d/kernel/m
':%@2training/Adam/conv2d/bias/m
7:5@@2training/Adam/conv2d_1/kernel/m
):'@2training/Adam/conv2d_1/bias/m
7:5@@2training/Adam/conv2d_2/kernel/m
):'@2training/Adam/conv2d_2/bias/m
-:+	�2training/Adam/dense/kernel/m
&:$2training/Adam/dense/bias/m
5:3@2training/Adam/conv2d/kernel/v
':%@2training/Adam/conv2d/bias/v
7:5@@2training/Adam/conv2d_1/kernel/v
):'@2training/Adam/conv2d_1/bias/v
7:5@@2training/Adam/conv2d_2/kernel/v
):'@2training/Adam/conv2d_2/bias/v
-:+	�2training/Adam/dense/kernel/v
&:$2training/Adam/dense/bias/v
�2�
__inference__wrapped_model_458�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *3�0
.�+
conv2d_input���������22
�2�
(__inference_sequential_layer_call_fn_900
(__inference_sequential_layer_call_fn_887
(__inference_sequential_layer_call_fn_785
(__inference_sequential_layer_call_fn_748�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_sequential_layer_call_and_return_conditional_losses_837
C__inference_sequential_layer_call_and_return_conditional_losses_874
C__inference_sequential_layer_call_and_return_conditional_losses_710
C__inference_sequential_layer_call_and_return_conditional_losses_686�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
$__inference_conv2d_layer_call_fn_917�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_conv2d_layer_call_and_return_conditional_losses_910�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_activation_layer_call_fn_927�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_activation_layer_call_and_return_conditional_losses_922�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_max_pooling2d_layer_call_fn_475�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_464�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
&__inference_conv2d_1_layer_call_fn_944�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_1_layer_call_and_return_conditional_losses_937�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_activation_1_layer_call_fn_954�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_activation_1_layer_call_and_return_conditional_losses_949�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_max_pooling2d_1_layer_call_fn_492�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
&__inference_conv2d_2_layer_call_fn_971�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_2_layer_call_and_return_conditional_losses_964�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_activation_2_layer_call_fn_981�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_activation_2_layer_call_and_return_conditional_losses_976�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_max_pooling2d_2_layer_call_fn_509�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_498�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
%__inference_flatten_layer_call_fn_992�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_flatten_layer_call_and_return_conditional_losses_987�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_dense_layer_call_fn_1009�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_1002�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_activation_3_layer_call_fn_1019�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_activation_3_layer_call_and_return_conditional_losses_1014�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference_signature_wrapper_800conv2d_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference__wrapped_model_458�!"/0AB=�:
3�0
.�+
conv2d_input���������22
� ";�8
6
activation_3&�#
activation_3����������
E__inference_activation_1_layer_call_and_return_conditional_losses_949h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
*__inference_activation_1_layer_call_fn_954[7�4
-�*
(�%
inputs���������@
� " ����������@�
E__inference_activation_2_layer_call_and_return_conditional_losses_976h7�4
-�*
(�%
inputs���������		@
� "-�*
#� 
0���������		@
� �
*__inference_activation_2_layer_call_fn_981[7�4
-�*
(�%
inputs���������		@
� " ����������		@�
F__inference_activation_3_layer_call_and_return_conditional_losses_1014X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
+__inference_activation_3_layer_call_fn_1019K/�,
%�"
 �
inputs���������
� "�����������
C__inference_activation_layer_call_and_return_conditional_losses_922h7�4
-�*
(�%
inputs���������00@
� "-�*
#� 
0���������00@
� �
(__inference_activation_layer_call_fn_927[7�4
-�*
(�%
inputs���������00@
� " ����������00@�
A__inference_conv2d_1_layer_call_and_return_conditional_losses_937l!"7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
&__inference_conv2d_1_layer_call_fn_944_!"7�4
-�*
(�%
inputs���������@
� " ����������@�
A__inference_conv2d_2_layer_call_and_return_conditional_losses_964l/07�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������		@
� �
&__inference_conv2d_2_layer_call_fn_971_/07�4
-�*
(�%
inputs���������@
� " ����������		@�
?__inference_conv2d_layer_call_and_return_conditional_losses_910l7�4
-�*
(�%
inputs���������22
� "-�*
#� 
0���������00@
� �
$__inference_conv2d_layer_call_fn_917_7�4
-�*
(�%
inputs���������22
� " ����������00@�
?__inference_dense_layer_call_and_return_conditional_losses_1002]AB0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� x
$__inference_dense_layer_call_fn_1009PAB0�-
&�#
!�
inputs����������
� "�����������
@__inference_flatten_layer_call_and_return_conditional_losses_987a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� }
%__inference_flatten_layer_call_fn_992T7�4
-�*
(�%
inputs���������@
� "������������
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_1_layer_call_fn_492�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_498�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_2_layer_call_fn_509�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_464�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
+__inference_max_pooling2d_layer_call_fn_475�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
C__inference_sequential_layer_call_and_return_conditional_losses_686x!"/0ABE�B
;�8
.�+
conv2d_input���������22
p

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_710x!"/0ABE�B
;�8
.�+
conv2d_input���������22
p 

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_837r!"/0AB?�<
5�2
(�%
inputs���������22
p

 
� "%�"
�
0���������
� �
C__inference_sequential_layer_call_and_return_conditional_losses_874r!"/0AB?�<
5�2
(�%
inputs���������22
p 

 
� "%�"
�
0���������
� �
(__inference_sequential_layer_call_fn_748k!"/0ABE�B
;�8
.�+
conv2d_input���������22
p

 
� "�����������
(__inference_sequential_layer_call_fn_785k!"/0ABE�B
;�8
.�+
conv2d_input���������22
p 

 
� "�����������
(__inference_sequential_layer_call_fn_887e!"/0AB?�<
5�2
(�%
inputs���������22
p

 
� "�����������
(__inference_sequential_layer_call_fn_900e!"/0AB?�<
5�2
(�%
inputs���������22
p 

 
� "�����������
!__inference_signature_wrapper_800�!"/0ABM�J
� 
C�@
>
conv2d_input.�+
conv2d_input���������22";�8
6
activation_3&�#
activation_3���������
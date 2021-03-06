# Directory containing preprocessed MSCOCO data.
MSCOCO_DIR="C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/im2txt/data/mscoco/word_counts_output_file/output_dir"

# Inception v3 checkpoint file.
INCEPTION_CHECKPOINT="C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/im2txt/data/inception_v3.ckpt"

# Directory to save the model.
MODEL_DIR="C:/Tensorflow/tensorflowGPU0p12/Lib/site-packages/tensorflow/models/im2txt/model"

# Build the model.
bazel build -c opt im2txt/...
cd C:\Tensorflow\tensorflowGPU0p12\Lib\site-packages\tensorflow\models\im2txt\bazel-bin\im2txt
# Run the training script.
python train.py \
  --input_file_pattern="${MSCOCO_DIR}/train-?????-of-00256" \
  --inception_checkpoint_file="${INCEPTION_CHECKPOINT}" \
  --train_dir="${MODEL_DIR}/train" \
  --train_inception=false \
  --number_of_steps=1000000
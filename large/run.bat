@echo off
echo Running ogbn-arxiv...
python main.py --method sgformer --dataset ogbn-arxiv --metric acc --lr 0.001 --hidden_channels 256 --use_graph --graph_weight 0.5 ^
 --gnn_num_layers 3 --gnn_dropout 0.5 --gnn_weight_decay 0.0 --gnn_use_residual --gnn_use_weight --gnn_use_bn --gnn_use_act ^
 --trans_num_layers 1 --trans_dropout 0.5 --trans_weight_decay 0.0 --trans_use_residual --trans_use_weight --trans_use_bn ^
 --seed 123 --runs 5 --epochs 1000 --eval_step 9 --device 0

echo Running ogbn-proteins...
python main-batch.py --method sgformer --dataset ogbn-proteins --metric rocauc --lr 0.01 --hidden_channels 64 ^
 --gnn_num_layers 2 --gnn_dropout 0.0 --gnn_weight_decay 0.0 --gnn_use_residual --gnn_use_weight --gnn_use_bn --gnn_use_act ^
 --trans_num_layers 1 --trans_dropout 0.0 --trans_weight_decay 0.0 --trans_use_residual --trans_use_weight --trans_use_bn ^
 --use_graph --graph_weight 0.5 ^
 --batch_size 10000 --seed 123 --runs 5 --epochs 1000 --eval_step 9 --device 1

echo Running amazon2m...
python main-batch.py --method sgformer --dataset amazon2m --metric acc --lr 0.01 --hidden_channels 256 ^
 --gnn_num_layers 3 --gnn_dropout 0.0 --gnn_weight_decay 0.0 --gnn_use_residual --gnn_use_weight --gnn_use_bn --gnn_use_init --gnn_use_act ^
 --trans_num_layers 1 --trans_dropout 0.0 --trans_weight_decay 0.0 --trans_use_residual --trans_use_weight --trans_use_bn ^
 --use_graph --graph_weight 0.5 ^
 --batch_size 100000 --seed 123 --runs 5 --epochs 1000 --eval_step 9 --device 1

echo Running pokec...
python main-batch.py --method sgformer --dataset pokec --rand_split --metric acc --lr 0.01 --hidden_channels 64 ^
 --gnn_num_layers 2 --gnn_dropout 0.0 --gnn_weight_decay 0.0 --gnn_use_residual --gnn_use_weight --gnn_use_bn --gnn_use_init --gnn_use_act ^
 --trans_num_layers 1 --trans_dropout 0.0 --trans_weight_decay 0.0 --trans_use_residual --trans_use_weight --trans_use_bn ^
 --use_graph --graph_weight 0.5 ^
 --batch_size 100000 --seed 123 --runs 5 --epochs 1000 --eval_step 9 --device 1
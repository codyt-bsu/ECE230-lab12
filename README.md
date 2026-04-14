# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Cody Toone
## Summary
Made a state machine using D Flip-flops for both a one-hot and a binary design. The one hot uses a single wire as on for each state and the binary uses a binary number to represent each state. 
## Lab Questions

### Compare and contrast One Hot and Binary encodings
They both use flip flops, but the one hot hot requires more flip-flops or data to be stored. In practical application it woudn't require a decoder. The binary uses less flip-flops or storage but it requires more logic in changing states. 
### Which method did your team find easier, and why?
I found the one hot to be easier to impliment because it was easier to see the logic to change states. 

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
You would want to use the Binary when you need to optimize storage or flip-flop circuits, but in simpler machines where that doesn't matter as much the one hot might be better because you don't need to decode it. 

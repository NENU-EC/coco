% The main entry point of the Coco platform from Matlab/GNU Octave. 
%
% Provides most of the basic functionality of the COCO C code via
% a cocoCall function that takes a string, naming the C function to be called
% (without underscores), as the first argument.
%
% Usage:
%
%   > res = cocoCall('COCOFUNCTION', varargs);
%
% where COCOFUNCTION and the variable argument list are one of the following:
%
%   * cocoEvaluateFunction: problem, x, y 
%       Evaluates problem in point x and saves the result in y. 
%   * cocoObserver: observer_name, observer_options
%       Returns a new COCO observer. 
%   * cocoObserverFree: observer
%       Frees the given observer.
%   * cocoProblemFree: problem
%       Frees the given problem.
%   * cocoProblemGetDimension: problem
%       Returns the number of variables i.e. the dimension of the problem.
%   * cocoProblemGetEvaluations: problem
%       Returns the number of evaluations done on the problem.
%   * cocoProblemGetId: problem
%       Returns the ID of the problem. 
%   * cocoProblemGetLargestValuesOfInterest: problem
%       Returns a vector of size 'dimension' with upper bounds of the region
%         of interest in the decision space for the given problem.
%   * cocoProblemGetName:	problem
%       Returns the name of the problem. 
%   * cocoProblemGetNumberOfObjectives: problem
%       Returns the number of objectives of the problem.
%   * cocoProblemGetSmallestValuesOfInterest: problem
%       Returns a vector of size 'dimension' with lower bounds of the region
%         of interest in the decision space for the given problem.
%   * cocoSetLogLevel: log_level 	
%       Sets the COCO log level to the given value (a string) and returns the
%         previous value. 
%   * cocoSuite: suite_name, suite_instance, suite_options 
%       Returns a new suite.
%   * cocoSuiteFree: suite
%       Frees the given suite (no return value).
%   * cocoSuiteGetNextProblem: suite, observer 
%       Returns the next (observed) problem of the suite or NULL if there is
%         no next problem left. 
%   * cocoSuiteGetProblem: suite, problem_index
%       Returns the problem of the suite defined by problem_index. 
%
% For a more detailed help, type 'help COCOFUNCTION' or 'doc COCOFUNCTION'.
% 
% For more information on the Coco C functions, see <a href="matlab: 
% web('http://numbbo.github.io/coco-doc/C')">the online Coco C documentation</a>.
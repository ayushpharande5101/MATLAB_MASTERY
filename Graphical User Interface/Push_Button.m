function varargout = Push_Button(varargin)
% PUSH_BUTTON MATLAB code for Push_Button.fig
%      PUSH_BUTTON, by itself, creates a new PUSH_BUTTON or raises the existing
%      singleton*.
%
%      H = PUSH_BUTTON returns the handle to a new PUSH_BUTTON or the handle to
%      the existing singleton*.
%
%      PUSH_BUTTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUSH_BUTTON.M with the given input arguments.
%
%      PUSH_BUTTON('Property','Value',...) creates a new PUSH_BUTTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Push_Button_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Push_Button_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2014 The MathWorks, Inc.

% Edit the above text to modify the response to help Push_Button

% Last Modified by GUIDE v2.5 19-Sep-2024 16:27:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Push_Button_OpeningFcn, ...
                   'gui_OutputFcn',  @Push_Button_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Push_Button is made visible.
function Push_Button_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Push_Button (see VARARGIN)

% Choose default command line output for Push_Button
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Push_Button wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Push_Button_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


a = imread('cameraman.png');
axes(handles.axes1);

imshow(a);
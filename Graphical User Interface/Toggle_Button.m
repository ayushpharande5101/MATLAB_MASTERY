function varargout = Toggle_Button(varargin)
% TOGGLE_BUTTON MATLAB code for Toggle_Button.fig
%      TOGGLE_BUTTON, by itself, creates a new TOGGLE_BUTTON or raises the existing
%      singleton*.
%
%      H = TOGGLE_BUTTON returns the handle to a new TOGGLE_BUTTON or the handle to
%      the existing singleton*.
%
%      TOGGLE_BUTTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TOGGLE_BUTTON.M with the given input arguments.
%
%      TOGGLE_BUTTON('Property','Value',...) creates a new TOGGLE_BUTTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Toggle_Button_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Toggle_Button_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2014 The MathWorks, Inc.

% Edit the above text to modify the response to help Toggle_Button

% Last Modified by GUIDE v2.5 19-Sep-2024 16:36:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Toggle_Button_OpeningFcn, ...
                   'gui_OutputFcn',  @Toggle_Button_OutputFcn, ...
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


% --- Executes just before Toggle_Button is made visible.
function Toggle_Button_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Toggle_Button (see VARARGIN)

% Choose default command line output for Toggle_Button
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Toggle_Button wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Toggle_Button_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

A = Toggle_Button_OutputFcn(hObject, eventdata, handles);

if A == 0
    a = ones(256,256);
    axes(handles.axes1);
    imshow(a);

else

    a = imread("cameraman.png");
    axes(handles.axes1);
    imshow(a);
end
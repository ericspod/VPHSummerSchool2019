% Script to prepare the data for the construction a Statistical Shape Model

% Where the data is, and where the atlas will be:
DataDir = 'C:\Users\vph\Downloads\cases\cases';
AtlasRoot = 'C:\Users\vph\Downloads\Atlas';

% Move each case to its folder, merging the LV and RV segmentation masks



% Where we will put the data:
AtlasDataRoot = fullfile(AtlasRoot,'AtlasData');
if ~exist(AtlasDataRoot,'dir'), mkdir(AtlasDataRoot); end 

% Go through the list of cases in the folder:
ListIDs = [];
ListCases = dir(DataDir);
for iC = 3:numel(ListCases)
    namefile =  ListCases(iC).name;
    
    RangeNameToSearch = 1:6;
    ID = GetIDfromName(namefile(RangeNameToSearch));
    CaseDirName = sprintf('Case%03i',ID);
    CaseDir = fullfile(AtlasDataRoot,CaseDirName);
    if ~exist(CaseDir,'dir'), mkdir(CaseDir); end 
    
    if isempty(find(ListIDs==ID))
        % Get the LV and RV masks, and merge them:
        LVmaskFile = ls(fullfile(DataDir,[namefile(RangeNameToSearch) '*seg.nii.gz']));
        RVmaskFile = ls(fullfile(DataDir,[namefile(RangeNameToSearch) '*seg3labelclean.nii.gz']));
        [LVim,hd] = io_ReadMedicalImage(fullfile(DataDir,LVmaskFile));
        [RVim,hd] = io_ReadMedicalImage(fullfile(DataDir,RVmaskFile));
        Mask = LVim + RVim;
        nameMask = fullfile(CaseDir,sprintf('Mask%03i.nii',ID));
        io_WriteMedicalImage(nameMask,Mask,hd);
        ListIDs = [ListIDs ID];
    end
end

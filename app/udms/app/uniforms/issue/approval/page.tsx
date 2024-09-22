'use client'
import { Alert, AlertTitle, Button, Dialog, DialogActions, DialogContent, DialogTitle, FormControl, Grid, InputLabel, LinearProgress, MenuItem, OutlinedInput, Paper, Select, SelectChangeEvent, TableHead, TextField, Typography } from '@mui/material';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableRow from '@mui/material/TableRow';
import { styled } from '@mui/material/styles';
import dayjs from 'dayjs';
import { useEffect, useState } from 'react';
import { refreshInactiveToken, requestResourceWithCredsPost } from "../../../services/ServiceUtil";

export default function Page() {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(4);
  const [rows, setRows] = useState<UniformIssue[]>([]);
  const [selectedDepartmentName, setSelectedDepartmentName] = useState("");
  const [departmentNames, setDepartmentNames] = useState<IdNamePair[]>([]);
  const [open, setOpen] = useState(false);
  const [openAction, setOpenAction] = useState(false);
  const [openActionStatus, setOpenActionStatus] = useState(false);
  const [actionStatus, setActionStatus] = useState(false);
  const [selectedUniformIssue, setSelectedUniformIssue] = useState<UniformIssue>(null);
  const [uniformIssueDetailRows, setUniformIssueDetailRows] = useState<UniformIssueDetail[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isForbidden, setIsForbidden] = useState(false);

  // const redirectURIApi = "http://localhost:8082/udmsapi";
  const redirectURIApi = "https://aps3.zemenbank.com/TestUDMS/udmsapi";
  // const redirectURIApi = "https://aps3.zemenbank.com/UDMS/udmsapi";


  let apiUniformIndexUrl = redirectURIApi + "/uniforms/manager/indexissue";
  let apiUniformApproveUrl = redirectURIApi + "/uniforms/manager/approveissue";
  let apiUniformRejectUrl = redirectURIApi + "/uniforms/manager/rejectissue";
  let apiEmployeesCommonDepartmentNames = redirectURIApi + "/employees/common/departmentNames";
  let apiUniformsCommonEmployeeUniformIssueItems = redirectURIApi + "/uniforms/common/employeeuniformissueitemsforissue";

  useEffect(() => {
    try {
      refreshInactiveToken().then(data => {
    });
    } catch (error) {
    }
  }, []);

  useEffect(() => {
    const fetchData = async () => {
      await refreshInactiveToken();
      const queryParams = {
        department: selectedDepartmentName,
      };
      const rowData = await requestResourceWithCredsPost(apiUniformIndexUrl, queryParams);
      if (rowData.status && rowData.status === 403) {
        setIsForbidden(true);
      }
      else {
        setRows(rowData);
        const dataDepNames = await requestResourceWithCredsPost(apiEmployeesCommonDepartmentNames, []);
        setDepartmentNames(dataDepNames);
        setIsLoading(false);
      }
    };
    fetchData();
  }, [selectedDepartmentName]);

  const handleActionStatusClose = () => {
    setOpenActionStatus(false);
  };

  const handleActionClose = () => {
    setOpenAction(false);
  };

  const handleActionButtonClick = (row) => {
    requestResourceWithCredsPost(apiUniformsCommonEmployeeUniformIssueItems, row).then(data => {
      setSelectedUniformIssue(row);
      setUniformIssueDetailRows(data);
      setOpenAction(true);
    });
  };

  const NoWrapPadTblCell = styled(TableCell)(({ theme }) => ({
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
  }));


  function ActionDialog() {
    const [remark, setRemark] = useState("");
    const [isErrorMessageHidden, setErrorMessageHidden] = useState(false);

    const handleRejectActionButtonClick = async (event) => {
      let tempUniformIssue = selectedUniformIssue;
      tempUniformIssue.remark = remark;
      setSelectedUniformIssue(tempUniformIssue);
      try {
        const response = await requestResourceWithCredsPost(apiUniformRejectUrl, selectedUniformIssue);
        //SUCCESS
        if (response) {
          setIsLoading(true);
          const queryParams = {
            page: page,
            rowsPerPage: rowsPerPage
          };
          const dataIndex = await requestResourceWithCredsPost(apiUniformIndexUrl, queryParams);
          if (dataIndex) {
            setRows(dataIndex);
            const dataDepNames = await requestResourceWithCredsPost(apiEmployeesCommonDepartmentNames, []);
            setDepartmentNames(dataDepNames);
            setIsLoading(false);
          }
          setActionStatus(true);
          setOpenAction(false);
          setOpenActionStatus(true);
        }
        else {
          setActionStatus(false);
          setOpenAction(false);
          setOpenActionStatus(true);
        }
      } catch (error) {
        //ERROR
        setActionStatus(false);
        setOpenAction(false);
        setOpenActionStatus(true);
      }
    };

    const handleApproveActionButtonClick = async (event) => {
      // if (remark) {
      let tempUniformIssue = selectedUniformIssue;
      tempUniformIssue.remark = remark;
      setSelectedUniformIssue(tempUniformIssue);
      setErrorMessageHidden(false);
      try {
        const response = await requestResourceWithCredsPost(apiUniformApproveUrl, selectedUniformIssue);
        //SUCCESS
        if (response) {
          setIsLoading(true);
          const queryParams = {
            page: page,
            rowsPerPage: rowsPerPage
          };
          const dataIndex = await requestResourceWithCredsPost(apiUniformIndexUrl, queryParams);
          if (dataIndex) {
            setRows(dataIndex);
            const dataDepNames = await requestResourceWithCredsPost(apiEmployeesCommonDepartmentNames, []);
            setDepartmentNames(dataDepNames);
            setIsLoading(false);
          }
          setActionStatus(true);
          setOpenAction(false);
          setOpenActionStatus(true);
        }
        else {
          setActionStatus(false);
          setOpenAction(false);
          setOpenActionStatus(true);
        }


      } catch (error) {
        //ERROR
        setActionStatus(false);
        setOpenAction(false);
        setOpenActionStatus(true);
      }
    };

    const handleRemarkChange = (event) => {
      setRemark(event.target.value);
    };


    return (
      <Dialog open={openAction}
        onClose={handleActionClose}
      >
        <DialogTitle align='center'>
          <Grid item xs={12}><span>Approve Issue</span></Grid>
          <Grid item xs={12}>
            {isErrorMessageHidden && <Alert severity="error" sx={{ m: 1, width: 1 }}>
              <AlertTitle>Error</AlertTitle>
              <Typography>Please fill the required fields marked(*)</Typography>
            </Alert>
            }
          </Grid>
        </DialogTitle>
        <DialogContent sx={{ minWidth: 600 }}>
          <Grid container spacing={2} >
            <Grid item xs={12}>
              <FormControl sx={{ m: 1, width: 1 }}>
                <Paper elevation={5} sx={{ padding: 1 }}>
                  {selectedUniformIssue?.name}
                </Paper>
              </FormControl>
            </Grid>
            <TableContainer>
              <Table>
                <TableHead>
                  {(
                    <TableRow>
                      <NoWrapPadTblCell>Last Date</NoWrapPadTblCell>
                      <NoWrapPadTblCell>Item</NoWrapPadTblCell>
                      <NoWrapPadTblCell>Size</NoWrapPadTblCell>
                      <NoWrapPadTblCell>Next Date</NoWrapPadTblCell>
                    </TableRow>
                  )}
                </TableHead>
                <TableBody>
                   {uniformIssueDetailRows.map(row => (
                    <TableRow>
                      <NoWrapPadTblCell>{row.uniformRequisitionDetail?.lastIssueDate ? dayjs(row.uniformRequisitionDetail?.lastIssueDate).format("MMM/DD/YYYY") : ''}</NoWrapPadTblCell>
                      <NoWrapPadTblCell>{row.uniformRequisitionDetail?.itemName}</NoWrapPadTblCell>
                      <NoWrapPadTblCell>{row.uniformRequisitionDetail?.size}</NoWrapPadTblCell>
                      <NoWrapPadTblCell>{row.uniformRequisitionDetail?.nextIssueDate ? dayjs(row.uniformRequisitionDetail?.nextIssueDate).format("MMM/DD/YYYY") : ''}</NoWrapPadTblCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
            <Grid item xs={12}>
              <FormControl sx={{ m: 1, width: 1 }}>
                <TextField
                  name="remark"
                  required
                  label="Remark"
                  multiline
                  rows={3}
                  value={remark}
                  onChange={handleRemarkChange}
                />
              </FormControl>
            </Grid>
          </Grid>
        </DialogContent>
        <DialogActions>
          <Button variant="contained" color="secondary" type="submit" onClick={handleRejectActionButtonClick}>Reject</Button>
          <Button variant="contained" type="submit" onClick={handleApproveActionButtonClick}>Approve</Button>
        </DialogActions>
      </Dialog>
    );
  }

  function DepartmentNameSelectInput() {

    const ITEM_HEIGHT = 48;
    const ITEM_PADDING_TOP = 8;
    const MenuProps = {
      PaperProps: {
        style: {
          maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
          width: 250,
        },
      },
    };

    const handleChange = (event: SelectChangeEvent) => {
      setSelectedDepartmentName(event.target.value);
    };

    return (
      <div>
        <FormControl sx={{ m: 0, width: 1 }} >
          <InputLabel id="department-label">Department/Branch</InputLabel>
          <Select
            labelId="department-label"
            value={selectedDepartmentName}
            onChange={handleChange}
            input={<OutlinedInput label="Department/Branch" />}
            MenuProps={MenuProps}
          >
            {departmentNames && departmentNames.map((departmentName) => (
              <MenuItem
                key={departmentName.id}
                value={departmentName.name}
              >
                {departmentName.name}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>
    );
  }

  if (isForbidden) {
    return (
      <div>
        <Alert variant="outlined" severity="error">
          Access is forbidden.
        </Alert>
      </div>
    )
  }

  if (isLoading) {
    return <div><LinearProgress /></div>;
  }

  return (
    <>
      <div>
        <div>
          <Dialog open={openActionStatus} onClose={handleActionStatusClose}>
            <DialogTitle align='center'>Action Status</DialogTitle>
            <DialogContent>
              {actionStatus && <Alert severity="success">Action Success.</Alert>}
              {!actionStatus && <Alert severity="error">Action Failure.</Alert>}
            </DialogContent>
          </Dialog>
        </div>
        <ActionDialog />
      </div>

      <Grid>

      <Grid container spacing={2} paddingTop={2}>
          <Grid item xs={4}>
            <DepartmentNameSelectInput />
          </Grid>
        </Grid>

        <TableContainer>
          <Table>
            <TableHead>
              {(
                <TableRow>
                  <NoWrapPadTblCell>Name</NoWrapPadTblCell>
                  <NoWrapPadTblCell>Branch</NoWrapPadTblCell>
                  <TableCell>Prepared</TableCell>
                  <TableCell>Date</TableCell>
                  <TableCell>Action</TableCell>
                </TableRow>
              )}
            </TableHead>
            <TableBody>
              {rows.map((row) => (
                <TableRow>
                  <NoWrapPadTblCell>{row.name}</NoWrapPadTblCell>
                  <NoWrapPadTblCell>{row.department}</NoWrapPadTblCell>
                  <TableCell>{row.createdBy}</TableCell>
                  <TableCell>{dayjs(row.createdDate).format("MMM/DD/YYYY")}</TableCell>
                  <TableCell>
                    <Grid container>
                      <Grid item xs={3}>
                        <Button variant="contained" type='button' size='small' onClick={() => handleActionButtonClick(row)}>Action</Button>
                      </Grid>
                    </Grid>
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      </Grid>
    </>
  );
}

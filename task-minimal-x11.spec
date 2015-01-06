Summary: OpenMandriva Minimum System Requirement
Name: omdv-minimal-x11
Version: 1.0
Release: 1
License: GPL
Source0: %{name}.sh
Group: System/Base
URL: https://github.com/panahbiru/task-minimal-x11 
BuildRoot: %{_tmppath}/%{name}-root
BuildArchitectures: noarch

%description
Simple package for usable X11 Desktop

%prep

%build

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p %{buildroot}%{_sbindir}/
install -m755 %{SOURCE0} %{buildroot}%{_sbindir}/%{name}.sh

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{_sbindir}/%{name}.sh

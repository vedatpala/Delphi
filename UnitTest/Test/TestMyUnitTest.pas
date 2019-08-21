unit TestMyUnitTest;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, MyUnitTest;

type
  // Test methods for class TmyUnitTest

  TestTmyUnitTest = class(TTestCase)
  strict private
    FmyUnitTest: TmyUnitTest;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestTest1;
  end;

implementation

procedure TestTmyUnitTest.SetUp;
begin
  FmyUnitTest := TmyUnitTest.Create;
end;

procedure TestTmyUnitTest.TearDown;
begin
  FmyUnitTest.Free;
  FmyUnitTest := nil;
end;

procedure TestTmyUnitTest.TestTest1;
var
  ReturnValue: Boolean;
  name: string;
begin
  // TODO: Setup method call parameters
  name:= 'co';
  ReturnValue := FmyUnitTest.Test1(name);
  Check(ReturnValue = true,'Is not 6');
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTmyUnitTest.Suite);
end.


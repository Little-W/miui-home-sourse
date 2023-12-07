.class public Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;


# instance fields
.field protected mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedsCallFromSolver:Z

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mResolvedPaddingLeft:I

.field private mResolvedPaddingRight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingTop:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingBottom:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingRight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingStart:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public captureWidgets()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public needSolverPass()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return p0
.end method

.method public updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    return-void
.end method

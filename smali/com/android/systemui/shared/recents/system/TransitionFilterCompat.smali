.class public Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;
.super Ljava/lang/Object;


# instance fields
.field public transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    return-void
.end method

.method public constructor <init>(Landroid/window/TransitionFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/hideapi/TransitionFilterExpose;->box(Landroid/window/TransitionFilter;)Lcom/android/hideapi/TransitionFilterExpose;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    return-void
.end method


# virtual methods
.method public getWrapped()Landroid/window/TransitionFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionFilterExpose;->unbox()Landroid/window/TransitionFilter;

    move-result-object p0

    return-object p0
.end method

.method public initHalfSplitBackRequirements()V
    .locals 6

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setNot(Z)V

    sget v5, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v1, v5}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setFlag(I)V

    invoke-virtual {v1, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    invoke-virtual {v1, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setMustBeIndependent(Z)V

    invoke-virtual {v1, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setOrder(I)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    new-array v3, v3, [Landroid/window/TransitionFilter$Requirement;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/hideapi/TransitionFilterExpose;->setRequirements([Landroid/window/TransitionFilter$Requirement;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public initRequirements(Landroidx/activity/ComponentActivity;)V
    .locals 4

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setTopActivity(Landroid/content/ComponentName;)V

    new-array p1, v2, [I

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setOrder(I)V

    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    new-array v2, v2, [Landroid/window/TransitionFilter$Requirement;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-virtual {p0, v2}, Lcom/android/hideapi/TransitionFilterExpose;->setRequirements([Landroid/window/TransitionFilter$Requirement;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public initSplitBackRequirements(Landroidx/activity/ComponentActivity;)V
    .locals 4

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setTopActivity(Landroid/content/ComponentName;)V

    new-array p1, v2, [I

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    sget p1, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setFlag(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setMustBeIndependent(Z)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    new-array v2, v2, [Landroid/window/TransitionFilter$Requirement;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->unbox()Landroid/window/TransitionFilter$Requirement;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-virtual {p0, v2}, Lcom/android/hideapi/TransitionFilterExpose;->setRequirements([Landroid/window/TransitionFilter$Requirement;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public setNotFlags(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    invoke-virtual {p0, p1}, Lcom/android/hideapi/TransitionFilterExpose;->setNotFlags(I)V

    return-void
.end method

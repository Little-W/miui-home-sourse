.class public Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;
.super Ljava/lang/Object;
.source "TransitionFilterCompat.java"


# instance fields
.field public transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    return-void
.end method

.method public constructor <init>(Landroid/window/TransitionFilter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/android/hideapi/TransitionFilterExpose;->box(Landroid/window/TransitionFilter;)Lcom/android/hideapi/TransitionFilterExpose;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    return-void
.end method


# virtual methods
.method public getWrapped()Landroid/window/TransitionFilter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionFilterExpose;->unbox()Landroid/window/TransitionFilter;

    move-result-object p0

    return-object p0
.end method

.method public initHalfSplitBackRequirements()V
    .locals 6

    .line 61
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 64
    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v0, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setNot(Z)V

    .line 66
    sget v5, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v1, v5}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setFlag(I)V

    .line 67
    invoke-virtual {v1, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v5, v3, [I

    .line 68
    fill-array-data v5, :array_1

    invoke-virtual {v1, v5}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setMustBeIndependent(Z)V

    .line 70
    invoke-virtual {v1, v4}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setOrder(I)V

    .line 71
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

    .line 36
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x2

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    .line 39
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setTopActivity(Landroid/content/ComponentName;)V

    new-array p1, v2, [I

    .line 40
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setOrder(I)V

    .line 42
    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v3, v2, [I

    .line 43
    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    .line 44
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

    .line 48
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->newInstance()Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;

    move-result-object v1

    const/4 v2, 0x2

    .line 50
    invoke-virtual {v0, v2}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    .line 51
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setTopActivity(Landroid/content/ComponentName;)V

    new-array p1, v2, [I

    .line 52
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    .line 53
    sget p1, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setFlag(I)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {v1, p1}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setActivityType(I)V

    new-array v3, v2, [I

    .line 55
    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setModes([I)V

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/hideapi/TransitionFilterExpose$RequirementExpose;->setMustBeIndependent(Z)V

    .line 57
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

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->transitionFilterExpose:Lcom/android/hideapi/TransitionFilterExpose;

    invoke-virtual {p0, p1}, Lcom/android/hideapi/TransitionFilterExpose;->setNotFlags(I)V

    return-void
.end method

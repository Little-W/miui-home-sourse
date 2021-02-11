.class public Lcom/miui/home/launcher/common/CheckableDelegate;
.super Ljava/lang/Object;
.source "CheckableDelegate.java"


# instance fields
.field private mIsChecked:Z

.field private mSavedCheckStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method


# virtual methods
.method public clearSavedCheckedStatus()V
    .locals 1

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method

.method public invertChecked()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    return v0
.end method

.method public restoreCheckedStatus()V
    .locals 3

    .line 32
    iget v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    .line 36
    iput v1, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must save check status before restore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveCheckedStatus()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    :cond_0
    return-void
.end method

.class public Lcom/miui/home/launcher/UninstallDialogWrapper;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfirmUninstall:Ljava/lang/Runnable;

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field private mIsUninstallDialogHideAnimRunning:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mShowUninstallDialogAnimDuration:I

.field private mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

.field private mShowUninstallDialogStartSize:I

.field private mUninstallAnimShowing:Z

.field private mUninstallConfirmAppDialog:Lmiui/home/lib/dialog/AlertDialog;

.field private mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

.field private mUninstallDialogCanceled:Z

.field private mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

.field private mUninstallDialogShowing:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UninstallDialogWrapper"

    .line 32
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 38
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 39
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    .line 41
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 251
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$8;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const v0, 0x7f0a03c4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/UninstallDialog;

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a00a5

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a00a6

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$1;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$2;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/util/List;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallConfirmAppDialog()V

    return-void
.end method

.method private confirmUninstall()V
    .locals 2

    .line 164
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$5;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    new-instance v1, Lcom/miui/home/launcher/UninstallDialogWrapper$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$6;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissUninstallDualAppDialog()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiui/home/lib/dialog/AlertDialog;

    :cond_0
    return-void
.end method

.method private onConfirmUninstall(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private showUninstallConfirmAppDialog()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getAllInfos()Ljava/util/List;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 139
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper$3;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    .line 145
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$4;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setCancelConsumer(Ljava/util/function/Consumer;)V

    .line 151
    iput-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiui/home/lib/dialog/AlertDialog;

    const p0, 0x7f11013f

    .line 152
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveButTitle(I)V

    .line 153
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->show()V

    return-void
.end method


# virtual methods
.method public getShowUninstallDialogAnimDuration()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    return p0
.end method

.method getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method public getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method public isUninstallAnimShowing()Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p0
.end method

.method public isUninstallDialogShowing()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method public onCancelUninstall()Z
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall(Z)Z

    move-result p0

    return p0
.end method

.method public onCancelUninstall(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->dismissUninstallDualAppDialog()V

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall(Z)V

    return v0

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00a5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showUninstallDialog(ZZLjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUninstallDialogShowing != isShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUninstallDialogShowing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UninstallDialogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    if-eq v0, p1, :cond_2

    .line 188
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 192
    iput-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0, v3, p3}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(ZLjava/util/List;)V

    :goto_1
    return v2

    :cond_2
    return v3
.end method

.method public showUninstallDialogAnim(ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 203
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->blurBehindWithAnim(Z)V

    .line 204
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 205
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-boolean v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    invoke-virtual {v1, p1, v2, p2}, Lcom/miui/home/launcher/UninstallDialog;->onShow(ZZLjava/util/List;)V

    const-wide/16 v1, 0x0

    const/4 p2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    iget v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    aput v4, p2, v3

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 210
    invoke-virtual {v4}, Lcom/miui/home/launcher/UninstallDialog;->getMeasuredHeight()I

    move-result v4

    aput v4, p2, v0

    .line 209
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 212
    new-instance p1, Lcom/miui/home/launcher/UninstallDialogWrapper$7;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$7;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    .line 218
    iput-boolean v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShowOrHideUninstallDialog(Z)V

    goto :goto_1

    .line 221
    :cond_0
    iput v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v4}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result v4

    aput v4, p2, v3

    aput v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-nez p2, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x258

    :cond_2
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 225
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 227
    :cond_3
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 229
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startUninstallDialog()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getUninstallItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    :cond_0
    return-void
.end method

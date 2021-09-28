.class public Lcom/miui/home/launcher/UninstallDialogWrapper;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mConfirmUninstall:Ljava/lang/Runnable;

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field private mIsUninstallDialogHideAnimRunning:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mShowUninstallDialogAnimDuration:I

.field private mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

.field private mShowUninstallDialogStartSize:I

.field private mUninstallAnimShowing:Z

.field private mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

.field private mUninstallDialogCanceled:Z

.field private mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

.field private mUninstallDialogShowing:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 36
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 37
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    .line 39
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 243
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$8;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const v0, 0x7f0a023d

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/UninstallDialog;

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0072

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0074

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$1;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$2;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/util/List;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallConfirmAppDialog()V

    return-void
.end method

.method private confirmUninstall()V
    .locals 3

    .line 158
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$5;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    new-instance v1, Lcom/miui/home/launcher/UninstallDialogWrapper$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$6;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissUninstallDualAppDialog()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

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

    .line 122
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private showUninstallConfirmAppDialog()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getAllInfos()Ljava/util/List;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper$3;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    .line 139
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$4;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setCancelConsumer(Ljava/util/function/Consumer;)V

    .line 145
    iput-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

    const v0, 0x7f100105

    .line 146
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveButTitle(I)V

    .line 147
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->show()V

    return-void
.end method


# virtual methods
.method public getShowUninstallDialogAnimDuration()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    return v0
.end method

.method getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object v0
.end method

.method public getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object v0
.end method

.method public isUninstallAnimShowing()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return v0
.end method

.method public onCancelUninstall()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->dismissUninstallDualAppDialog()V

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall()V

    return v0

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0072

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0074

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showUninstallDialog(ZZLjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 180
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 184
    iput-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(ZLjava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
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

    .line 194
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 195
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->blurBehindWithAnim(Z)V

    .line 196
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 197
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-boolean v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    invoke-virtual {v1, p1, v2, p2}, Lcom/miui/home/launcher/UninstallDialog;->onShow(ZZLjava/util/List;)V

    const-wide/16 v1, 0x0

    const/4 p2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    iget v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    aput v4, p2, v3

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 202
    invoke-virtual {v4}, Lcom/miui/home/launcher/UninstallDialog;->getMeasuredHeight()I

    move-result v4

    aput v4, p2, v0

    .line 201
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 203
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 204
    new-instance p1, Lcom/miui/home/launcher/UninstallDialogWrapper$7;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$7;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    .line 210
    iput-boolean v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShowOrHideUninstallDialog(Z)V

    goto :goto_1

    .line 213
    :cond_0
    iput v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 214
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v4}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result v4

    aput v4, p2, v3

    aput v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 215
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

    .line 216
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 219
    :cond_3
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 221
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startUninstallDialog()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getUninstallItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    :cond_0
    return-void
.end method

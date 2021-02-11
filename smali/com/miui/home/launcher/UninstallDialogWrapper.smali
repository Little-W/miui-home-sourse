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

.field private mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

.field private mUninstallDialogCanceled:Z

.field private mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

.field private mUninstallDialogShowing:Z

.field private mUninstallDualAppDialog:Lmiui/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 32
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 33
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 230
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$5;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const v0, 0x7f0a01e4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/UninstallDialog;

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0062

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$1;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$2;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method private confirmUninstall()V
    .locals 3

    .line 153
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$rV2LLdG4E5s28oAyqDqPSusup1E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$rV2LLdG4E5s28oAyqDqPSusup1E;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$DkkXFEp3MxqlaH5h9M9yD9htn7M;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$DkkXFEp3MxqlaH5h9M9yD9htn7M;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissUninstallDualAppDialog()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDualAppDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDualAppDialog:Lmiui/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$confirmUninstall$2(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->checkUninstallApp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$confirmUninstall$3(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/lang/Integer;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall()Z

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDualAppDialog(I)V

    return-void
.end method

.method public static synthetic lambda$showUninstallDualAppDialog$0(Lcom/miui/home/launcher/UninstallDialogWrapper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    return-void
.end method

.method public static synthetic lambda$showUninstallDualAppDialog$1(Lcom/miui/home/launcher/UninstallDialogWrapper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall()Z

    return-void
.end method

.method private onConfirmUninstall()Z
    .locals 2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$3;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v0
.end method

.method private showUninstallDualAppDialog(I)V
    .locals 2

    .line 132
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000bd

    .line 133
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    if-nez p1, :cond_0

    const p1, 0x7f1000bc

    .line 135
    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x7f1000bb

    .line 137
    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    :cond_1
    :goto_0
    const p1, 0x7f1000a1

    .line 139
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$6z8rw3Zs89vMkXQDOHIpZhSlRcs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$6z8rw3Zs89vMkXQDOHIpZhSlRcs;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {v0, p1, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const p1, 0x7f1000ba

    .line 140
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$HB7xHIqUM1tou3NAq8-TWihpPEM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialogWrapper$HB7xHIqUM1tou3NAq8-TWihpPEM;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {v0, p1, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDualAppDialog:Lmiui/app/AlertDialog;

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDualAppDialog:Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getShowUninstallDialogAnimDuration()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    return v0
.end method

.method getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object v0
.end method

.method public getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object v0
.end method

.method public isUninstallAnimShowing()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return v0
.end method

.method public onCancelUninstall()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->dismissUninstallDualAppDialog()V

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall()V

    return v0

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0062

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0064

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showUninstallDialog(ZZ)Z
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 167
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 171
    iput-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public showUninstallDialogAnim(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 182
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->blurBehindWithAnim(Z)V

    .line 183
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-boolean v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/UninstallDialog;->onShow(ZZ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [I

    iget v5, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    aput v5, v3, v4

    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 189
    invoke-virtual {v5}, Lcom/miui/home/launcher/UninstallDialog;->getMeasuredHeight()I

    move-result v5

    aput v5, v3, v0

    .line 188
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 190
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 191
    new-instance p1, Lcom/miui/home/launcher/UninstallDialogWrapper$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$4;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    .line 197
    iput-boolean v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShowOrHideUninstallDialog(Z)V

    goto :goto_1

    .line 200
    :cond_0
    iput v4, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [I

    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v5}, Lcom/miui/home/launcher/UninstallDialog;->getHeight()I

    move-result v5

    aput v5, v3, v4

    aput v4, v3, v0

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 202
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x258

    :cond_2
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 203
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 206
    :cond_3
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 208
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startUninstallDialog()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getUninstallItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZ)Z

    :cond_0
    return-void
.end method

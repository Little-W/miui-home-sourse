.class public abstract Lcom/miui/home/launcher/gadget/ClearButton;
.super Lcom/miui/home/launcher/gadget/Gadget;
.source "ClearButton.java"

# interfaces
.implements Lcom/miui/home/launcher/UpdateIconSize;
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;


# static fields
.field private static sIsSony:Z


# instance fields
.field private mAnimationExecutionTime:I

.field protected mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

.field private mContentBody:Landroid/view/View;

.field private mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mIsPaused:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mPreUsedMemory:I

.field private mProgessAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:I

.field private mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

.field private mTitleContainer:Landroid/view/ViewGroup;

.field private mTotalMemory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "LT26i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "LT18i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/gadget/ClearButton;->sIsSony:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Gadget;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Lcom/miui/home/launcher/gadget/ClearButton$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/ClearButton$1;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshAndSchedue()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->execClear()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/gadget/ClearButton;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/ClearButton;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->startSchedule()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFreeMemory()I

    move-result p0

    return p0
.end method

.method private execClear()V
    .locals 4

    .line 135
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopSchedule()V

    .line 143
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->doClear()V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    sget-boolean v1, Lcom/miui/home/launcher/gadget/ClearButton;->sIsSony:Z

    if-nez v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x55

    if-eq v1, v2, :cond_1

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 149
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/gadget/ClearButton$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClearButton$3;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/ClearButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getFormatedMemory(JZ)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_2

    const-wide/16 v0, 0x400

    cmp-long p2, p0, v0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    float-to-int p1, p0

    int-to-float p1, p1

    cmpl-float p1, p0, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    .line 233
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%.0fG"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 235
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%.1fG"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFreeMemory()I
    .locals 4

    .line 224
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private refreshAndSchedue()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshMemoryUsed(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->startSchedule()V

    return-void
.end method

.method private setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopProgressAnimator()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 246
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mAnimationExecutionTime:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 250
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startSchedule()V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/ClearButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopProgressAnimator()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopSchedule()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLabel(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x64

    .line 188
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    div-int/2addr p1, v0

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method abstract doClear()V
.end method

.method public getProgress()I
    .locals 0

    .line 262
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    return p0
.end method

.method public iconContainerId()I
    .locals 0

    const p0, 0x7f0a01ac

    return p0
.end method

.method public iconView()Landroid/view/View;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object p0
.end method

.method abstract initClearIcon()V
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    return-object p0
.end method

.method public synthetic lambda$refreshMemoryUsed$0$ClearButton(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFreeMemory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$refreshMemoryUsed$1$ClearButton(Landroid/animation/Animator$AnimatorListener;Ljava/lang/Integer;)V
    .locals 3

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    mul-int/lit8 p2, v0, 0x64

    .line 202
    iget v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    div-int/2addr p2, v1

    .line 203
    iget v2, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    if-eq p2, v2, :cond_0

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public needReset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 59
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0084

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/ClearButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a00cf

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    const v0, 0x7f0a01b6

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0085

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->loadClearBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00d0

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/common/ClearIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    const v0, 0x7f0a01b5

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    .line 68
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ClearIconImageView;->getAnimationExecutionTime()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mAnimationExecutionTime:I

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    new-instance v1, Lcom/miui/home/launcher/gadget/ClearButton$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/ClearButton$2;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ClearIconImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->initClearIcon()V

    return-void
.end method

.method public onDeleted()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onEditDisable()V
    .locals 0

    return-void
.end method

.method public onEditNormal()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopSchedule()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshAndSchedue()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f1205ea

    const v2, 0x7f1205ed

    invoke-static {v0, p0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-void
.end method

.method protected refreshMemoryUsed(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 198
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$rL7BVG-vct2OHrKyXhx2rO58qFU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$rL7BVG-vct2OHrKyXhx2rO58qFU;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    new-instance v1, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method protected setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClearButton;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    .line 267
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->updateLabel(I)V

    .line 268
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public titleViewId()I
    .locals 0

    const p0, 0x7f0a01b5

    return p0
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    .line 298
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ClearIconImageView;->requestLayout()V

    return-void
.end method

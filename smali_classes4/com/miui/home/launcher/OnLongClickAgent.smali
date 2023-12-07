.class public Lcom/miui/home/launcher/OnLongClickAgent;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;,
        Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;
    }
.end annotation


# static fields
.field private static MOVE_THRESHOLD:I = 0xf


# instance fields
.field private mClientView:Landroid/view/ViewGroup;

.field private mDonwX:F

.field private mDonwY:F

.field private mHasPerformedLongPress:Z

.field private mIsLongPressCheckPending:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

.field private mRawX:F

.field private mRawY:F

.field private mTimeOut:J

.field private mVersionTagGenerator:Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    .line 55
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mVersionTagGenerator:Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mVersionTagGenerator:Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/OnLongClickAgent;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawX:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/OnLongClickAgent;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawY:F

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    return p1
.end method

.method private postCheckForLongClick()V
    .locals 7

    .line 129
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->reset()V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;-><init>(Lcom/miui/home/launcher/OnLongClickAgent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->rememberVersionTag()V

    .line 136
    iget-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    .line 138
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    .line 141
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v3, v5

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    .line 152
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCustomziedLongPress()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->reset()V

    return-void
.end method

.method public isClickable()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 63
    iget-boolean v1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 64
    iput-boolean v2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/OnLongClickAgent;->MOVE_THRESHOLD:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwY:F

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/miui/home/launcher/OnLongClickAgent;->MOVE_THRESHOLD:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwY:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawX:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawY:F

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->postCheckForLongClick()V

    :goto_0
    return v2
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setTimeOut(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 125
    :cond_0
    iput-wide p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    return-void
.end method

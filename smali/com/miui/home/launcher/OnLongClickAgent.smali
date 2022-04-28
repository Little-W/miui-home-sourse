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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    .line 53
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mVersionTagGenerator:Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/ViewGroup;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mVersionTagGenerator:Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/OnLongClickAgent;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawX:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/OnLongClickAgent;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawY:F

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/OnLongClickAgent;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    return p1
.end method

.method private postCheckForLongClick()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->reset()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;-><init>(Lcom/miui/home/launcher/OnLongClickAgent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->rememberVersionTag()V

    .line 132
    iget-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    .line 134
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    iget-wide v2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    .line 146
    iput-boolean v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mIsLongPressCheckPending:Z

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mPendingCheckForLongPress:Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mClientView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCustomziedLongPress()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->reset()V

    return-void
.end method

.method public isClickable()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 61
    iget-boolean v1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    iput-boolean v2, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/OnLongClickAgent;->MOVE_THRESHOLD:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwY:F

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/miui/home/launcher/OnLongClickAgent;->MOVE_THRESHOLD:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwX:F

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mDonwY:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mRawY:F

    .line 74
    invoke-direct {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->postCheckForLongClick()V

    goto :goto_0

    .line 84
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setTimeOut(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 121
    :cond_0
    iput-wide p1, p0, Lcom/miui/home/launcher/OnLongClickAgent;->mTimeOut:J

    return-void
.end method

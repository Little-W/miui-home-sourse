.class public Lcom/miui/home/recents/ScreenPinnedInputConsumer;
.super Ljava/lang/Object;
.source "ScreenPinnedInputConsumer.java"


# instance fields
.field private mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

.field private mMotionPauseMinDisplacement:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->performHapticFeedback()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    .line 31
    new-instance v0, Lcom/miui/home/recents/util/MotionPauseDetector;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/miui/home/recents/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    .line 32
    iget-object p1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    new-instance v0, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;-><init>(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;)V

    return-void
.end method

.method private performHapticFeedback()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performStopScreenPinning(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto :goto_1

    .line 65
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 66
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    .line 68
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    sub-float/2addr v1, v0

    .line 69
    iget-object v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    iget v2, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 70
    iget-object p0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/miui/home/recents/util/MotionPauseDetector;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->clear()V

    .line 75
    iput v2, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    goto :goto_1

    .line 62
    :cond_4
    iput v0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->mTouchDownY:F

    :goto_1
    return-void
.end method

.class public Lcom/miui/home/recents/util/MotionPauseDetector;
.super Ljava/lang/Object;
.source "MotionPauseDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;,
        Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;
    }
.end annotation


# instance fields
.field private mDisallowPause:Z

.field private final mForcePauseTimeout:Lcom/miui/home/recents/util/Alarm;

.field private mHasEverBeenPaused:Z

.field private mIsPaused:Z

.field private final mMakePauseHarderToTrigger:Z

.field private mOnMotionPauseListener:Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;

.field private mPreviousVelocity:Ljava/lang/Float;

.field private mSlowStartTime:J

.field private final mSpeedFast:F

.field private final mSpeedSlow:F

.field private final mSpeedSomewhatFast:F

.field private final mSpeedVerySlow:F

.field private final mVelocityProvider:Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/util/MotionPauseDetector;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704f6

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedVerySlow:F

    const v0, 0x7f0704f4

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedSlow:F

    const v0, 0x7f0704f5

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    const v0, 0x7f0704f3

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedFast:F

    .line 66
    new-instance p1, Lcom/miui/home/recents/util/Alarm;

    invoke-direct {p1}, Lcom/miui/home/recents/util/Alarm;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/miui/home/recents/util/Alarm;

    .line 67
    iget-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/miui/home/recents/util/Alarm;

    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$MotionPauseDetector$A3LonUjAbuKtSQWEBj0wGhjVkhk;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$MotionPauseDetector$A3LonUjAbuKtSQWEBj0wGhjVkhk;-><init>(Lcom/miui/home/recents/util/MotionPauseDetector;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/Alarm;->setOnAlarmListener(Lcom/miui/home/recents/util/OnAlarmListener;)V

    .line 68
    iput-boolean p2, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    .line 69
    new-instance p1, Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-direct {p1, p3}, Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mVelocityProvider:Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;

    return-void
.end method

.method private checkMotionPaused(FFJ)V
    .locals 5

    .line 112
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 113
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 115
    iget-boolean v2, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 117
    iget p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedFast:F

    cmpg-float p2, v0, p1

    if-ltz p2, :cond_0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_c

    :cond_0
    :goto_0
    move v4, v3

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    cmpg-float p2, p2, v2

    if-gez p2, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    if-eq p1, p2, :cond_4

    goto :goto_6

    .line 123
    :cond_4
    iget p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedVerySlow:F

    cmpg-float p2, v0, p1

    if-gez p2, :cond_5

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v4

    :goto_3
    if-nez p1, :cond_8

    .line 124
    iget-boolean p2, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    if-nez p2, :cond_8

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_6

    move p1, v3

    goto :goto_4

    :cond_6
    move p1, v4

    :goto_4
    if-eqz p1, :cond_7

    .line 129
    iget p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    move p1, v3

    goto :goto_5

    :cond_7
    move p1, v4

    .line 131
    :cond_8
    :goto_5
    iget-boolean p2, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz p2, :cond_b

    .line 132
    iget p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSpeedSlow:F

    cmpg-float p1, v0, p1

    const-wide/16 v0, 0x0

    if-gez p1, :cond_a

    .line 133
    iget-wide p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSlowStartTime:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 134
    iput-wide p3, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSlowStartTime:J

    .line 136
    :cond_9
    iget-wide p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSlowStartTime:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x190

    cmp-long p1, p3, p1

    if-ltz p1, :cond_c

    goto :goto_0

    .line 138
    :cond_a
    iput-wide v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSlowStartTime:J

    goto :goto_6

    :cond_b
    move v4, p1

    .line 144
    :cond_c
    :goto_6
    invoke-direct {p0, v4}, Lcom/miui/home/recents/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method private updatePaused(Z)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mDisallowPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    if-eq v0, p1, :cond_4

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    .line 153
    iget-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    if-eqz p1, :cond_1

    move v1, v0

    .line 155
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    if-eqz p1, :cond_2

    .line 156
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePaused, mIsPaused changed, mIsPaused="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFirstDetectedPause"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionPauseDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 163
    invoke-interface {p1}, Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseDetected()V

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz p1, :cond_4

    .line 167
    iget-boolean p0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    invoke-interface {p1, p0}, Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseChanged(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addPosition(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public addPosition(Landroid/view/MotionEvent;I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/miui/home/recents/util/Alarm;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/util/Alarm;->setAlarm(J)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mVelocityProvider:Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)F

    move-result p2

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/miui/home/recents/util/MotionPauseDetector;->checkMotionPaused(FFJ)V

    .line 108
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    return-void
.end method

.method public clear()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mVelocityProvider:Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MotionPauseDetector$SystemVelocityProvider;->clear()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mSlowStartTime:J

    .line 178
    iget-object p0, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/miui/home/recents/util/Alarm;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/Alarm;->cancelAlarm()V

    return-void
.end method

.method public synthetic lambda$new$0$MotionPauseDetector(Lcom/miui/home/recents/util/Alarm;)V
    .locals 0

    const/4 p1, 0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method public setDisallowPause(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mDisallowPause:Z

    .line 84
    iget-boolean p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mIsPaused:Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method public setOnMotionPauseListener(Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/home/recents/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;

    return-void
.end method

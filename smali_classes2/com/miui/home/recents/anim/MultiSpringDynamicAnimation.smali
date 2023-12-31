.class public Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
.super Ljava/lang/Object;
.source "MultiSpringDynamicAnimation.java"

# interfaces
.implements Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;,
        Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;
    }
.end annotation


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEndRequested:Z

.field private mLastFrameTimeNanos:J

.field mMaxValue:F

.field mMinValue:F

.field mRunning:Z

.field private final mSpringBundleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/recents/anim/SpringBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    iput v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMaxValue:F

    .line 27
    iget v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMaxValue:F

    neg-float v1, v1

    iput v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMinValue:F

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    .line 204
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    .line 173
    invoke-static {}, Lcom/miui/home/recents/anim/AnimationHandler;->getInstance()Lcom/miui/home/recents/anim/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/anim/AnimationHandler;->removeCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v1, 0x0

    .line 174
    iput-wide v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;

    invoke-interface {v1, p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeNullEntries(Ljava/util/List;)V

    return-void
.end method

.method private forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/SpringBundle;

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {p1, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;->apply(Lcom/miui/home/recents/anim/SpringBundle;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static removeNullEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 3

    .line 133
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    .line 135
    invoke-static {}, Lcom/miui/home/recents/anim/AnimationHandler;->getInstance()Lcom/miui/home/recents/anim/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/recents/anim/AnimationHandler;->addAnimationFrameCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mSpringBundleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addUpdateListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 141
    iget-wide v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 143
    iput-wide p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->notifyAnimUpdate()V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 148
    iput-wide p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mLastFrameTimeNanos:J

    const/4 p1, 0x1

    new-array p2, p1, [Z

    aput-boolean p1, p2, v3

    .line 151
    new-instance p1, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;-><init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;J[Z)V

    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V

    .line 159
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    if-eqz p1, :cond_1

    .line 160
    iput-boolean v3, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->notifyAnimUpdate()V

    .line 165
    aget-boolean p1, p2, v3

    if-eqz p1, :cond_2

    .line 166
    invoke-direct {p0, v3}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->endAnimationInternal(Z)V

    .line 168
    :cond_2
    aget-boolean p0, p2, v3

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    return p0
.end method

.method public synthetic lambda$doAnimationFrame$1$MultiSpringDynamicAnimation(J[ZLcom/miui/home/recents/anim/SpringBundle;)V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    invoke-virtual {p4, p1, p2, v0}, Lcom/miui/home/recents/anim/SpringBundle;->updateValueAndVelocity(JZ)Z

    move-result p1

    .line 154
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 155
    aput-boolean p0, p3, p0

    :cond_0
    return-void
.end method

.method public synthetic lambda$start$0$MultiSpringDynamicAnimation(Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 5

    .line 105
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    float-to-double v1, v1

    .line 107
    iget v3, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMaxValue:F

    float-to-double v3, v3

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_1

    .line 110
    iget p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mMinValue:F

    float-to-double v3, p0

    cmpg-double p0, v1, v3

    if-ltz p0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValueThreshold()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method notifyAnimUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;

    invoke-interface {v1, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeNullEntries(Ljava/util/List;)V

    return-void
.end method

.method public setEndRequested(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mEndRequested:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 104
    new-instance v0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$3Ipeq0kTjhPEwzM3yyCfMB8m4t4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$3Ipeq0kTjhPEwzM3yyCfMB8m4t4;-><init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->forAllSpringBundle(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;)V

    .line 117
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->startAnimationInternal()V

    :cond_0
    return-void
.end method

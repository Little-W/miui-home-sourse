.class public abstract Lmiuix/animation/physics/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;,
        Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;,
        Lmiuix/animation/physics/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/animation/physics/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lmiuix/animation/property/FloatProperty;

.field mRunning:Z

.field private mStartDelay:J

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 72
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 85
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 88
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 89
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 97
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 140
    iput-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 141
    iput-object p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 142
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-ne p1, p2, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 146
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 147
    :cond_1
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 150
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 148
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 144
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    :goto_2
    return-void
.end method

.method constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 72
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 85
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 88
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 89
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 97
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 118
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$1;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiuix/animation/physics/DynamicAnimation$1;-><init>(Lmiuix/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiuix/animation/property/FloatValueHolder;)V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 129
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 472
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v1, 0x0

    .line 473
    iput-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 474
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 475
    :goto_0
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 476
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v3, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .locals 1

    .line 507
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 3

    .line 411
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 413
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 417
    :cond_0
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 421
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v0

    iget-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    invoke-virtual {v0, p0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_0

    .line 418
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 274
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe miuix.animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .locals 2

    .line 389
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 392
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_0
    return-void

    .line 390
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 436
    iget-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 438
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 439
    iget p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 443
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 444
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    .line 446
    iget p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 447
    iget p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 449
    iget p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_1

    .line 452
    invoke-direct {p0, v3}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_1
    return p1
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .locals 0

    .line 337
    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return p0
.end method

.method getValueThreshold()F
    .locals 1

    .line 500
    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    return p0
.end method

.method public removeEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 203
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 216
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 325
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    .line 326
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPropertyValue(F)V
    .locals 3

    .line 487
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 488
    :goto_0
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 489
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartDelay(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 232
    :cond_0
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    return-void
.end method

.method public setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 162
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 186
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 2

    .line 374
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 377
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->startAnimationInternal()V

    :cond_0
    return-void

    .line 375
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract updateValueAndVelocity(J)Z
.end method

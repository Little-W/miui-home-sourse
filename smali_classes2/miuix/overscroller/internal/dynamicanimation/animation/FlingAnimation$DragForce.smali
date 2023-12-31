.class final Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# instance fields
.field private final MILLISECONDS_PER_SECOND:F

.field private mDragRate:D

.field private mFriction:F

.field private final mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 227
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 231
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 235
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->MILLISECONDS_PER_SECOND:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .locals 0

    .line 219
    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    return p0
.end method

.method static synthetic access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F
    .locals 0

    .line 219
    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return p0
.end method


# virtual methods
.method public isAtEquilibrium(FF)Z
    .locals 0

    .line 268
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setFrictionScalar(F)V
    .locals 4

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    .line 240
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 241
    iget p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    float-to-double v0, p1

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    return-void
.end method

.method setValueThreshold(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    .line 272
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method updateValueAndVelocity(FFJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 4

    const-wide/16 v0, 0x10

    .line 249
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 250
    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    float-to-double v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 251
    iget-object p4, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v2, p2

    mul-double/2addr v2, v0

    double-to-float p2, v2

    iput p2, p4, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 252
    iget p2, p4, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p4, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 255
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p1, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iget-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p2, p2, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 p2, 0x0

    iput p2, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 258
    :cond_0
    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object p0
.end method

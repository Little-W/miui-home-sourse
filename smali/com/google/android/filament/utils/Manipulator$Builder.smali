.class public Lcom/google/android/filament/utils/Manipulator$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Manipulator$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/utils/Manipulator$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Builder$BuilderFinalizer;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mFinalizer:Lcom/google/android/filament/utils/Manipulator$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Manipulator$Mode;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/utils/Manipulator;->access$1900(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/utils/Manipulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/filament/utils/Manipulator;-><init>(JLcom/google/android/filament/utils/Manipulator$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create Manipulator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public farPlane(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$900(JF)V

    return-object p0
.end method

.method public flightMaxMoveSpeed(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$1400(JF)V

    return-object p0
.end method

.method public flightMoveDamping(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$1700(JF)V

    return-object p0
.end method

.method public flightPanSpeed(FF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->access$1600(JFF)V

    return-object p0
.end method

.method public flightSpeedSteps(I)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$1500(JI)V

    return-object p0
.end method

.method public flightStartOrientation(FF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->access$1300(JFF)V

    return-object p0
.end method

.method public flightStartPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->access$1200(JFFF)V

    return-object p0
.end method

.method public fovDegrees(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$800(JF)V

    return-object p0
.end method

.method public fovDirection(Lcom/google/android/filament/utils/Manipulator$Fov;)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Manipulator$Fov;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$700(JI)V

    return-object p0
.end method

.method public groundPlane(FFFF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/utils/Manipulator;->access$1800(JFFFF)V

    return-object p0
.end method

.method public mapExtent(FF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->access$1000(JFF)V

    return-object p0
.end method

.method public mapMinDistance(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$1100(JF)V

    return-object p0
.end method

.method public orbitHomePosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->access$500(JFFF)V

    return-object p0
.end method

.method public orbitSpeed(FF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->access$600(JFF)V

    return-object p0
.end method

.method public targetPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->access$200(JFFF)V

    return-object p0
.end method

.method public upVector(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->access$300(JFFF)V

    return-object p0
.end method

.method public viewport(II)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->access$100(JII)V

    return-object p0
.end method

.method public zoomSpeed(F)Lcom/google/android/filament/utils/Manipulator$Builder;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->access$400(JF)V

    return-object p0
.end method

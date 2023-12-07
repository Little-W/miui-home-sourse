.class public Lcom/google/android/filament/utils/Manipulator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Manipulator$Builder;,
        Lcom/google/android/filament/utils/Manipulator$Key;,
        Lcom/google/android/filament/utils/Manipulator$Fov;,
        Lcom/google/android/filament/utils/Manipulator$Mode;
    }
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/filament/utils/Manipulator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;-><init>(J)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderViewport(JII)V

    return-void
.end method

.method static synthetic access$1000(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderMapExtent(JFF)V

    return-void
.end method

.method static synthetic access$1100(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderMapMinDistance(JF)V

    return-void
.end method

.method static synthetic access$1200(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nFlightStartPosition(JFFF)V

    return-void
.end method

.method static synthetic access$1300(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nFlightStartOrientation(JFF)V

    return-void
.end method

.method static synthetic access$1400(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nFlightMaxMoveSpeed(JF)V

    return-void
.end method

.method static synthetic access$1500(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nFlightSpeedSteps(JI)V

    return-void
.end method

.method static synthetic access$1600(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nFlightPanSpeed(JFF)V

    return-void
.end method

.method static synthetic access$1700(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nFlightMoveDamping(JF)V

    return-void
.end method

.method static synthetic access$1800(JFFFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/utils/Manipulator;->nBuilderGroundPlane(JFFFF)V

    return-void
.end method

.method static synthetic access$1900(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderBuild(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderTargetPosition(JFFF)V

    return-void
.end method

.method static synthetic access$2100(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyBuilder(J)V

    return-void
.end method

.method static synthetic access$300(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderUpVector(JFFF)V

    return-void
.end method

.method static synthetic access$400(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderZoomSpeed(JF)V

    return-void
.end method

.method static synthetic access$500(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderOrbitHomePosition(JFFF)V

    return-void
.end method

.method static synthetic access$600(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderOrbitSpeed(JFF)V

    return-void
.end method

.method static synthetic access$700(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFovDirection(JI)V

    return-void
.end method

.method static synthetic access$800(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFovDegrees(JF)V

    return-void
.end method

.method static synthetic access$900(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFarPlane(JF)V

    return-void
.end method

.method private static native nBuilderBuild(JI)J
.end method

.method private static native nBuilderFarPlane(JF)V
.end method

.method private static native nBuilderFovDegrees(JF)V
.end method

.method private static native nBuilderFovDirection(JI)V
.end method

.method private static native nBuilderGroundPlane(JFFFF)V
.end method

.method private static native nBuilderMapExtent(JFF)V
.end method

.method private static native nBuilderMapMinDistance(JF)V
.end method

.method private static native nBuilderOrbitHomePosition(JFFF)V
.end method

.method private static native nBuilderOrbitSpeed(JFF)V
.end method

.method private static native nBuilderTargetPosition(JFFF)V
.end method

.method private static native nBuilderUpVector(JFFF)V
.end method

.method private static native nBuilderViewport(JII)V
.end method

.method private static native nBuilderZoomSpeed(JF)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nDestroyManipulator(J)V
.end method

.method private static native nFlightMaxMoveSpeed(JF)V
.end method

.method private static native nFlightMoveDamping(JF)V
.end method

.method private static native nFlightPanSpeed(JFF)V
.end method

.method private static native nFlightSpeedSteps(JI)V
.end method

.method private static native nFlightStartOrientation(JFF)V
.end method

.method private static native nFlightStartPosition(JFFF)V
.end method

.method private static native nGetCurrentBookmark(J)J
.end method

.method private static native nGetHomeBookmark(J)J
.end method

.method private static native nGetLookAtDouble(J[D[D[D)V
.end method

.method private static native nGetLookAtFloat(J[F[F[F)V
.end method

.method private static native nGetMode(J)I
.end method

.method private static native nGrabBegin(JIIZ)V
.end method

.method private static native nGrabEnd(J)V
.end method

.method private static native nGrabUpdate(JII)V
.end method

.method private static native nJumpToBookmark(JJ)V
.end method

.method private static native nKeyDown(JI)V
.end method

.method private static native nKeyUp(JI)V
.end method

.method private static native nRaycast(JII[F)V
.end method

.method private static native nScroll(JIIF)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method private static native nUpdate(JF)V
.end method


# virtual methods
.method public finalize()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyManipulator(J)V

    return-void
.end method

.method public getCurrentBookmark()Lcom/google/android/filament/utils/Bookmark;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bookmark;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetCurrentBookmark(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bookmark;-><init>(J)V

    return-object v0
.end method

.method public getHomeBookmark()Lcom/google/android/filament/utils/Bookmark;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bookmark;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetHomeBookmark(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bookmark;-><init>(J)V

    return-object v0
.end method

.method public getLookAt([D[D[D)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGetLookAtDouble(J[D[D[D)V

    return-void
.end method

.method public getLookAt([F[F[F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGetLookAtFloat(J[F[F[F)V

    return-void
.end method

.method public getMode()Lcom/google/android/filament/utils/Manipulator$Mode;
    .locals 3

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator$Mode;->values()[Lcom/google/android/filament/utils/Manipulator$Mode;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetMode(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public grabBegin(IIZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGrabBegin(JIIZ)V

    return-void
.end method

.method public grabEnd()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nGrabEnd(J)V

    return-void
.end method

.method public grabUpdate(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nGrabUpdate(JII)V

    return-void
.end method

.method public jumpToBookmark(Lcom/google/android/filament/utils/Bookmark;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bookmark;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/utils/Manipulator;->nJumpToBookmark(JJ)V

    return-void
.end method

.method public keyDown(Lcom/google/android/filament/utils/Manipulator$Key;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Manipulator$Key;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/utils/Manipulator;->nKeyDown(JI)V

    return-void
.end method

.method public keyUp(Lcom/google/android/filament/utils/Manipulator$Key;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Manipulator$Key;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/utils/Manipulator;->nKeyUp(JI)V

    return-void
.end method

.method public raycast(II)[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v1, v2, p1, p2, v0}, Lcom/google/android/filament/utils/Manipulator;->nRaycast(JII[F)V

    return-object v0
.end method

.method public scroll(IIF)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nScroll(JIIF)V

    return-void
.end method

.method public setViewport(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nSetViewport(JII)V

    return-void
.end method

.method public update(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->nUpdate(JF)V

    return-void
.end method

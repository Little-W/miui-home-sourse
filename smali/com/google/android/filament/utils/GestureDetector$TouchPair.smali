.class final Lcom/google/android/filament/utils/GestureDetector$TouchPair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchPair"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,155:1\n601#2:156\n599#2:158\n628#2,2:159\n630#2:162\n138#3:157\n33#4:161\n33#4:163\n*E\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n*L\n44#1:156\n44#1:158\n45#1,2:159\n45#1:162\n44#1:157\n45#1:161\n45#1:163\n*E\n"
.end annotation


# instance fields
.field private count:I

.field private pt0:Lcom/google/android/filament/utils/Float2;

.field private pt1:Lcom/google/android/filament/utils/Float2;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Float2;-><init>(F)V

    new-instance v2, Lcom/google/android/filament/utils/Float2;

    invoke-direct {v2, v1}, Lcom/google/android/filament/utils/Float2;-><init>(F)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;I)V
    .locals 5

    const-string v0, "me"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    int-to-float v4, p2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    iget v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float p2, p2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-direct {v0, v2, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    iget p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V
    .locals 1

    const-string v0, "pt0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pt1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iput-object p2, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    iput p3, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/filament/utils/GestureDetector$TouchPair;Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;IILjava/lang/Object;)Lcom/google/android/filament/utils/GestureDetector$TouchPair;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->copy(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final component2()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    return p0
.end method

.method public final copy(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)Lcom/google/android/filament/utils/GestureDetector$TouchPair;
    .locals 0

    const-string p0, "pt0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pt1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iget-object v1, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    iget-object v1, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    iget p1, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    return p0
.end method

.method public final getMidpoint()Lcom/google/android/filament/utils/Float2;
    .locals 4

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    mul-float/2addr v0, v3

    mul-float/2addr p0, v3

    add-float/2addr v0, p0

    new-instance p0, Lcom/google/android/filament/utils/Float2;

    invoke-direct {p0, v1, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object p0
.end method

.method public final getPt0()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final getPt1()Lcom/google/android/filament/utils/Float2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    return-object p0
.end method

.method public final getSeparation()F
    .locals 4

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    new-instance v1, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    mul-float/2addr p0, v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final getX()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getMidpoint()Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getY()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getMidpoint()Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    return-void
.end method

.method public final setPt0(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    return-void
.end method

.method public final setPt1(Lcom/google/android/filament/utils/Float2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPair(pt0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt0:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pt1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->pt1:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->count:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

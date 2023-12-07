.class public final Lcom/google/android/filament/utils/GestureDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/GestureDetector$Gesture;,
        Lcom/google/android/filament/utils/GestureDetector$TouchPair;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n*L\n1#1,155:1\n601#2:156\n599#2:158\n138#3:157\n*E\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector\n*L\n143#1:156\n143#1:158\n143#1:157\n*E\n"
.end annotation


# instance fields
.field private currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field private final kGestureConfidenceCount:I

.field private final kPanConfidenceDistance:I

.field private final kZoomConfidenceDistance:I

.field private final kZoomSpeed:F

.field private final manipulator:Lcom/google/android/filament/utils/Manipulator;

.field private previousTouch:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

.field private final tentativeOrbitEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/filament/utils/GestureDetector$TouchPair;",
            ">;"
        }
    .end annotation
.end field

.field private final tentativePanEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/filament/utils/GestureDetector$TouchPair;",
            ">;"
        }
    .end annotation
.end field

.field private final tentativeZoomEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/filament/utils/GestureDetector$TouchPair;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manipulator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-direct {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->previousTouch:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeOrbitEvents:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->kGestureConfidenceCount:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->kPanConfidenceDistance:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->kZoomConfidenceDistance:I

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->kZoomSpeed:F

    return-void
.end method

.method private final endGesture()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeOrbitEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Manipulator;->grabEnd()V

    return-void
.end method

.method private final isOrbitGesture()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeOrbitEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector;->kGestureConfidenceCount:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isPanGesture()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->kGestureConfidenceCount:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getMidpoint()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getMidpoint()Lcom/google/android/filament/utils/Float2;

    move-result-object v1

    new-instance v3, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {v3, v4, v0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v1

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float2;->getY()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector;->kPanConfidenceDistance:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final isZoomGesture()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->kGestureConfidenceCount:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getSeparation()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getSeparation()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector;->kZoomConfidenceDistance:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_b

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v4, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v4, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v4, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v4, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-ne v1, v4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector;->endGesture()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v4, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-ne v1, v4, :cond_5

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->previousTouch:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getSeparation()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getSeparation()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getX()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getY()I

    move-result v4

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->kZoomSpeed:F

    mul-float/2addr p1, v1

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/filament/utils/Manipulator;->scroll(IIF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->previousTouch:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v4, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v4, :cond_6

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getX()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/utils/Manipulator;->grabUpdate(II)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeOrbitEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativePanEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->tentativeZoomEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector;->isOrbitGesture()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getY()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/filament/utils/Manipulator;->grabBegin(IIZ)V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector;->isZoomGesture()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->previousTouch:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector;->isPanGesture()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->manipulator:Lcom/google/android/filament/utils/Manipulator;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->getY()I

    move-result v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/filament/utils/Manipulator;->grabBegin(IIZ)V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->currentGesture:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector;->endGesture()V

    :cond_c
    :goto_0
    return-void
.end method

.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    }
.end annotation


# instance fields
.field public final alpha:F

.field public final backgroundBlurRadius:I

.field public final cornerRadius:F

.field private final flags:I

.field public final homeSurface:Landroid/view/SurfaceControl;

.field public final isShow:Z

.field public final layer:I

.field private final mTmpValues:[F

.field public final matrix:Landroid/graphics/Matrix;

.field public final relativeLayer:I

.field public final relativeTo:Landroid/view/SurfaceControl;

.field public final shadowRadius:F

.field public final surface:Landroid/view/SurfaceControl;

.field public final visible:Z

.field public final windowCrop:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;ILandroid/view/SurfaceControl;FIZFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->mTmpValues:[F

    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    iput-object p4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    iput-object p7, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeTo:Landroid/view/SurfaceControl;

    iput p8, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeLayer:I

    iput-object p9, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->homeSurface:Landroid/view/SurfaceControl;

    iput p10, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    iput p11, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->backgroundBlurRadius:I

    iput-boolean p12, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->visible:Z

    iput p13, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->shadowRadius:F

    iput-boolean p14, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->isShow:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;ILandroid/view/SurfaceControl;FIZFZLcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;ILandroid/view/SurfaceControl;FIZFZ)V

    return-void
.end method


# virtual methods
.method public applyTo(Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->isShow:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SyncRtSurfaceTransactionApplierCompat"

    const-string p1, "surface is no valid, return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->mTmpValues:[F

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    const-class v0, Landroid/view/SurfaceControl;

    aput-object v0, v8, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v8, v2

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    aput-object v0, v9, v3

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->backgroundBlurRadius:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v6, "setBackgroundBlurRadius"

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeTo:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->relativeLayer:I

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    const-class v0, Landroid/view/SurfaceControl;

    aput-object v0, v8, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v0, v8, v2

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    aput-object v0, v9, v3

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->shadowRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v6, "setShadowRadius"

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->homeSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_a
    invoke-static {p1}, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;->box(Landroid/view/SurfaceControl$Transaction;)Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;->remove(Landroid/view/SurfaceControl;)Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;

    :goto_0
    return-void
.end method

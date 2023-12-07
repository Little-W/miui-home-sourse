.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field alpha:F

.field backgroundBlurRadius:I

.field cornerRadius:F

.field flags:I

.field homeSurface:Landroid/view/SurfaceControl;

.field isShow:Z

.field layer:I

.field matrix:Landroid/graphics/Matrix;

.field relativeLayer:I

.field relativeTo:Landroid/view/SurfaceControl;

.field shadowRadius:F

.field final surface:Landroid/view/SurfaceControl;

.field visible:Z

.field windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->isShow:Z

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    iget v3, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->alpha:F

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->layer:I

    iget-object v7, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeTo:Landroid/view/SurfaceControl;

    iget v8, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeLayer:I

    iget-object v9, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->homeSurface:Landroid/view/SurfaceControl;

    iget v10, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->cornerRadius:F

    iget v11, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v12, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->visible:Z

    iget v13, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->shadowRadius:F

    iget-boolean v14, v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->isShow:Z

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/view/SurfaceControl;ILandroid/view/SurfaceControl;FIZFZLcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;)V

    return-object v16
.end method

.method public withAlpha(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->alpha:F

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withBackgroundBlur(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withCornerRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->cornerRadius:F

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withHomeLayer(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->homeSurface:Landroid/view/SurfaceControl;

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withLayer(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->layer:I

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeTo:Landroid/view/SurfaceControl;

    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->relativeLayer:I

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withShadowRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->shadowRadius:F

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withShow(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->isShow:Z

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

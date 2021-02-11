.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceParams"
.end annotation


# instance fields
.field public final alpha:F

.field final cornerRadius:F

.field public final layer:I

.field public final matrix:Landroid/graphics/Matrix;

.field public final surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field public final windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IF)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    .line 191
    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    .line 192
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    .line 193
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    .line 194
    iput p5, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    .line 195
    iput p6, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    return-void
.end method

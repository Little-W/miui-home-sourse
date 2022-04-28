.class public Lcom/miui/launcher/utils/BitmapRenderer;
.super Ljava/lang/Object;
.source "BitmapRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/utils/BitmapRenderer$Renderer;
    }
.end annotation


# static fields
.field public static final USE_ACCELERATED_CANVAS:Z

.field public static final USE_HARDWARE_BITMAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/miui/launcher/utils/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/miui/launcher/utils/BitmapRenderer;->USE_ACCELERATED_CANVAS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHardwareBitmap(IILcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 41
    sget-boolean v0, Lcom/miui/launcher/utils/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/miui/launcher/utils/BitmapRenderer;->createSoftwareBitmap(IILcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 46
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/miui/launcher/utils/BitmapRenderer$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 48
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 56
    sget-boolean v0, Lcom/miui/launcher/utils/BitmapRenderer;->USE_ACCELERATED_CANVAS:Z

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0, p1, p3}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmap(IILcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "bitmap"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 p2, 0x1

    .line 65
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 67
    :cond_1
    invoke-virtual {v0, p0, p1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/miui/launcher/utils/BitmapRenderer$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 69
    invoke-static {v0, p0, p1}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createSoftwareBitmap(IILcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;
    .locals 1

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 35
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p2, p1}, Lcom/miui/launcher/utils/BitmapRenderer$Renderer;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

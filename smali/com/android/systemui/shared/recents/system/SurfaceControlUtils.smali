.class public Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs draw(Lcom/android/systemui/shared/recents/system/SurfaceCompat;ILandroid/graphics/Rect;[Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz p1, :cond_0

    mul-int/lit8 p1, p1, -0x5a

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    array-length p1, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "SurfaceUtils"

    const-string p1, "scheduleDraw error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static drawView(Lcom/android/systemui/shared/recents/system/SurfaceCompat;Landroid/view/View;I)V
    .locals 4

    if-eqz p0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz p2, :cond_0

    mul-int/lit8 p2, p2, -0x5a

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, p2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SurfaceUtils"

    const-string p1, "scheduleDraw error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static getBufferLayer(Ljava/lang/String;IILcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    iget-object p1, p3, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorLayer(Ljava/lang/String;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-static {v0}, Lmiui/view/SurfaceControlExpose$Builder;->box(Ljava/lang/Object;)Lmiui/view/SurfaceControlExpose$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/SurfaceControlExpose$Builder;->setColorLayer()Lmiui/view/SurfaceControlExpose$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/SurfaceControlExpose$Builder;->unbox()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {v0}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/ViewRootImplExpose;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-static {p0}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/ViewRootImplExpose;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.class public Lcom/miui/maml/elements/VirtualScreen;
.super Lcom/miui/maml/elements/ElementGroup;
.source "VirtualScreen.java"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z

.field private mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2

    .line 51
    iget-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 53
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/maml/elements/VirtualScreen;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 55
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 57
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    :cond_0
    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    return-void
.end method

.method public finish()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 44
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init()V
    .locals 4

    .line 28
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/elements/VirtualScreen;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const-string v0, "screen_width"

    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/elements/VirtualScreen;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/VirtualScreen;->scale(D)F

    move-result v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/VirtualScreen;->getHeight()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    const-string v1, "screen_height"

    .line 34
    invoke-virtual {p0}, Lcom/miui/maml/elements/VirtualScreen;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/VirtualScreen;->scale(D)F

    move-result v2

    .line 35
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-void
.end method

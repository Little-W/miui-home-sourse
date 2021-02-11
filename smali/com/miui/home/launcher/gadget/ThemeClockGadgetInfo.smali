.class public Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;
.super Lcom/miui/home/launcher/gadget/GadgetInfo;
.source "ThemeClockGadgetInfo.java"


# instance fields
.field private mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;


# direct methods
.method public constructor <init>(IIIIIIILcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    .line 21
    iput-object p8, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    return-void
.end method


# virtual methods
.method public getContentPath()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 45
    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewPath:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

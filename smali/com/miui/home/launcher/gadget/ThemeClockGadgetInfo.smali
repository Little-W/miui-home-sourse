.class public Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;
.super Lcom/miui/home/launcher/gadget/GadgetInfo;
.source "ThemeClockGadgetInfo.java"


# instance fields
.field private mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;


# direct methods
.method public constructor <init>(IIIIIIILcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    .line 24
    iput-object p8, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    return-void
.end method


# virtual methods
.method public getContentPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 51
    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    iget-object v2, v2, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 53
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_1

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_1
    :goto_0
    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 52
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    .line 56
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    iget-object v0, v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewPath:Ljava/lang/String;

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    goto :goto_4

    .line 64
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->mClock:Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;
.super Lcom/miui/home/launcher/upsidescene/data/Appearance;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StageImageAppearance"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mSceneScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/Appearance$1;)V

    .line 82
    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mSceneScale:F

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mSceneScale:F

    sget-object v2, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mPath:Ljava/lang/String;

    .line 89
    invoke-static {v2, v3}, Lcom/miui/home/library/utils/FileAccessable$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;

    move-result-object v2

    .line 88
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->decodeBitmapFromFile(Ljava/util/HashMap;FLcom/miui/home/library/utils/FileAccessable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

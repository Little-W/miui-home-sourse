.class public Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "FreeButtonInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;
    }
.end annotation


# instance fields
.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lmiui/util/FileAccessable;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mFile:Lmiui/util/FileAccessable;

.field mMamlContext:Ljava/lang/Object;

.field mMtzGadgetInfo:Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

.field mName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPreviewImage:Landroid/graphics/Bitmap;

.field mPreviewImageName:Lmiui/util/FileAccessable;

.field mScale:F

.field mStateAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/util/FileAccessable;Ljava/lang/String;FLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mStateAnimations:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mBitmapCache:Ljava/util/HashMap;

    const/16 v0, 0xa

    .line 110
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->itemType:I

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    .line 112
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mScale:F

    .line 115
    invoke-interface {p1}, Lmiui/util/FileAccessable;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "manifest.xml"

    .line 116
    invoke-interface {p1, p2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object p2

    .line 117
    invoke-interface {p2}, Lmiui/util/FileAccessable;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 118
    instance-of p2, p1, Lmiui/util/FileAccessable$ZipInnerFile;

    if-eqz p2, :cond_1

    const-string p1, "/"

    .line 119
    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 122
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-static {p4, p1, p5}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMamlContext:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    instance-of p2, p1, Lmiui/util/FileAccessable$DeskFile;

    if-eqz p2, :cond_2

    .line 124
    check-cast p1, Lmiui/util/FileAccessable$DeskFile;

    invoke-virtual {p1}, Lmiui/util/FileAccessable$DeskFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMamlContext:Ljava/lang/Object;

    .line 126
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMamlContext:Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p2, "free_gadget"

    .line 127
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad root tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    return-void
.end method

.method private addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-string p3, ".png"

    .line 250
    invoke-interface {p2, p3}, Lmiui/util/FileAccessable;->createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object p3

    .line 251
    invoke-interface {p3}, Lmiui/util/FileAccessable;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p3, ".jpg"

    .line 252
    invoke-interface {p2, p3}, Lmiui/util/FileAccessable;->createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object p2

    .line 253
    invoke-interface {p2}, Lmiui/util/FileAccessable;->exists()Z

    move-result p3

    if-nez p3, :cond_2

    return-object v0

    :cond_0
    move-object p2, p3

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {p2}, Lmiui/util/FileAccessable;->exists()Z

    move-result p3

    if-nez p3, :cond_2

    return-object v0

    .line 260
    :cond_2
    :goto_0
    new-instance p3, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;)V

    .line 261
    iget-object v0, p3, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mStateAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private getBitmapDrawable(Lmiui/util/FileAccessable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mBitmapCache:Ljava/util/HashMap;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mScale:F

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->decodeBitmapFromFile(Ljava/util/HashMap;FLmiui/util/FileAccessable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 293
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->loadIfNeed()V

    .line 270
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mStateAnimations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;

    if-nez p1, :cond_0

    return-object v0

    .line 275
    :cond_0
    iget-object v1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 276
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lmiui/util/FileAccessable;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getBitmapDrawable(Lmiui/util/FileAccessable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1

    .line 278
    :cond_1
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 279
    iget-boolean v2, p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->oneshot:Z

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 280
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 281
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lmiui/util/FileAccessable;

    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getBitmapDrawable(Lmiui/util/FileAccessable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getFile()Lmiui/util/FileAccessable;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    return-object v0
.end method

.method public getMamlContext()Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMamlContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImage()Landroid/graphics/Bitmap;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMtzGadgetInfo:Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->preview:Landroid/graphics/Bitmap;

    return-object v0

    .line 308
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->loadIfNeed()V

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mBitmapCache:Ljava/util/HashMap;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mScale:F

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImageName:Lmiui/util/FileAccessable;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->decodeBitmapFromFile(Ljava/util/HashMap;FLmiui/util/FileAccessable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isMamlGadget()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMamlContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadIfNeed()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mStateAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    invoke-interface {v0}, Lmiui/util/FileAccessable;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    invoke-interface {v0}, Lmiui/util/FileAccessable;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mName:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImageName:Lmiui/util/FileAccessable;

    const-string v1, "normal"

    const/4 v2, 0x1

    .line 171
    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;

    goto/16 :goto_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    const-string v1, "description.xml"

    invoke-interface {v0, v1}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/FileAccessable;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mName:Ljava/lang/String;

    const-string v0, "normal"

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImageName:Lmiui/util/FileAccessable;

    const-string v0, "normal_pressed"

    .line 177
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_normal_pressed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;

    const-string v0, "open"

    .line 178
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_open"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;

    const-string v0, "open_pressed"

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_open_pressed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->addStaticPictureIfExists(Ljava/lang/String;Lmiui/util/FileAccessable;Z)Lmiui/util/FileAccessable;

    goto/16 :goto_3

    .line 183
    :cond_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    const-string v2, "description.xml"

    invoke-interface {v1, v2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    invoke-interface {v1}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 186
    :try_start_0
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v3, "root"

    .line 188
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    .line 232
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-void

    :cond_4
    :try_start_1
    const-string v3, "name"

    .line 191
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mName:Ljava/lang/String;

    .line 192
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 193
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mName:Ljava/lang/String;

    .line 197
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v4, "animation-list"

    .line 198
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    new-instance v3, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;)V

    const-string v4, "state"

    .line 200
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v3, "FreeButtonInfo"

    const-string v4, "xml parse failed:free button animation must have \'state\'"

    .line 202
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v5, "oneshot"

    .line 205
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->oneshot:Z

    :cond_7
    :goto_1
    const-string v5, "animation-list"

    .line 208
    invoke-static {v0, v5}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "item"

    .line 210
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "image"

    .line 211
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImageName:Lmiui/util/FileAccessable;

    if-nez v6, :cond_8

    const-string v6, "normal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 213
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    invoke-interface {v6, v5}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mPreviewImageName:Lmiui/util/FileAccessable;

    :cond_8
    const-string v6, "duration"

    .line 215
    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14

    .line 217
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_9

    .line 219
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 221
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    :cond_9
    :goto_2
    iget-object v6, v3, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mFile:Lmiui/util/FileAccessable;

    invoke-interface {v9, v5}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_a
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mStateAnimations:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 232
    :cond_b
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public setMtzGadgetInfo(Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->mMtzGadgetInfo:Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    return-void
.end method

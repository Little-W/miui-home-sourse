.class public Lcom/miui/maml/elements/ImageNumberScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"

.field public static final TAG_NAME1:Ljava/lang/String; = "ImageChars"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private forceUpdate:Z

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mNameMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;",
            ">;"
        }
    .end annotation
.end field

.field private mNumExpression:Lcom/miui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:D

.field private mPreStr:Ljava/lang/String;

.field private mSpace:I

.field private mSpaceExpression:Lcom/miui/maml/data/Expression;

.field private mStrExpression:Lcom/miui/maml/data/Expression;

.field private mStrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 7

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string p2, "ImageNumberScreenElement"

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1

    .line 28
    iput-wide v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "number"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "string"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    .line 67
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "space"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lcom/miui/maml/data/Expression;

    const-string p2, "charNameMap"

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    const-string p2, ","

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 72
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 73
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, v5, v2}, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;-><init>(Lcom/miui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private charToStr(C)Ljava/lang/String;
    .locals 2

    .line 214
    iget-object p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;

    .line 216
    iget-char v1, v0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    if-ne v1, p1, :cond_0

    .line 217
    iget-object p0, v0, Lcom/miui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    const/16 p0, 0x2e

    if-ne p1, p0, :cond_2

    const-string p0, "dot"

    return-object p0

    .line 223
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 237
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 13

    .line 88
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 90
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 92
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 93
    iput-object p2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 95
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->forceUpdate:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 102
    :goto_1
    iput-boolean v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->forceUpdate:Z

    .line 104
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lcom/miui/maml/data/Expression;

    if-eqz v3, :cond_5

    .line 105
    invoke-virtual {p0, v3}, Lcom/miui/maml/elements/ImageNumberScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v3

    .line 106
    iget-wide v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    cmpl-double v5, v3, v5

    if-nez v5, :cond_4

    if-nez v0, :cond_4

    return-void

    .line 108
    :cond_4
    iput-wide v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    .line 109
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 110
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, p2

    goto :goto_4

    .line 111
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lcom/miui/maml/elements/ImageNumberScreenElement;->evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;

    move-result-object v3

    .line 112
    :goto_3
    iget-object v4, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_9

    return-void

    .line 114
    :cond_9
    iput-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    move-object v0, v3

    .line 117
    :goto_4
    iget-object v3, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    .line 118
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 120
    :cond_a
    iput-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    .line 121
    iput v2, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    if-eqz v0, :cond_b

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_14

    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/miui/maml/elements/ImageNumberScreenElement;->charToStr(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/miui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_c

    .line 126
    iget-object p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to get bitmap for number "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_c
    iget v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 131
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 132
    iget-object v8, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-nez v8, :cond_d

    move v8, v2

    goto :goto_7

    :cond_d
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 133
    :goto_7
    iget-object v9, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-nez v9, :cond_e

    move v9, v2

    goto :goto_8

    :cond_e
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    :goto_8
    const/4 v10, 0x0

    if-gt v6, v8, :cond_f

    if-le v7, v9, :cond_12

    .line 135
    :cond_f
    iget-object v11, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-le v6, v8, :cond_10

    sub-int v6, v3, v4

    .line 139
    iget v8, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v8, v12

    iget v12, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    sub-int/2addr v6, v1

    mul-int/2addr v12, v6

    add-int/2addr v8, v12

    :cond_10
    if-gt v7, v9, :cond_11

    move v7, v9

    .line 146
    :cond_11
    iput v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    .line 147
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 148
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 149
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 150
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_12

    .line 152
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v11, v10, v10, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    :cond_12
    iget-object v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v7, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7, v10, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    iget v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    iput v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_13

    .line 159
    iget v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    iget v6, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 162
    :cond_14
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 208
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    const-wide/16 v0, 0x1

    .line 209
    iput-wide v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    return-void
.end method

.method protected getBitmapHeight()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return p0
.end method

.method protected getBitmapWidth()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return p0
.end method

.method public init()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 81
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    .line 82
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ImageNumberScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mSpace:I

    .line 83
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected needResetFromConfigChanged()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 183
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->forceUpdate:Z

    .line 193
    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 197
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public setValue(D)V
    .locals 0

    .line 167
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageNumberScreenElement;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->requestUpdate()V

    return-void
.end method

.method protected updateBitmapImpl(Z)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v0, p0, Lcom/miui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 178
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method

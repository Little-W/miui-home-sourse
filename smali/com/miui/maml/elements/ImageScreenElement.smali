.class public Lcom/miui/maml/elements/ImageScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ImageScreenElement$Mask;,
        Lcom/miui/maml/elements/ImageScreenElement$pair;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpH:Lcom/miui/maml/data/Expression;

.field private mExpSrcH:Lcom/miui/maml/data/Expression;

.field private mExpSrcW:Lcom/miui/maml/data/Expression;

.field private mExpSrcX:Lcom/miui/maml/data/Expression;

.field private mExpSrcY:Lcom/miui/maml/data/Expression;

.field private mExpW:Lcom/miui/maml/data/Expression;

.field private mH:I

.field private mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHasSrcRect:Z

.field private mHasWidthAndHeight:Z

.field private mIsLoadAsyncSet:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshVerts:[F

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRetainWhenInvisible:Z

.field private mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/maml/elements/ImageScreenElement$pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Lcom/miui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mSrcH:I

.field private mSrcIdExpression:Lcom/miui/maml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mW:I

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 49
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 50
    new-instance p2, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {p2, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    const/4 p2, -0x1

    .line 89
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 90
    iput p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 134
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v7

    const-string v2, "src"

    const-string v3, "srcFormat"

    const-string v4, "srcParas"

    const-string v5, "srcExp"

    const-string v6, "srcFormatExp"

    move-object v0, v7

    move-object v1, p1

    .line 571
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    const-string v0, "srcid"

    .line 572
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    const-string v0, "antiAlias"

    .line 575
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 576
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 577
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 578
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const-string v0, "srcX"

    .line 579
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    const-string v0, "srcY"

    .line 580
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    const-string v0, "srcW"

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    const-string v0, "srcH"

    .line 582
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    const-string v0, "w"

    .line 583
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    const-string v0, "h"

    .line 584
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    .line 585
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 586
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_2

    .line 590
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    :cond_2
    const-string v0, "blur"

    const/4 v2, 0x0

    .line 593
    invoke-virtual {p0, p1, v0, v2}, Lcom/miui/maml/elements/ImageScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 595
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMesh(Lorg/w3c/dom/Element;)V

    const-string/jumbo v0, "xfermodeNum"

    .line 597
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 598
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_3

    const-string/jumbo v0, "xfermode"

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 600
    iget-object v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    const-string v0, "useVirtualScreen"

    .line 604
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "srcType"

    .line 605
    invoke-virtual {p0, p1, v2}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const-string v2, "VirtualScreen"

    .line 606
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    const-string v0, "loadAsync"

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 610
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 611
    iput-boolean v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    :cond_5
    const-string v0, "retainWhenInvisible"

    .line 613
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 615
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_6

    .line 616
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bmp_width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 617
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bmp_height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 618
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "has_bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    .line 620
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 624
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "Mask"

    .line 629
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 630
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement$Mask;-><init>(Lcom/miui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 29

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 656
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getX()F

    move-result v0

    float-to-double v13, v0

    .line 657
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getY()F

    move-result v0

    float-to-double v5, v0

    .line 658
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v0

    .line 659
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    int-to-double v1, v10

    sub-double/2addr v13, v1

    int-to-double v1, v11

    sub-double/2addr v5, v1

    goto/16 :goto_1

    :cond_1
    sub-float v16, v0, v1

    float-to-double v0, v1

    const-wide v17, 0x400921fb54442c46L    # 3.1415926535897

    mul-double v0, v0, v17

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v21, v0, v19

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v0

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v1

    .line 669
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    if-nez v2, :cond_2

    .line 670
    new-instance v2, Lcom/miui/maml/elements/ImageScreenElement$pair;

    invoke-direct {v2, v15}, Lcom/miui/maml/elements/ImageScreenElement$pair;-><init>(Lcom/miui/maml/elements/ImageScreenElement$1;)V

    iput-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    :cond_2
    float-to-double v2, v0

    float-to-double v0, v1

    .line 672
    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide/from16 v3, v23

    move-wide/from16 v23, v5

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    int-to-double v0, v10

    .line 674
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v25, v0, v2

    int-to-double v0, v11

    .line 675
    iget-object v2, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v27, v0, v2

    .line 678
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v8, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v0

    float-to-double v5, v0

    mul-double v5, v5, v17

    div-double v5, v5, v19

    iget-object v7, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/elements/ImageScreenElement;->rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V

    .line 680
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v13, v0

    .line 681
    iget-object v0, v8, Lcom/miui/maml/elements/ImageScreenElement;->mRotateXYpair:Lcom/miui/maml/elements/ImageScreenElement$pair;

    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-double v0, v0

    add-double v5, v23, v0

    sub-double v13, v13, v25

    sub-double v5, v5, v27

    mul-double v0, v13, v13

    mul-double v2, v5, v5

    add-double/2addr v0, v2

    .line 684
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v13, v0

    .line 685
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide/16 v13, 0x0

    cmpl-double v4, v5, v13

    if-lez v4, :cond_3

    add-double v21, v21, v2

    goto :goto_0

    :cond_3
    add-double v21, v21, v17

    sub-double v21, v21, v2

    .line 687
    :goto_0
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v13, v0, v2

    .line 688
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v5, v0, v2

    move/from16 v0, v16

    .line 690
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getX()F

    move-result v1

    float-to-double v1, v1

    sub-double/2addr v13, v1

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getY()F

    move-result v1

    float-to-double v1, v1

    sub-double/2addr v5, v1

    goto :goto_2

    :cond_4
    move-wide/from16 v23, v5

    .line 693
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v1

    float-to-double v1, v1

    add-double/2addr v1, v13

    int-to-double v3, v10

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v2, v5

    int-to-double v7, v11

    add-double/2addr v2, v7

    double-to-float v2, v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    double-to-int v0, v13

    double-to-int v1, v5

    .line 696
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-gez v2, :cond_5

    .line 698
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 699
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-gez v3, :cond_6

    .line 701
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_3

    :cond_6
    move v4, v3

    move-object/from16 v3, p0

    .line 702
    :goto_3
    iget-object v5, v3, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int/2addr v0, v10

    add-int/2addr v1, v11

    add-int/2addr v2, v0

    add-int/2addr v4, v1

    invoke-virtual {v5, v0, v1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iget-object v0, v3, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 704
    iget-object v0, v3, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v1, v3, Lcom/miui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private rotateXY(DDDLcom/miui/maml/elements/ImageScreenElement$pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lcom/miui/maml/elements/ImageScreenElement$pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    .line 636
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    div-double v2, p1, v0

    .line 639
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    sub-double/2addr v4, v2

    sub-double/2addr v4, p5

    .line 641
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p5, v0

    add-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 642
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    sub-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0

    .line 644
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 645
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p7, Lcom/miui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateBitmap(Z)V
    .locals 1

    .line 709
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapImpl(Z)V

    .line 710
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mIsLoadAsyncSet:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 711
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 357
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 362
    :cond_0
    iget-boolean v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 364
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 365
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 367
    :cond_2
    iput-boolean v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 368
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    invoke-static {v2, v1, v4, v5}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 371
    :cond_3
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v4, :cond_4

    move-object v8, v2

    goto :goto_0

    :cond_4
    move-object v8, v1

    .line 375
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v1

    .line 376
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v11

    .line 378
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    move-result v9

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    move-result v12

    .line 382
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v13

    .line 383
    invoke-super/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v1, v9, v15

    if-eqz v1, :cond_11

    cmpl-float v1, v12, v15

    if-nez v1, :cond_5

    goto/16 :goto_6

    .line 388
    :cond_5
    invoke-virtual {v0, v15, v9}, Lcom/miui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v1

    float-to-int v7, v1

    .line 389
    invoke-virtual {v0, v15, v12}, Lcom/miui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v1

    float-to-int v6, v1

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 393
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 396
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v3, v7

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v4, v6

    add-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v2, v7, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 397
    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_6
    const-string v1, "ImageScreenElement"

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    cmpl-float v1, v13, v15

    if-gtz v1, :cond_a

    cmpl-float v1, v14, v15

    if-gtz v1, :cond_a

    .line 402
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_8

    goto :goto_1

    .line 408
    :cond_8
    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v3, :cond_9

    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v4, :cond_9

    .line 409
    iget-object v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v12, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v8

    move v8, v9

    move-object v9, v12

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_9
    int-to-float v1, v7

    int-to-float v2, v6

    .line 411
    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 403
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v2, v7

    add-float/2addr v2, v9

    float-to-int v2, v2

    int-to-float v3, v6

    add-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v1, v7, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 404
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_b

    .line 405
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    iget v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    iget v4, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 407
    :cond_b
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_c
    float-to-double v1, v9

    .line 415
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, v12

    .line 416
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v5, v7

    int-to-float v4, v6

    add-int/2addr v1, v7

    int-to-float v3, v1

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 417
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/16 v16, 0x1f

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v2

    move v2, v5

    move/from16 v19, v3

    move v3, v4

    move/from16 v20, v4

    move/from16 v4, v19

    move/from16 v21, v5

    move/from16 v5, v18

    move/from16 v22, v6

    move-object/from16 v6, v17

    move/from16 v23, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    cmpl-float v1, v13, v15

    if-gtz v1, :cond_e

    cmpl-float v1, v14, v15

    if-gtz v1, :cond_e

    .line 418
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_d

    goto :goto_2

    .line 425
    :cond_d
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move/from16 v3, v20

    move/from16 v2, v21

    invoke-virtual {v10, v8, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v4, v22

    move/from16 v3, v23

    goto :goto_3

    .line 419
    :cond_e
    :goto_2
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    float-to-int v2, v9

    move/from16 v3, v23

    add-int v7, v3, v2

    float-to-int v2, v12

    move/from16 v4, v22

    add-int v6, v4, v2

    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 420
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_f

    .line 421
    iget v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    iget v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    iget v6, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v6, v2

    iget v7, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v7, v5

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 423
    :cond_f
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/miui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    :goto_3
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 429
    invoke-direct {v0, v10, v2, v3, v4}, Lcom/miui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lcom/miui/maml/elements/ImageScreenElement$Mask;II)V

    goto :goto_4

    .line 431
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 433
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 434
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDensity(I)V

    return-void

    :cond_11
    :goto_6
    return-void
.end method

.method protected doTick(J)V
    .locals 2

    .line 439
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 440
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 447
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->doTick(J)V

    goto :goto_1

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_3

    .line 452
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 453
    iget-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 456
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz p1, :cond_4

    .line 457
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcX:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 458
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcY:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 459
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcW:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 460
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpSrcH:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 463
    :cond_4
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasWidthAndHeight:Z

    if-eqz p1, :cond_5

    .line 464
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpW:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    .line 465
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mExpH:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    .line 468
    :cond_5
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mTintChanged:Z

    if-eqz p1, :cond_6

    .line 469
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 472
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 246
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 248
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 254
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->finish()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 258
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method protected getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    iget v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mW:I

    iget v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mH:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBitmapHeight()I
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeight()F
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return v0

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v0, :cond_1

    .line 202
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v0

    return v0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/miui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-long v1, v1

    .line 217
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return v0

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v0, :cond_1

    .line 191
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v0

    return v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getX()F
    .locals 3

    .line 169
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Lcom/miui/maml/animation/SourcesAnimation;->getX()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getY()F
    .locals 3

    .line 178
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/miui/maml/animation/SourcesAnimation;->getY()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public init()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 145
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 149
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 151
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->init()V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 162
    :cond_3
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 163
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    :cond_4
    return-void
.end method

.method protected loadMesh(Lorg/w3c/dom/Element;)V
    .locals 5

    const-string v0, "mesh"

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 317
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    add-int/lit8 v1, v1, 0x1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ImageScreenElement"

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mesh format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-eqz v0, :cond_1

    const-string v0, "meshVertsArr"

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, [F

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    goto :goto_1

    .line 329
    :cond_0
    iput v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshHeight:I

    iput v2, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMeshWidth:I

    const-string v0, "ImageScreenElement"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid meshVertsArr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  undifined or not float[] type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    const-string v0, "SourcesAnimation"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    new-instance p1, Lcom/miui/maml/animation/SourcesAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    return-object p1

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    move-result-object p1

    return-object p1
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .line 477
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimBefore()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 483
    instance-of v0, p1, Lcom/miui/maml/animation/SourcesAnimation;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Lcom/miui/maml/animation/SourcesAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSources:Lcom/miui/maml/animation/SourcesAnimation;

    goto :goto_0

    .line 486
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    :goto_0
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 0

    .line 525
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    if-eqz p1, :cond_0

    .line 527
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    goto :goto_0

    .line 529
    :cond_0
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    if-nez p1, :cond_2

    .line 530
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz p1, :cond_1

    .line 531
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 532
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 268
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 2

    .line 505
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 506
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 508
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->pauseAnim(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 12

    move-object v0, p0

    .line 492
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 493
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    .line 495
    invoke-virtual/range {v3 .. v11}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->playAnim(JJJZZ)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    :cond_1
    return-void
.end method

.method public reset(J)V
    .locals 2

    .line 286
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 287
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 289
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->reset(J)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 295
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 2

    .line 275
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->resume()V

    .line 277
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 279
    invoke-virtual {v1}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 2

    .line 515
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 516
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ImageScreenElement$Mask;

    .line 518
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement$Mask;->resumeAnim(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 225
    iget-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 307
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcFormatter:Lcom/miui/maml/util/TextFormatter;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSrcId(D)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lcom/miui/maml/data/Expression;

    :goto_0
    return-void
.end method

.method public setSrcType(Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/BitmapProvider;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmapProvider:Lcom/miui/maml/elements/BitmapProvider;

    return-void
.end method

.method protected updateBitmapImpl(Z)V
    .locals 1

    .line 548
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p1

    .line 549
    iget v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 553
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    return-void
.end method

.method protected updateBitmapVars()V
    .locals 3

    .line 538
    iget-boolean v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 542
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 543
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_1
    return-void
.end method

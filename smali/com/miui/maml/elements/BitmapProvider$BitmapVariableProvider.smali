.class public Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2

    .line 470
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_3

    .line 471
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 472
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0x5b

    .line 474
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    if-ge p2, p4, :cond_0

    .line 477
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    .line 479
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 478
    invoke-static {v0, p4}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 482
    :cond_0
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 483
    :goto_0
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {p4, p2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 485
    :cond_2
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 490
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_5

    .line 491
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-eqz p2, :cond_4

    .line 492
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {p4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int p4, v0

    invoke-virtual {p2, p4}, Lcom/miui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    move-object p3, p2

    goto :goto_1

    .line 494
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p2

    goto :goto_1

    :catch_0
    const-string p2, "BitmapProvider"

    .line 498
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to cast as Bitmap from object: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 501
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    .line 460
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 465
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    return-void
.end method

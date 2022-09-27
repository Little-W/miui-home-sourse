.class public Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    .line 322
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2e

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 332
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    move-object p1, v1

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    .line 336
    instance-of v0, p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v0, :cond_2

    .line 337
    check-cast p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    :cond_2
    return-void
.end method

.class Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 316
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    .line 308
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualScreen;

    if-eqz v0, :cond_0

    .line 309
    check-cast p1, Lcom/miui/maml/elements/VirtualScreen;

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    :cond_0
    return-void
.end method

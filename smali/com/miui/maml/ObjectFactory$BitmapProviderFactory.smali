.class public abstract Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;
.super Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapProviderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/maml/ObjectFactory$ObjectFactoryBase<",
        "Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BitmapProvider"


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "BitmapProvider"

    .line 48
    invoke-direct {p0, v0}, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
    .locals 1

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->doCreate(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lcom/miui/maml/ObjectFactory;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lcom/miui/maml/ObjectFactory;

    check-cast v0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract doCreate(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
.end method

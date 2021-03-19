.class public abstract Lcom/miui/maml/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ObjectFactory$ActionCommandFactory;,
        Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;,
        Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOld()Lcom/miui/maml/ObjectFactory;
.end method

.method public abstract setOld(Lcom/miui/maml/ObjectFactory;)V
.end method

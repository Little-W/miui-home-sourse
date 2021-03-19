.class public Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrDataBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    }
.end annotation


# instance fields
.field protected mAttr:Ljava/lang/String;

.field private mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

.field protected mData:Ljava/lang/String;

.field protected mTarget:Ljava/lang/String;

.field protected mVars:Lcom/miui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target"

    .line 112
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    const-string v0, "attr"

    .line 113
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    const-string v0, "data"

    .line 114
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    .line 116
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 117
    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    if-eqz p1, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid AttrDataBinder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    .locals 2

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "text"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_1
    const-string v0, "paras"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "name"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_3
    const-string v0, "bitmap"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_4
    const-string v0, "src"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_5
    const-string v0, "srcid"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 137
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_6
    return-object v1

    .line 129
    :cond_7
    :goto_0
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ElementGroup;)Z
    .locals 1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->bind(Lcom/miui/maml/elements/ScreenElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

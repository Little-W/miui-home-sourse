.class public Lcom/miui/maml/data/SettingsBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/SettingsBinder$Variable;,
        Lcom/miui/maml/data/SettingsBinder$Category;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SettingsBinder"


# instance fields
.field private mConst:Z

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 89
    iget-object p2, p0, Lcom/miui/maml/data/SettingsBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SettingsBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string p2, "false"

    const-string v0, "const"

    .line 92
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/maml/data/SettingsBinder;->mConst:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SettingsBinder$Variable;
    .locals 2

    .line 111
    new-instance v0, Lcom/miui/maml/data/SettingsBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;-><init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SettingsBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SettingsBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 106
    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 99
    iget-boolean v0, p0, Lcom/miui/maml/data/SettingsBinder;->mConst:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->startQuery()V

    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 117
    check-cast v1, Lcom/miui/maml/data/SettingsBinder$Variable;

    invoke-virtual {v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->query()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->onUpdateComplete()V

    return-void
.end method

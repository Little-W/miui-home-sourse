.class public Lcom/miui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;
    .locals 2

    .line 91
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentProviderBinder"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_0
    const-string v1, "SensorBinder"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v0, Lcom/miui/maml/data/SensorBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_1
    const-string v1, "BroadcastBinder"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_2
    const-string v1, "FileBinder"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    new-instance v0, Lcom/miui/maml/data/FileBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_3
    const-string v1, "SettingsBinder"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    new-instance v0, Lcom/miui/maml/data/SettingsBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SettingsBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/VariableBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    :cond_5
    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void

    :cond_0
    const-string p0, "node is null"

    const-string p1, "VariableBinderManager"

    .line 82
    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 111
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 114
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 115
    invoke-static {v1, p2, p0}, Lcom/miui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final acceptVisitor(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 76
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinder;->accept(Lcom/miui/maml/data/VariableBinderVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 132
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 133
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/ContentProviderBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 134
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 135
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {p0, v0}, Lcom/miui/maml/data/ContentProviderBinder$Builder;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-object p0
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 128
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .locals 2

    .line 67
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 68
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public finish()V
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 3

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 145
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 62
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tick()V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 44
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    goto :goto_0

    :cond_0
    return-void
.end method

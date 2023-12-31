.class public Lcom/miui/maml/data/FileBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mDirFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "FileBinder"

    const-string p1, "FileBinder node is null"

    .line 84
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "filter"

    .line 87
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "dirExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const-string v3, "dir"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    iput-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 91
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private updateVariables()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/FileBinder$Variable;

    .line 110
    iget-object v3, v2, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    if-nez v3, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget-object v3, v2, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int/2addr v3, v0

    aget-object v3, v4, v3

    :goto_2
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/FileBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lcom/miui/maml/data/FileBinder$Variable;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->refresh()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;
    .locals 1

    .line 100
    new-instance v0, Lcom/miui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;

    move-result-object p0

    return-object p0
.end method

.method public refresh()V
    .locals 4

    .line 70
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/maml/util/FilenameExtFilter;

    invoke-direct {v2, v1}, Lcom/miui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    array-length v0, v0

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_2

    int-to-double v2, v0

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 77
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileBinder"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    return-void
.end method

.method public tick()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    .line 65
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    return-void
.end method

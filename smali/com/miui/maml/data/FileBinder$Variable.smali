.class Lcom/miui/maml/data/FileBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/FileBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mIndex:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string v0, "index"

    .line 43
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    .line 44
    iget-object p1, p0, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_0

    const-string p1, "Variable"

    const-string p2, "fail to load file index expression"

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected parseType(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

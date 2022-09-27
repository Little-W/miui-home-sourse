.class public Lcom/miui/maml/util/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static TAG_ACTION:Ljava/lang/String; = "action"

.field public static TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static TAG_CLASS:Ljava/lang/String; = "class"

.field public static TAG_ID:Ljava/lang/String; = "id"

.field public static TAG_NAME:Ljava/lang/String; = "name"

.field public static TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static TAG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    new-instance v0, Lcom/miui/maml/util/Task;

    invoke-direct {v0}, Lcom/miui/maml/util/Task;-><init>()V

    const-string v1, "id"

    .line 41
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v1, "action"

    .line 42
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    const-string v1, "type"

    .line 43
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    const-string v1, "category"

    .line 44
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    const-string v1, "package"

    .line 45
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    const-string v1, "class"

    .line 46
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    const-string v1, "name"

    .line 47
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    return-object v0
.end method

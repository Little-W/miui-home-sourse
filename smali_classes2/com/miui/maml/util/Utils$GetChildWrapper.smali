.class public Lcom/miui/maml/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lcom/miui/maml/util/Utils$GetChildWrapper;
    .locals 2

    .line 112
    new-instance v0, Lcom/miui/maml/util/Utils$GetChildWrapper;

    iget-object v1, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    invoke-static {v1, p1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/maml/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-object v0
.end method

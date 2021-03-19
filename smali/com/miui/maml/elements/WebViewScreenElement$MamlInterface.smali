.class Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WebViewScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MamlInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Lcom/miui/maml/elements/WebViewScreenElement$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/WebViewScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public getDouble(I)D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getObj(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

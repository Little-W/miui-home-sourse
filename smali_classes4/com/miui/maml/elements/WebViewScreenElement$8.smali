.class Lcom/miui/maml/elements/WebViewScreenElement$8;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$200(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$400(Lcom/miui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    const-string v0, "MAML.WebViewScreenE"

    const-string v1, "addWebView"

    .line 294
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/WebViewScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/maml/util/MamlViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

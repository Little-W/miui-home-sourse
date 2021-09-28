.class Lcom/miui/maml/elements/WebViewScreenElement$9;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->finishWebView()V
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

    .line 301
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/WebViewScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/maml/util/MamlViewManager;->removeView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    .line 305
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class Lcom/miui/maml/elements/WebViewScreenElement$7;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field final synthetic val$pause:Z


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    iput-boolean p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->val$pause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->val$pause:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    :goto_0
    return-void
.end method

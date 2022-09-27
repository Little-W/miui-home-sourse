.class Lcom/miui/maml/elements/WebViewScreenElement$6;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    iput-boolean p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->val$_v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

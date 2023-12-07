.class Lcom/miui/maml/elements/WebViewScreenElement$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
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

    .line 118
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$1;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 120
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

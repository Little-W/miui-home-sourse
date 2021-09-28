.class Lcom/miui/maml/elements/WebViewScreenElement$2;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 125
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$2;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$2;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/WebViewScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$2;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    const-string v0, "touch"

    invoke-virtual {p1, p2, v0}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

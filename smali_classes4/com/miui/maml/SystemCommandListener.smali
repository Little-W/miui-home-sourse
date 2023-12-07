.class public Lcom/miui/maml/SystemCommandListener;
.super Ljava/lang/Object;
.source "SystemCommandListener.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# static fields
.field private static final CLEAR_RESOURCE:Ljava/lang/String; = "__clearResource"

.field private static final REQUEST_UPDATE:Ljava/lang/String; = "__requestUpdate"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "__clearResource"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0, p3}, Lcom/miui/maml/ResourceManager;->clear(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "__requestUpdate"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2
    :goto_0
    return-void
.end method

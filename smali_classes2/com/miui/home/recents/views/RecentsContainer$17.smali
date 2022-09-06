.class Lcom/miui/home/recents/views/RecentsContainer$17;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 1551
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$17;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1554
    sget-object p1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz p1, :cond_0

    .line 1556
    invoke-virtual {p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->exitSplitScreen()V

    const-string p1, "RecentsContainer"

    const-string v0, "exit splitScreen mode ---- click exit button."

    .line 1557
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

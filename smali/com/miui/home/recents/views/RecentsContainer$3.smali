.class Lcom/miui/home/recents/views/RecentsContainer$3;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->onFinishInflate()V
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

    .line 371
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$3;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$3;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$100(Lcom/miui/home/recents/views/RecentsContainer;Z)V

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickTxtSmallWindowContainerEvent()V

    return-void
.end method

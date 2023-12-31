.class Lcom/miui/home/recents/views/RecentsContainer$1;
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

    .line 323
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$1;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$1;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$000(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/CircleAndTickAnimView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setEnabled(Z)V

    .line 326
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$1;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentsContainer;->access$100(Lcom/miui/home/recents/views/RecentsContainer;)V

    return-void
.end method

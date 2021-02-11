.class Lcom/miui/home/recents/views/RecentsContainer$6;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Lcom/miui/home/smallwindow/ItemViewCallback;


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

    .line 328
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$6;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$6;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/miui/home/recents/views/TaskStackView$2;
.super Landroid/database/ContentObserver;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$2;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/miui/home/recents/views/TaskStackView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$2;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->access$100(Lcom/miui/home/recents/views/TaskStackView;ILandroid/content/Context;)V

    return-void
.end method
